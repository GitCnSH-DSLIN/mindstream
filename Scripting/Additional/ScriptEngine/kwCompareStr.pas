unit kwCompareStr;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwCompareStr.pas"
// �����: 16.05.2011 11:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi Low Level::ScriptEngine::StringProcessing::TkwCompareStr
//
// ��������� ����� � ������ ��������.
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
 TkwCompareStr = class(TtfwDualStrWord)
  {* ��������� ����� � ������ ��������. }
 protected
 // realized methods
   procedure DoStrings(const aCtx: TtfwContext;
     const aStr1: Il3CString;
     const aStr2: Il3CString); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCompareStr
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

// start class TkwCompareStr

procedure TkwCompareStr.DoStrings(const aCtx: TtfwContext;
  const aStr1: Il3CString;
  const aStr2: Il3CString);
//#UC START# *4DD0D021034C_4DD0D0A002BD_var*
//#UC END# *4DD0D021034C_4DD0D0A002BD_var*
begin
//#UC START# *4DD0D021034C_4DD0D0A002BD_impl*
 aCtx.rEngine.PushInt(l3Compare(l3PCharLen(aStr1), l3PCharLen(aStr2)));
//#UC END# *4DD0D021034C_4DD0D0A002BD_impl*
end;//TkwCompareStr.DoStrings

class function TkwCompareStr.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DD0D0A002BD_var*
//#UC END# *4DB0614603C8_4DD0D0A002BD_var*
begin
//#UC START# *4DB0614603C8_4DD0D0A002BD_impl*
 Result := 'CompareStr';
//#UC END# *4DB0614603C8_4DD0D0A002BD_impl*
end;//TkwCompareStr.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TkwCompareStr
 TkwCompareStr.RegisterInEngine;
{$IfEnd} //not NoScripts

end.