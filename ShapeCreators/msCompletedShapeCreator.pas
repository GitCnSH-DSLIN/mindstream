unit msCompletedShapeCreator;

interface

uses
 msShapeCreator,
 msInterfaces,
 msInterfacedRefcounted
 ;

type
 TmsCompletedShapeCreator = class(TmsInterfacedRefcounted, ImsShapeCreator)
 // ��������� TmsShape. ��! ����������� ����������
 private
  f_ShapeClass : ImsShapeClass;
  // - ����� ���������� ��� ��������
  constructor CreatePrim(const aShapeClass: ImsShapeClass);
 protected
  function CreateShape(const aContext: TmsMakeShapeContext): ImsShape; virtual;
  procedure Cleanup; override;
 protected
  property ShapeClass : ImsShapeClass
  read f_ShapeClass;
  // - ����� ���������� ��� ��������
 public
  class function Create(const aShapeClass: ImsShapeClass): ImsShapeCreator;
 end;//TmsCompletedShapeCreator

implementation

uses
  System.Types,
  msTool
  ;

// TmsCompletedShapeCreator

constructor TmsCompletedShapeCreator.CreatePrim(const aShapeClass: ImsShapeClass);
begin
 inherited Create;
 f_ShapeClass := aShapeClass;
end;

class function TmsCompletedShapeCreator.Create(const aShapeClass: ImsShapeClass): ImsShapeCreator;
begin
 Result := CreatePrim(aShapeClass);
end;

procedure TmsCompletedShapeCreator.Cleanup;
begin
 f_ShapeClass := nil;
 inherited;
end;

function TmsCompletedShapeCreator.CreateShape(const aContext: TmsMakeShapeContext): ImsShape;
var
 l_EndPont : TPointF;
begin
 Assert(ShapeClass <> nil);
 if ShapeClass.IsTool then
 begin
  Assert(false);
  Result := nil;
 end//ShapeClass.IsTool
 else
 begin
  Result := ShapeClass.Creator.CreateShape(aContext);
  if Result.IsNeedsSecondClick then
  begin
   l_EndPont := aContext.rStartPoint;
   l_EndPont.Offset(100, 100);
   Result.EndTo(TmsEndShapeContext.Create(l_EndPont, aContext.rShapesController, aContext.rDiagrammsHolder));
  end;//Result.IsNeedsSecondClick
 end;//ShapeClass.IsTool
end;

end.
