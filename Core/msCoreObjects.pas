unit msCoreObjects;

interface

uses
 System.Classes,
 System.Generics.Collections
 ;

type
 TmsClassInstanceCountList = TDictionary<String, Integer>;
 // ms-help://embarcadero.rs_xe7/libraries/System.Generics.Collections.TDictionary.html

 TmsObjectsWatcher = class
  // - �������� �� ���������
  // �� �������� ����������������
 private
  class var f_ObjectsCreatedCount : Integer;
  class var f_ObjectsCreated: TmsClassInstanceCountList;
 public
  class procedure ObjectCreated(anObject: TObject);
  class procedure ObjectDestroyed(anObject: TObject);
  class destructor Destroy;
 end;//TmsObjectsWatcher

 TmsWatchedObject = class abstract(TObject)
 // - �����, ������� ����� ��������������� ��������/����������� ����� �����������
 public
  class function NewInstance: TObject; override;
  // ms-help://embarcadero.rs_xe7/libraries/System.TObject.NewInstance.html
  procedure FreeInstance; override;
  // ms-help://embarcadero.rs_xe7/libraries/System.TObject.FreeInstance.html
 end;//TmsWatchedObject

 TmsStringList = class abstract(TStringList)
 // - �����, ������� ����� ��������������� ��������/����������� ����� �����������
 public
  class function NewInstance: TObject; override;
  // ms-help://embarcadero.rs_xe7/libraries/System.TObject.NewInstance.html
  procedure FreeInstance; override;
  // ms-help://embarcadero.rs_xe7/libraries/System.TObject.FreeInstance.html
 end;//TmsStringList

 TmsInterfacedNonRefcounted = class abstract(TmsWatchedObject)
  // - ���������� �������� ����������� ����������, �� ��� �������� ������
  //   �.�. ������������ ������ - �� ������������� � "��������" - �� ��������� �������� �����
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

 TmsInterfacedRefcounted = class abstract(TInterfacedObject)
  // ���������� ��������, ����������� ����������. � ����ר��� ������.
  //
  // �� ����� ������� ����������, ����� ���������� ��� - http://18delphi.blogspot.ru/2013/04/iunknown.html
  // �� � ������ ARC - ���������� ���� "�������� ����������"
  //
  // ���� ��� ���� ��� ��� "��������":
  // - http://18delphi.blogspot.ru/2013/07/blog-post_3683.html
  // - http://18delphi.blogspot.ru/2013/07/1.html
  // - http://18delphi.blogspot.ru/2013/07/2.html
  // - http://18delphi.blogspot.ru/2013/07/2_18.html
  // - http://18delphi.blogspot.ru/2013/07/blog-post_8789.html
 public
  class function NewInstance: TObject; override;
  // ms-help://embarcadero.rs_xe7/libraries/System.TObject.NewInstance.html
  procedure FreeInstance; override;
  // ms-help://embarcadero.rs_xe7/libraries/System.TObject.FreeInstance.html
 end;//TmsInterfacedRefcounted

implementation

uses
 System.SysUtils
 ;

// TmsObjectsWatcher

class procedure TmsObjectsWatcher.ObjectCreated(anObject: TObject);
var
 l_ClassName : String;
begin
 Inc(f_ObjectsCreatedCount);
 if (f_ObjectsCreated = nil) then
  f_ObjectsCreated := TmsClassInstanceCountList.Create;
 l_ClassName := anObject.ClassName;
 if (not f_ObjectsCreated.ContainsKey(l_ClassName)) then
  f_ObjectsCreated.Add(l_ClassName, 0)
 else
  f_ObjectsCreated.Items[l_ClassName] := f_ObjectsCreated.Items[l_ClassName] + 1;
end;

class procedure TmsObjectsWatcher.ObjectDestroyed(anObject: TObject);
begin
 Assert(f_ObjectsCreatedCount > 0, '�����-�� ������� ��� ���� ����������� ��������� ���');
 Dec(f_ObjectsCreatedCount);
end;

class destructor TmsObjectsWatcher.Destroy;
var
 l_FS : TFileStream;

 procedure OutLn(const aStr: ANSIString);
 const
  cEOL : ANSIString = #13#10;
 begin//OutLn
  l_FS.Write(aStr[1], Length(aStr));
  l_FS.Write(cEOL[1], Length(cEOL));
 end;//OutLn

var
 l_Index : Integer;
 l_A : TArray<TPair<String, Integer>>;
begin
 if (f_ObjectsCreated <> nil) then
  if (f_ObjectsCreated.Count > 0) then
  begin
   // ����� ������� ���������� �������������� �������� � ���:
   l_FS := TFileStream.Create(ParamStr(0) + '.objects.log', fmCreate);
   try
    OutLn('������������� ��������: ' + IntToStr(f_ObjectsCreatedCount));
    l_A := f_ObjectsCreated.ToArray;
    for l_Index := 0 to Pred(f_ObjectsCreated.Count) do
    begin
     OutLn(l_A[l_Index].Key + ' : ' + IntToStr(l_A[l_Index].Value));
    end;//for l_Index
   finally
    FreeAndNil(l_FS);
   end;//try..finally
  end;//f_ObjectsCreated.Count > 0
 if (f_ObjectsCreatedCount > 0) then
  raise Exception.Create('�����-�� ������� �� �����������: ' + IntToStr(f_ObjectsCreatedCount));
 FreeAndNil(f_ObjectsCreated);
end;

// TmsWatchedObject

class function TmsWatchedObject.NewInstance: TObject;
begin
 Result := inherited NewInstance;
 TmsObjectsWatcher.ObjectCreated(Result);
end;

procedure TmsWatchedObject.FreeInstance;
begin
 TmsObjectsWatcher.ObjectDestroyed(Self);
 inherited;
end;

// TmsStringList

class function TmsStringList.NewInstance: TObject;
begin
 Result := inherited NewInstance;
 TmsObjectsWatcher.ObjectCreated(Result);
end;

procedure TmsStringList.FreeInstance;
begin
 TmsObjectsWatcher.ObjectDestroyed(Self);
 inherited;
end;

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

//TmsInterfacedRefcounted

class function TmsInterfacedRefcounted.NewInstance: TObject;
begin
 Result := inherited NewInstance;
 TmsObjectsWatcher.ObjectCreated(Result);
end;

procedure TmsInterfacedRefcounted.FreeInstance;
begin
 TmsObjectsWatcher.ObjectDestroyed(Self);
 inherited;
end;

end.
