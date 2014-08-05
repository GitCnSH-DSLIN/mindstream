unit msShape;

interface
uses
 FMX.Graphics,
 System.Types,
 FMX.Types,
 System.UITypes,
 Generics.Collections
 ;

type
 TmsInterfacedNonRefcounted = class abstract(TObject)
  // - ���������� �������� ����������� ����������, �� ��� �������� ������
  //   �.�. ������������ ������ - �� ������������� � "��������" - �� ��������� �������� �����
  //   �����? ����� �������� �����-������.
  //   �� TmsInterfacedNonRefcounted ������ ������������� �������-����������,
  //   ������� ����� �������� ����� "�����" ���� ����������.
  //
  //   ��� ���� ���� �������� - ������-��������� - � ���� ������� ����� ��������
  //   "�������", �� �� ��� ����� - ��������, ����� �����.
 protected
  function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
  function _AddRef: Integer; stdcall;
  function _Release: Integer; stdcall;
 end;//TmsInterfacedNonRefcounted

 TmsInterfacedRefcounted = class abstract(TInterfacedObject)
  // ���������� ��������, ����������� ����������. � ����ר��� ������.
  //
  // �� ����� ������� ����������, ����� ���������� ��� - http://18delphi.blogspot.ru/2013/04/iunknown.html
  // �� � ������ ARC - ���������� ���� "�������� ����������"
  //
  // ���� ��� ���� ��� ��� "��������":
  // - http://18delphi.blogspot.ru/2013/07/blog-post_3683.html
  // - http://18delphi.blogspot.ru/2013/07/1.html
  // - http://18delphi.blogspot.ru/2013/07/2.html
  // - http://18delphi.blogspot.ru/2013/07/2_18.html
  // - http://18delphi.blogspot.ru/2013/07/blog-post_8789.html
 end;//TmsInterfacedRefcounted

 ImsShape = interface;

 ImsShapeByPt = interface
  function ShapeByPt(const aPoint: TPointF): ImsShape;
 end;//ImsShapeByPt

 ImsShapeRemover = interface
  procedure RemoveShape(const aShape: ImsShape);
 end;//ImsShapeRemover

 ImsShapesController = interface(ImsShapeByPt)
  procedure RemoveShape(const aShape: ImsShape);
 end;//ImsShapesController
 // - ��� �� ����� ������������� ������������ �����������, �� Delphi ��� �� ������������
 // � ��� � UML - �� ��� ����� �����������

 TmsDrawContext  = record
  public
   rCanvas : TCanvas;
   rOrigin : TPointF;
   rMoving : Boolean; // - ����������, ��� ������� �������� �������� - ���������
   constructor Create(const aCanvas : TCanvas; const aOrigin : TPointF);
 end;//TmsDrawContext

 TmsMakeShapeContext = record
  public
   rStartPoint: TPointF;
   rShapesController: ImsShapesController;
   constructor Create(aStartPoint: TPointF; const aShapesController: ImsShapesController);
 end;//TmsMakeShapeContext

 TmsEndShapeContext = TmsMakeShapeContext;

 TmsDrawOptionsContext = record
  public
   rFillColor: TAlphaColor;
   rStrokeDash: TStrokeDash;
   rStrokeColor: TAlphaColor;
   rStrokeThickness: Single;
   constructor Create(const aCtx: TmsDrawContext);
 end;//TmsDrawOptionsContext

 ImsShape = interface
  procedure DrawTo(const aCtx: TmsDrawContext);
  function IsNeedsSecondClick : Boolean;
  procedure EndTo(const aCtx: TmsEndShapeContext);
  function ContainsPt(const aPoint: TPointF): Boolean;
  procedure MoveTo(const aFinishPoint: TPointF);
 end;//ImsShape

 TmsShape = class abstract (TmsInterfacedRefcounted, ImsShape)
 private
  FStartPoint: TPointF;
  function DrawOptionsContext(const aCtx: TmsDrawContext): TmsDrawOptionsContext;
 protected
  class procedure Register;
  procedure TransformDrawOptionsContext(var theCtx: TmsDrawOptionsContext); virtual;
  procedure DoDrawTo(const aCtx: TmsDrawContext); virtual; abstract;
  property StartPoint : TPointF read FStartPoint;
  constructor Create(const aStartPoint: TPointF); virtual;
  function IsNeedsSecondClick : Boolean; virtual;
  procedure EndTo(const aCtx: TmsEndShapeContext); virtual;
  procedure MoveTo(const aFinishPoint: TPointF); virtual;
  function ContainsPt(const aPoint: TPointF): Boolean; virtual;
 public
  class function Make(const aCtx: TmsMakeShapeContext): ImsShape; virtual;
  // - ��������� �����, ������� ������ ��������� ������ ��� ���������
  //   ��� "��������� ����� ������" - �������� ���:
  //   - http://icoder.ucoz.ru/blog/factory_method/2013-04-30-24
  //   - http://ru.wikipedia.org/wiki/%D0%A4%D0%B0%D0%B1%D1%80%D0%B8%D1%87%D0%BD%D1%8B%D0%B9_%D0%BC%D0%B5%D1%82%D0%BE%D0%B4_(%D1%88%D0%B0%D0%B1%D0%BB%D0%BE%D0%BD_%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F)
  //   - http://sergeyteplyakov.blogspot.ru/2014/07/blog-post.html
  //
  // ����� ����� "��� ����������" ��������� �����?
  // ��-������ - ����� �������������� ������-������. ��� �������� � TmsMover.Make.
  // � ��� - �������.
  // � ��-������ ������ ���:
  // - http://18delphi.blogspot.ru/2013/04/blog-post_7483.html
  // - http://www.gunsmoker.ru/2013/04/plugins-9.html
  //
  // � ��� "�� ��� �����" ��� ��_������, �� ���� - ����� �����.
  procedure DrawTo(const aCtx: TmsDrawContext);
 end;//TmsShape

 RmsShape = class of TmsShape;

 RmsShapeList = class(TList<RmsShape>)
 end;//RmsShapeList

implementation

uses
  msRegisteredShapes
  ;

class function TmsShape.Make(const aCtx: TmsMakeShapeContext): ImsShape;
begin
 Result := Create(aCtx.rStartPoint);
end;

class procedure TmsShape.Register;
begin
 TmsRegisteredShapes.Instance.Register(Self);
end;

function TmsShape.ContainsPt(const aPoint: TPointF): Boolean;
begin
 Result := False;
end;

constructor TmsShape.Create(const aStartPoint: TPointF);
begin
 inherited Create;
 FStartPoint := aStartPoint;
end;

procedure TmsShape.EndTo(const aCtx: TmsEndShapeContext);
begin
 Assert(false, '�������� ' + ClassName + ' �� ����� ���� ��������');
end;

procedure TmsShape.MoveTo(const aFinishPoint: TPointF);
begin
 FStartPoint := aFinishPoint;
end;

function TmsShape.IsNeedsSecondClick : Boolean;
begin
 Result := false;
end;

procedure TmsShape.TransformDrawOptionsContext(var theCtx: TmsDrawOptionsContext);
begin
 // - ��� ������ �� ������
end;

function TmsShape.DrawOptionsContext(const aCtx: TmsDrawContext): TmsDrawOptionsContext;
begin
 Result := TmsDrawOptionsContext.Create(aCtx);
 TransformDrawOptionsContext(Result);
end;

procedure TmsShape.DrawTo(const aCtx: TmsDrawContext);
var
 l_Ctx : TmsDrawOptionsContext;
begin
 l_Ctx := DrawOptionsContext(aCtx);
 aCtx.rCanvas.Fill.Color := l_Ctx.rFillColor;
 aCtx.rCanvas.Stroke.Dash := l_Ctx.rStrokeDash;
 aCtx.rCanvas.Stroke.Color := l_Ctx.rStrokeColor;
 aCtx.rCanvas.Stroke.Thickness := l_Ctx.rStrokeThickness;
 DoDrawTo(aCtx);
end;

constructor TmsDrawContext.Create(const aCanvas : TCanvas; const aOrigin : TPointF);
begin
 rCanvas := aCanvas;
 rOrigin := aOrigin;
 rMoving := false;
end;

constructor TmsMakeShapeContext.Create(aStartPoint: TPointF; const aShapesController: ImsShapesController);
begin
 rStartPoint := aStartPoint;
 rShapesController := aShapesController;
end;

function TmsInterfacedNonRefcounted.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
 Result := E_NoInterface;
end;

function TmsInterfacedNonRefcounted._AddRef: Integer;
begin
 Result := -1;
end;

function TmsInterfacedNonRefcounted._Release: Integer;
begin
 Result := -1;
end;

constructor TmsDrawOptionsContext.Create(const aCtx: TmsDrawContext);
begin
 rFillColor :=  TAlphaColorRec.Null;
 if aCtx.rMoving then
 begin
  rStrokeDash := TStrokeDash.sdDashDot;
  rStrokeColor := TAlphaColors.Darkmagenta;
  rStrokeThickness := 4;
 end//aCtx.rMoving
 else
 begin
  rStrokeDash := TStrokeDash.sdSolid;
  rStrokeColor := TAlphaColorRec.Black;
  rStrokeThickness := 1;
 end;//aCtx.rMoving
end;

end.
