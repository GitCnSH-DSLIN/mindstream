unit msInvalidators;

interface

uses
 Generics.Collections,
 msDiagramm
 ;

type
 TmsInvalidatorsList = TList<Pointer>;
 // - ���������� - ������ - ������ ������
 // https://ru.wikipedia.org/wiki/%D0%9D%D0%B0%D0%B1%D0%BB%D1%8E%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C_(%D1%88%D0%B0%D0%B1%D0%BB%D0%BE%D0%BD_%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F)
 (*
  ����������� (����. Observer) � ������������� ������ ��������������. ����� �������� ��� ����������� (Dependents), ���������-��������� (Publisher-Subscriber). ������� �������� � ������, ������� ��������� �������� ���������� ������� ����� ������ ���������� �� ������ �������� �� ��������� �� ���������, ��� ����� �������� �� ����[2].
 *)

 TmsInvalidators = class
 public
  class procedure InvalidateDiagramm(aDiagramm: TmsDiagramm);
  class procedure Subscribe(const anInvalidator: ImsIvalidator);
  // - �������������
  class procedure UnSubscribe(const anInvalidator: ImsIvalidator);
  // - ������������
 end;//TmsInvalidators

implementation

// TmsInvalidators

class procedure TmsInvalidators.InvalidateDiagramm(aDiagramm: TmsDiagramm);
begin
end;

class procedure TmsInvalidators.Subscribe(const anInvalidator: ImsIvalidator);
// - �������������
begin
end;

class procedure TmsInvalidators.UnSubscribe(const anInvalidator: ImsIvalidator);
// - ������������
begin
end;

end.
