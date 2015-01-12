unit msSwapParents;

interface

uses
 msInterfaces,
 msTool,
 msNullClickShape,
 System.Types
 ;

type
 TmsSwapParents = class(TmsNullClickShape)
  // - ��������� ����� ������ �������� �������
 protected
  class function DoNullClick(const aHolder: ImsDiagrammsHolder): Boolean; override;
  class function ButtonShape(const aStartPoint: TPointF): ImsShape; override;
 end;//TmsSwapParents

implementation

uses
 msLineWithArrow
 ;

class function TmsSwapParents.DoNullClick(const aHolder: ImsDiagrammsHolder): Boolean;
begin
 Result := true;
 aHolder.SwapParents;
end;

class function TmsSwapParents.ButtonShape(const aStartPoint: TPointF): ImsShape;
begin
 Result := TmsLineWithArrow.CreateCompleted(TPointF.Create(50, 0), TPointF.Create(0, 0));
end;

end.
