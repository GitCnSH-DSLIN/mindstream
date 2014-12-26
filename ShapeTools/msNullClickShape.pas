unit msNullClickShape;

interface

uses
 msTool,
 msInterfaces
 ;

type
 TmsNullClickShape = class abstract(TmsTool)
 public
  class function IsNullClick: Boolean; override;
  //- �������� �� ������� ������. ������. ��� TmsSwapParents ��� TmsUpToParent
  class function Create(const aCtx: TmsMakeShapeContext): ImsShape; override;
 end;//TmsNullClickShape

implementation

// TmsNullClickShape

class function TmsNullClickShape.IsNullClick: Boolean;
begin
 Result := true;
end;

class function TmsNullClickShape.Create(const aCtx: TmsMakeShapeContext): ImsShape;
begin
 Result := nil;
 // ��� ��� �����, ������ ��� � ���������
end;

end.
