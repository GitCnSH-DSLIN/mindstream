unit msSpecialArrow;

interface

uses
 System.Types,
 msInterfaces,
 msLineWithArrow
 ;

type
 TmsSpecialArrow = class abstract(TmsLineWithArrow)
 protected
  class function CreateCompletedInternal(const aStartPoint: TPointF; const aFinishPoint: TPointF): ImsShape;
 public
  class function InitialLength: Integer; virtual;
  class procedure CreateCompleted;
  // - �����, ������� ���� ������
  class function Create: ImsShape; overload;
  class function Create(const aPointedPoint: TPointF): ImsShape; overload; virtual; abstract;
  // - �����, ������� ������ ���� ��������
 end;//TmsSpecialArrow

implementation

// TmsSpecialArrow

class function TmsSpecialArrow.Create: ImsShape;
begin
 Result := Create(TPointF.Create(0, 0));
end;

class function TmsSpecialArrow.CreateCompletedInternal(const aStartPoint: TPointF; const aFinishPoint: TPointF): ImsShape;
begin
 Result := inherited CreateCompleted(aStartPoint, aFinishPoint);
end;

class procedure TmsSpecialArrow.CreateCompleted;
begin
 Assert(false, '����������� ������� Create');
end;

class function TmsSpecialArrow.InitialLength: Integer;
begin
 Result := 50;
end;

end.
