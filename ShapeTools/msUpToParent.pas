unit msUpToParent;

interface

uses
 msInterfaces,
 msTool
 ;

type
 TmsUpToParent = class(TmsTool)
  // - ��������� ����� ��� "�������" � ���������� ���������
 public
  class function Create(const aCtx: TmsMakeShapeContext): ImsShape; override;
 end;//TmsUpToParent

implementation

class function TmsUpToParent.Create(const aCtx: TmsMakeShapeContext): ImsShape;
begin
 Result := nil;
 aCtx.rDiagrammsHolder.UpToParent;
end;

end.
