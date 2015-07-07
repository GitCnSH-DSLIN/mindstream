unit kwBracketBegin;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwBracketBegin.pas"
// �����: 03.05.2011 12:25
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CodeBranchingWords::BracketBegin
//
// ��������� ������.
// ������:
// {code}
// 10 LOOP ( 'Hello' . )
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
  tfwScriptingInterfaces,
  l3Interfaces,
  l3ParserInterfaces,
  kwCompiledWordPrim,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
 TkwBracketBegin = class(_tfwBeginLikeWord_)
  {* ��������� ������. 
������:
[code]
 10 LOOP ( 'Hello' . )
[code] }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext;
     aSilent: Boolean): RtfwWord; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwBracketBegin
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwBracketEnd,
  kwBeginLikeCompiledCode,
  l3Parser,
  kwCompiledWord,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  StrUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwBracketBegin;

{$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}

// start class TkwBracketBegin

function TkwBracketBegin.EndBracket(const aContext: TtfwContext;
  aSilent: Boolean): RtfwWord;
//#UC START# *4DB6C99F026E_4DBFBBE603E5_var*
//#UC END# *4DB6C99F026E_4DBFBBE603E5_var*
begin
//#UC START# *4DB6C99F026E_4DBFBBE603E5_impl*
 Result := TkwBracketEnd;
//#UC END# *4DB6C99F026E_4DBFBBE603E5_impl*
end;//TkwBracketBegin.EndBracket

class function TkwBracketBegin.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '(';
end;//TkwBracketBegin.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
{$IfEnd} //not NoScripts

end.