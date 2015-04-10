unit tfwString;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwString.pas"
// �����: 27.05.2011 20:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::TtfwString
//
// ������� ������ ��� ���������� ���� � �������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwRegisterableWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwString = {abstract} class(TtfwRegisterableWord)
  {* ������� ������ ��� ���������� ���� � �������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   function GetString: AnsiString; virtual;
 end;//TtfwString
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  tfwScriptEngine,
  l3Except
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TtfwString

function TtfwString.GetString: AnsiString;
//#UC START# *4DDFD2EA0116_4DDFD1430390_var*
//#UC END# *4DDFD2EA0116_4DDFD1430390_var*
begin
//#UC START# *4DDFD2EA0116_4DDFD1430390_impl*
 Result := '';
 Assert(false);
//#UC END# *4DDFD2EA0116_4DDFD1430390_impl*
end;//TtfwString.GetString

procedure TtfwString.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DDFD1430390_var*
//#UC END# *4DAEEDE10285_4DDFD1430390_var*
begin
//#UC START# *4DAEEDE10285_4DDFD1430390_impl*
 aCtx.rEngine.PushString(TtfwCStringFactory.C(GetString));
//#UC END# *4DAEEDE10285_4DDFD1430390_impl*
end;//TtfwString.DoDoIt

{$IfEnd} //not NoScripts

end.