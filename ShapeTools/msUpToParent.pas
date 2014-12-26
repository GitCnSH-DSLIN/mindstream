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
  class procedure DoNullClick(const aCtx: TmsMakeShapeContext); override;
 end;//TmsUpToParent

implementation

class procedure TmsUpToParent.DoNullClick(const aCtx: TmsMakeShapeContext);
begin
 aCtx.rDiagrammsHolder.UpToParent;
end;

end.
