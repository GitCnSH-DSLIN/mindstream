unit msSwapParents;

interface

uses
 msInterfaces,
 msTool,
 msNullClickShape
 ;

type
 TmsSwapParents = class(TmsNullClickShape)
  // - ��������� ����� ������ �������� �������
 public
  class function Create(const aCtx: TmsMakeShapeContext): ImsShape; override;
 end;//TmsSwapParents

implementation

class function TmsSwapParents.Create(const aCtx: TmsMakeShapeContext): ImsShape;
begin
 Result := nil;
 aCtx.rDiagrammsHolder.SwapParents;
end;

end.
