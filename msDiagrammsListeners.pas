unit msDiagrammsListeners;

interface

uses
 Generics.Collections,
 msInterfaces
 ;

type
 TmsDiagrammsListenersList = TList<Pointer>;
 // - ���������� - ������ - ������ (https://ru.wikipedia.org/wiki/%D0%A1%D0%BB%D0%B0%D0%B1%D0%B0%D1%8F_%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B0) ������
 // https://ru.wikipedia.org/wiki/%D0%9D%D0%B0%D0%B1%D0%BB%D1%8E%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C_(%D1%88%D0%B0%D0%B1%D0%BB%D0%BE%D0%BD_%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F)
 (*
  ����������� (����. Observer) � ������������� ������ ��������������. ����� �������� ��� ����������� (Dependents), ���������-��������� (Publisher-Subscriber). ������� �������� � ������, ������� ��������� �������� ���������� ������� ����� ������ ���������� �� ������ �������� �� ��������� �� ���������, ��� ����� �������� �� ����[2].
 *)

 TmsDiagrammsListeners = class
 strict private
  class var f_Subscribers : TmsDiagrammsListenersList;
 public
  class destructor Destroy;
 public
  class procedure DiargammAdded(const aDiagramm: ImsDiagramm);
  class procedure Subscribe(const anInvalidator: ImsIvalidator);
  // - �������������
  class procedure UnSubscribe(const anInvalidator: ImsIvalidator);
  // - ������������
 end;//TmsDiagrammsListeners

implementation

uses
 SysUtils
 ;

// TmsDiagrammsListeners

class destructor TmsDiagrammsListeners.Destroy;
begin
 FreeAndNil(f_Subscribers);
end;

class procedure TmsDiagrammsListeners.DiargammAdded(const aDiagramm: ImsDiagramm);
var
 l_Subscriber : Pointer;
begin
 if (f_Subscribers <> nil) then
  for l_Subscriber in f_Subscribers do
   ImsDiagrammsListener(l_Subscriber).DiargammAdded(aDiagramm);
end;

class procedure TmsDiagrammsListeners.Subscribe(const anInvalidator: ImsIvalidator);
// - �������������
begin
 if (f_Subscribers = nil) then
  f_Subscribers := TmsDiagrammsListenersList.Create;
 f_Subscribers.Add(Pointer(anInvalidator));
end;

class procedure TmsDiagrammsListeners.UnSubscribe(const anInvalidator: ImsIvalidator);
// - ������������
begin
 if (f_Subscribers <> nil) then
  f_Subscribers.Remove(Pointer(anInvalidator));
end;

end.
