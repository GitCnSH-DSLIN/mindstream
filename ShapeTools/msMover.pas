unit msMover;

interface

uses
 msShape,
 FMX.Graphics,
 System.Types,
 System.UITypes,
 msTool,
 msInterfaces,
 msShapesList,
 msShapeTool
 ;

type
 TmsFloatingButton = (
  // - http://18delphi.blogspot.ru/2014/05/blog-post.html
  ms_fbLeft,
  ms_fbRight,
  ms_fbUp,
  ms_fbDown,

  ms_fbUpLeft,
  ms_fbUpRight,
  ms_fbDownLeft,
  ms_fbDownRight
 );//TmsFloatingButton

 TmsMover = class(TmsTool)
 private
  f_Moving : ImsShape;
  f_FloatingButtons : TmsShapesList;
  // - ������ "���������" ������ ��������� f_Moving.
  //   https://bitbucket.org/ingword/mindstream/issue/43/------------------------------------------
  f_WasMoved : Boolean;
 protected
  procedure DoDrawTo(const aCtx: TmsDrawContext); override;
  constructor CreateInner(const aStartPoint: TPointF; const aMoving: ImsShape; const aController: ImsShapesController);
  function AddButton(aToolClass: RmsShapeTool; const aButton: ImsShape): ImsShape;
 public
  class function Create(const aCtx: TmsMakeShapeContext): ImsShape; override;
  procedure Cleanup; override;
  class function ButtonShape: ImsShape; override;
  function IsNeedsSecondClick : Boolean; override;
  function EndTo(const aCtx: TmsEndShapeContext): Boolean; override;
  class function RectForButtons(const aShape: ImsShape): TRectF;
 end;//TmsMover

implementation

uses
 msBlackTriangle,
 FMX.Types,
 System.SysUtils,
 msMoverIcon,
 msLineWithArrow,
 msSpecialArrow,
 msUpArrow,
 msDownArrow,
 msLeftArrow,
 msRightArrow,
 msShapesGroup,
 msCircle,
 msCircleWithRadius,
 Math,
 msProxyShape,
 msMoveShapeUp,
 msMoveShapeDown,
 msMoveShapeLeft,
 msMoveShapeRight,
 msShapeRemover,
 msRemoverIcon,
 msUpRightArrow,
 msUpLeftArrow,
 msDownRightArrow,
 msDownLeftArrow,
 msSpecialDiagonalArrowBoundsCorrector,
 msMoveShapeDownRight,
 msMoveShapeDownLeft,
 msMoveShapeUpLeft,
 msMoveShapeUpRight,
 msFloatingButtonCircle
 ;

// TmsMover

const
 cShift = 12;

function TmsMover.AddButton(aToolClass: RmsShapeTool; const aButton: ImsShape): ImsShape;
begin
 Assert(f_FloatingButtons <> nil);
 Result := f_FloatingButtons.AddShape(
            aToolClass.Create(
             f_Moving,
             TmsShapesGroup.Create([
              TmsFloatingButtonCircle.Create(aButton, cShift),
              aButton
             ])
            )
           );
end;

class function TmsMover.RectForButtons(const aShape: ImsShape): TRectF;
var
 l_Offset : Single;
begin
 Result := aShape.DrawBounds;
 l_Offset := TmsSpecialArrow.InitialLength + cShift;

 Result.Inflate(l_Offset, l_Offset);
end;

constructor TmsMover.CreateInner(const aStartPoint: TPointF; const aMoving: ImsShape; const aController: ImsShapesController);

 function AddDButton(aToolClass: RmsShapeTool; const aButton: ImsShape): ImsShape;
 begin//AddDButton
  Result := AddButton(aToolClass, TmsSpecialDiagonalArrowBoundsCorrector.Create(aButton));
 end;//AddDButton

var
 l_B : TRectF;
 l_Mid : TPointF;
begin
 inherited CreateInner(aStartPoint);
 f_Moving := aMoving;
 Assert(f_FloatingButtons = nil);
 f_FloatingButtons := TmsShapesList.Create;
 l_B := RectForButtons(f_Moving);

 l_Mid := (l_B.TopLeft + l_B.BottomRight) / 2;

 aController.AddShape(AddButton(TmsMoveShapeLeft, TmsLeftArrow.Create(TPointF.Create(l_B.Left, l_Mid.Y))));
 aController.AddShape(AddButton(TmsMoveShapeRight, TmsRightArrow.Create(TPointF.Create(l_B.Right, l_Mid.Y))));
 aController.AddShape(AddButton(TmsMoveShapeUp, TmsUpArrow.Create(TPointF.Create(l_Mid.X, l_B.Top))));
 aController.AddShape(AddButton(TmsMoveShapeDown, TmsDownArrow.Create(TPointF.Create(l_Mid.X, l_B.Bottom))));

 aController.AddShape(AddDButton(TmsMoveShapeUpLeft, TmsUpLeftArrow.Create(TPointF.Create(l_B.Left, l_B.Top))));
 aController.AddShape(AddDButton(TmsMoveShapeUpRight, TmsUpRightArrow.Create(TPointF.Create(l_B.Right, l_B.Top))));
 aController.AddShape(AddDButton(TmsMoveShapeDownLeft, TmsDownLeftArrow.Create(TPointF.Create(l_B.Left, l_B.Bottom))));
 aController.AddShape(AddDButton(TmsMoveShapeDownRight, TmsDownRightArrow.Create(TPointF.Create(l_B.Right, l_B.Bottom))));
end;

class function TmsMover.ButtonShape: ImsShape;
begin
 Result := TmsMoverIcon.Create;
end;

class function TmsMover.Create(const aCtx: TmsMakeShapeContext): ImsShape;
var
 l_Moving : ImsShape;
begin
 Assert(aCtx.rShapesController <> nil);
 l_Moving := aCtx.rShapesController.ShapeByPt(aCtx.rStartPoint);
 if (l_Moving <> nil) then
 begin
  Result := CreateInner(aCtx.rStartPoint, l_Moving, aCtx.rShapesController);
 end//l_Moving <> nil
 else
  Result := nil;
end;

procedure TmsMover.Cleanup;
begin
 inherited;
 FreeAndNil(f_FloatingButtons);
end;

function TmsMover.IsNeedsSecondClick : Boolean;
begin
 Result := true;
end;

function TmsMover.EndTo(const aCtx: TmsEndShapeContext): Boolean;
var
 l_ShapeOnPoint : ImsShape;
 l_FloatingButton : ImsShape;
begin
 Result := true;
 if (f_Moving <> nil) then
 begin
  l_ShapeOnPoint := aCtx.rShapesController.ShapeByPt(aCtx.rStartPoint);
  if (l_ShapeOnPoint <> nil) then
   if l_ShapeOnPoint.ClickInDiagramm then
   begin
    f_WasMoved := true;
    Result := false;
   end;//l_ShapeOnPoint.ClickInDiagramm
  if not f_WasMoved then
   if Result then
    f_Moving.MoveTo(aCtx.rStartPoint);
 end;//f_Moving <> nil
 if Result then
 begin
  f_Moving := nil;
  if (f_FloatingButtons <> nil) then
   for l_FloatingButton in f_FloatingButtons do
    aCtx.rShapesController.RemoveShape(l_FloatingButton);
    // - ���� ������� "��������� ������".
  aCtx.rShapesController.RemoveShape(Self);
  // - ������ ���� ���� �������
 end;//Result
end;

procedure TmsMover.DoDrawTo(const aCtx: TmsDrawContext);
var
 l_Ctx : TmsDrawContext;
begin
 if (f_Moving <> nil) then
 begin
  l_Ctx := aCtx;
  l_Ctx.rMoving := True;
  f_Moving.DrawTo(l_Ctx);
 end;//f_Moving <> nil
end;

end.

