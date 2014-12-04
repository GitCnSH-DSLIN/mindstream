unit msInterfacedNonRefcounted;

interface

uses
 msCoreObjects
 ;

type
 TmsInterfacedNonRefcounted = class abstract(TmsWatchedObject)
  // - ���������� �������� ����������� ����������, �� ��� �������� ������
  //   �.�. ������������� ������ - �� ������������� � "��������" - �� ��������� �������� �����
  //   �����? ����� �������� �����-������.
  //   �� TmsInterfacedNonRefcounted ������ ������������� �������-����������,
  //   ������� ����� �������� ����� "�����" ���� ����������.
  //
  //   ��� ���� ���� �������� - ������-��������� - � ���� ������� ����� ��������
  //   "�������", �� �� ��� ����� - ��������, ����� �����.
 protected
  function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
  function _AddRef: Integer; stdcall;
  function _Release: Integer; stdcall;
 end;//TmsInterfacedNonRefcounted

implementation

// TmsInterfacedNonRefcounted

function TmsInterfacedNonRefcounted.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
 Result := E_NoInterface;
end;

function TmsInterfacedNonRefcounted._AddRef: Integer;
begin
 Result := -1;
end;

function TmsInterfacedNonRefcounted._Release: Integer;
begin
 Result := -1;
end;

end.
