unit tfwStrWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$Core"
// �����: ����� �.�.
// ������: "tfwStrWord.pas"
// �����: 16.05.2011 11:16
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi Low Level::ScriptEngine$Core::WordsTemplates::TtfwStrWord
//
// ��������� ���� ��� ������ �� ��������.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  l3Interfaces,
  tfwScriptingInterfaces,
  tfwSysUtilsWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 _tfwStrWordUses_Parent_ = TtfwSysUtilsWord;
 {$Include ..\ScriptEngine\tfwStrWordUses.imp.pas}
 TtfwStrWord = {abstract} class(_tfwStrWordUses_)
  {* ��������� ���� ��� ������ �� ��������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoString(const aCtx: TtfwContext;
     const aStr: Il3CString); virtual; abstract;
 end;//TtfwStrWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3String,
  SysUtils,
  l3Base
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

{$Include ..\ScriptEngine\tfwStrWordUses.imp.pas}

// start class TtfwStrWord

procedure TtfwStrWord.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DD0CF400328_var*
//#UC END# *4DAEEDE10285_4DD0CF400328_var*
begin
//#UC START# *4DAEEDE10285_4DD0CF400328_impl*
 DoString(aCtx, aCtx.rEngine.PopString);
//#UC END# *4DAEEDE10285_4DD0CF400328_impl*
end;//TtfwStrWord.DoDoIt

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TtfwStrWord
 TtfwStrWord.RegisterClass;
{$IfEnd} //not NoScripts

end.