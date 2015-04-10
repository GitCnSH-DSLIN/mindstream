unit kwOPERATOR;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwOPERATOR.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WordsDefinition::OPERATOR
//
// ���������� ���������, ������� ����� ��������� ����� ��� �����, ��� � ������
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
  kwCompiledWordWorkerWord,
  kwCompiledWordPrim,
  l3ParserInterfaces,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwWordWorkerWord.imp.pas}
 TkwOPERATOR = {final} class(_kwWordWorkerWord_)
  {* ���������� ���������, ������� ����� ��������� ����� ��� �����, ��� � ������ }
 protected
 // overridden protected methods
   function AddedParameters: Tl3CStringArray; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwOPERATOR
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledPopToVar,
  kwCompiledVar,
  kwLeftParam,
  l3Base,
  kwCompiledFunction,
  kwCompiledProcedureWithStackChecking,
  kwCompiledImmediateWordWorkerWord,
  kwInlinedWord,
  kwStandardProcedureCloseBracket,
  kwCompiledProcedure,
  SysUtils,
  l3String,
  l3Parser,
  kwCompiledWord,
  kwInteger,
  kwString,
  TypInfo,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  StrUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwOPERATOR;

{$Include ..\ScriptEngine\kwWordWorkerWord.imp.pas}

// start class TkwOPERATOR

class function TkwOPERATOR.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'OPERATOR';
end;//TkwOPERATOR.GetWordNameForRegister

function TkwOPERATOR.AddedParameters: Tl3CStringArray;
//#UC START# *4F3FF55403AB_53E466AC0341_var*
//#UC END# *4F3FF55403AB_53E466AC0341_var*
begin
//#UC START# *4F3FF55403AB_53E466AC0341_impl*
 Result := nil;
//#UC END# *4F3FF55403AB_53E466AC0341_impl*
end;//TkwOPERATOR.AddedParameters

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwWordWorkerWord.imp.pas}
{$IfEnd} //not NoScripts

end.