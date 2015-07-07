unit kwCASE;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCASE.pas"
// �����: 29.04.2011 21:00
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CodeBranchingWords::CASE
//
// ������ Case �� Delphi
// {code}
// CASE
// 1 ( 1 . )
// 2 ( 2 . )
// DEFAULT ( 'else' . )
// ENDCASE
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
 TkwCASE = class(_tfwBeginLikeWord_)
  {* ������ Case �� Delphi
[code]
 CASE
  1 ( 1 . )
  2 ( 2 . )
  DEFAULT ( 'else' . )
 ENDCASE
[code] }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext;
     aSilent: Boolean): RtfwWord; override;
 protected
 // overridden protected methods
   function CompiledWordClass(const aCtx: TtfwContext): RkwCompiledWordPrim; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCASE
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledCase,
  kwEND,
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

type _Instance_R_ = TkwCASE;

{$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}

// start class TkwCASE

function TkwCASE.EndBracket(const aContext: TtfwContext;
  aSilent: Boolean): RtfwWord;
//#UC START# *4DB6C99F026E_4DBAEE8103DB_var*
//#UC END# *4DB6C99F026E_4DBAEE8103DB_var*
begin
//#UC START# *4DB6C99F026E_4DBAEE8103DB_impl*
 Result := TkwEND;
//#UC END# *4DB6C99F026E_4DBAEE8103DB_impl*
end;//TkwCASE.EndBracket

class function TkwCASE.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'CASE';
end;//TkwCASE.GetWordNameForRegister

function TkwCASE.CompiledWordClass(const aCtx: TtfwContext): RkwCompiledWordPrim;
//#UC START# *4DBAEE0D028D_4DBAEE8103DB_var*
//#UC END# *4DBAEE0D028D_4DBAEE8103DB_var*
begin
//#UC START# *4DBAEE0D028D_4DBAEE8103DB_impl*
 Result := TkwCompiledCase;
//#UC END# *4DBAEE0D028D_4DBAEE8103DB_impl*
end;//TkwCASE.CompiledWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
{$IfEnd} //not NoScripts

end.