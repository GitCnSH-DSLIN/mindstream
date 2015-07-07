unit kwCONST;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCONST.pas"
// �����: 03.05.2011 12:58
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VarWorkingWords::CONST
//
// ���������� ���������.
// ������:
// {code}
// CONST cFake1 5
// {code}
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
  l3Interfaces,
  tfwScriptingInterfaces,
  kwCompiledWordPrim,
  l3ParserInterfaces,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwConst.imp.pas}
 TkwCONST = class(_tfwConst_)
  {* ���������� ���������.
������:
[code]
 CONST cFake1 5
[code] }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCONST
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwRuntimeWordWithCodeExecution,
  SysUtils,
  l3String,
  l3Parser,
  kwCompiledWord,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  StrUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwCONST;

{$Include ..\ScriptEngine\tfwConst.imp.pas}

// start class TkwCONST

class function TkwCONST.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'CONST';
end;//TkwCONST.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwConst.imp.pas}
{$IfEnd} //not NoScripts

end.