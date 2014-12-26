unit msUpToParent;

interface

uses
 msInterfaces,
 msTool,
 msNullClickShape
 ;

type
 TmsUpToParent = class(TmsNullClickShape)
  // - ��������� ����� ��� "�������" � ���������� ���������
 public
  class function Create(const aCtx: TmsMakeShapeContext): ImsShape; override;
 end;//TmsUpToParent

implementation

class function TmsUpToParent.Create(const aCtx: TmsMakeShapeContext): ImsShape;
begin
 Result := inherited Create(aCtx);
 aCtx.rDiagrammsHolder.UpToParent;
end;

end.
