unit kwStringModifier;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwStringModifier.pas"
// �����: 11.05.2011 21:51
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::Modifiers::StringModifier
//
// ��������� �����������.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwModifier,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwStringModifier = {scriptword} class(TkwModifier)
  {* ��������� �����������. }
 protected
 // realized methods
   function pm_GetModifier: TtfwWordModifier; override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStringModifier
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwStringModifier

function TkwStringModifier.pm_GetModifier: TtfwWordModifier;
//#UC START# *4DCACED80361_4DCACDE302EFget_var*
//#UC END# *4DCACED80361_4DCACDE302EFget_var*
begin
//#UC START# *4DCACED80361_4DCACDE302EFget_impl*
 Result := tfw_wmStr;
//#UC END# *4DCACED80361_4DCACDE302EFget_impl*
end;//TkwStringModifier.pm_GetModifier

class function TkwStringModifier.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'STRING';
end;//TkwStringModifier.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� StringModifier
 TkwStringModifier.RegisterInEngine;
{$IfEnd} //not NoScripts

end.