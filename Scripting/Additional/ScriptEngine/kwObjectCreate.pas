unit kwObjectCreate;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwObjectCreate.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CommonObjectWords::object_Create
//
// ��������� ��������������� �������� �����-������� ��� ������.
// *������:* aClass .Create
// aClass - ����� �����.
// 
// ���� ������ ������ VCM-����� �� �������������� ������� ��������� � ������ �������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwRegisterableWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwObjectCreate = class(_tfwAutoregisteringWord_)
  {* ��������� ��������������� �������� �����-������� ��� ������.
*������:* aClass .Create
aClass - ����� �����.

���� ������ ������ VCM-����� �� �������������� ������� ��������� � ������ �������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwObjectCreate
{$IfEnd} //not NoScripts AND not NoVCM

implementation

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  vcmEntityForm,
  Forms,
  vcmBase,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}

type _Instance_R_ = TkwObjectCreate;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwObjectCreate

procedure TkwObjectCreate.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E29311F0055_var*
var
 l_Class: TClass;
//#UC END# *4DAEEDE10285_4E29311F0055_var*
begin
//#UC START# *4DAEEDE10285_4E29311F0055_impl*
{$If defined(NoVCM)}
 RunnerAssert(False, 'VCM �� �������������� � ����.', aCtx);
{$ELSE}
 if aCtx.rEngine.IsTopClass then
 begin
  l_Class := aCtx.rEngine.PopClass;
  RunnerAssert(l_Class.InheritsFrom(TvcmEntityForm), '������������ ����� �����', aCtx);
  aCtx.rEngine.PushObj(RvcmEntityForm(l_Class).Make(vcmMakeParams).VCLWinControl As TCustomForm);
 end//aCtx.rEngine.IsTopString
 else
  RunnerAssert(False, '�� ����� ����� �����.', aCtx);
{$IfEnd} //not NoVCM
//#UC END# *4DAEEDE10285_4E29311F0055_impl*
end;//TkwObjectCreate.DoDoIt

class function TkwObjectCreate.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '.Create';
end;//TkwObjectCreate.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVCM

initialization
{$If not defined(NoScripts) AND not defined(NoVCM)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVCM

end.