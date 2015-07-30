unit kwInclude;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwInclude.pas"
// �����: 04.05.2011 22:02
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::IncludesAndUses::IncludesAndUsesPack::Include
//
// ����������������� �����: INCLUDE
// ������:
// {code}
// INCLUDE 'Included.script'
// {code}
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces,
  tfwCompilingWord,
  kwIncluded,
  kwCompiledWordPrim,
  l3Interfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwIncludeLike.imp.pas}
 TkwInclude = {scriptword} class(_tfwIncludeLike_)
  {* ����������������� �����: INCLUDE
������:
[code]
 INCLUDE 'Included.script'
[code] }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext;
     aSilent: Boolean): RtfwWord; override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
   function AfterWordMaxCount(const aCtx: TtfwContext): Cardinal; override;
 end;//TkwInclude
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3String,
  SysUtils,
  l3Types
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

{$Include ..\ScriptEngine\tfwIncludeLike.imp.pas}

// start class TkwInclude

function TkwInclude.EndBracket(const aContext: TtfwContext;
  aSilent: Boolean): RtfwWord;
//#UC START# *4DB6C99F026E_4DC1949F00E1_var*
//#UC END# *4DB6C99F026E_4DC1949F00E1_var*
begin
//#UC START# *4DB6C99F026E_4DC1949F00E1_impl*
 Result := DisabledEndBracket(aContext, aSilent);
//#UC END# *4DB6C99F026E_4DC1949F00E1_impl*
end;//TkwInclude.EndBracket

class function TkwInclude.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'INCLUDE';
end;//TkwInclude.GetWordNameForRegister

function TkwInclude.AfterWordMaxCount(const aCtx: TtfwContext): Cardinal;
//#UC START# *4DB9B446039A_4DC1949F00E1_var*
//#UC END# *4DB9B446039A_4DC1949F00E1_var*
begin
//#UC START# *4DB9B446039A_4DC1949F00E1_impl*
 Result := 1;
//#UC END# *4DB9B446039A_4DC1949F00E1_impl*
end;//TkwInclude.AfterWordMaxCount

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� Include
 TkwInclude.RegisterInEngine;
{$IfEnd} //not NoScripts

end.