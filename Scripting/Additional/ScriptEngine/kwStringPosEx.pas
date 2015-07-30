unit kwStringPosEx;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwStringPosEx.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::StringProcessing::string_PosEx
//
// 6 '���� ���� ����' '��' string:PosEx .
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwDualStrWord,
  l3Interfaces,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwStringPosEx = {final scriptword} class(TtfwDualStrWord)
  {* 6 '���� ���� ����' '��' string:PosEx . }
 protected
 // realized methods
   procedure DoStrings(const aCtx: TtfwContext;
     const aStr1: Il3CString;
     const aStr2: Il3CString); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStringPosEx
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

// start class TkwStringPosEx

procedure TkwStringPosEx.DoStrings(const aCtx: TtfwContext;
  const aStr1: Il3CString;
  const aStr2: Il3CString);
//#UC START# *4DD0D021034C_51496FCF03B5_var*
//#UC END# *4DD0D021034C_51496FCF03B5_var*
begin
//#UC START# *4DD0D021034C_51496FCF03B5_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������� ����� �������, � �������� ����������� �����', aCtx);
 aCtx.rEngine.PushInt(l3PosEx(aStr1, aStr2, aCtx.rEngine.PopInt));
//#UC END# *4DD0D021034C_51496FCF03B5_impl*
end;//TkwStringPosEx.DoStrings

class function TkwStringPosEx.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'string:PosEx';
end;//TkwStringPosEx.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� string_PosEx
 TkwStringPosEx.RegisterInEngine;
{$IfEnd} //not NoScripts

end.