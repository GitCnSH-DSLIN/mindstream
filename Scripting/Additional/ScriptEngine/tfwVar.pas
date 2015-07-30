unit tfwVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$Core"
// �����: ����� �.�.
// ������: "tfwVar.pas"
// �����: 111.05.2011 19:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi Low Level::ScriptEngine$Core::CompiledWords::TtfwVar
//
// ��������� ����������
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwNewWord,
  tfwScriptingInterfaces,
  kwCompiledWordPrim
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwVar = {abstract} class(TtfwNewWord)
  {* ��������� ���������� }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext;
     aSilent: Boolean): RtfwWord; override;
 protected
 // overridden protected methods
   function AfterWordMaxCount(const aCtx: TtfwContext): Cardinal; override;
   function AcceptsKeyWordAfter: Boolean; override;
   function CompiledWordClass(const aCtx: TtfwContext): RkwCompiledWordPrim; override;
 end;//TtfwVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TtfwVar

function TtfwVar.EndBracket(const aContext: TtfwContext;
  aSilent: Boolean): RtfwWord;
//#UC START# *4DB6C99F026E_4DCAB1A2017C_var*
//#UC END# *4DB6C99F026E_4DCAB1A2017C_var*
begin
//#UC START# *4DB6C99F026E_4DCAB1A2017C_impl*
 Result := DisabledEndBracket(aContext, aSilent);
//#UC END# *4DB6C99F026E_4DCAB1A2017C_impl*
end;//TtfwVar.EndBracket

function TtfwVar.AfterWordMaxCount(const aCtx: TtfwContext): Cardinal;
//#UC START# *4DB9B446039A_4DCAB1A2017C_var*
//#UC END# *4DB9B446039A_4DCAB1A2017C_var*
begin
//#UC START# *4DB9B446039A_4DCAB1A2017C_impl*
 Result := 0;
//#UC END# *4DB9B446039A_4DCAB1A2017C_impl*
end;//TtfwVar.AfterWordMaxCount

function TtfwVar.AcceptsKeyWordAfter: Boolean;
//#UC START# *4DB9B502013D_4DCAB1A2017C_var*
//#UC END# *4DB9B502013D_4DCAB1A2017C_var*
begin
//#UC START# *4DB9B502013D_4DCAB1A2017C_impl*
 Result := false;
//#UC END# *4DB9B502013D_4DCAB1A2017C_impl*
end;//TtfwVar.AcceptsKeyWordAfter

function TtfwVar.CompiledWordClass(const aCtx: TtfwContext): RkwCompiledWordPrim;
//#UC START# *4DBAEE0D028D_4DCAB1A2017C_var*
//#UC END# *4DBAEE0D028D_4DCAB1A2017C_var*
begin
//#UC START# *4DBAEE0D028D_4DCAB1A2017C_impl*
 Result := TkwCompiledVar;
//#UC END# *4DBAEE0D028D_4DCAB1A2017C_impl*
end;//TtfwVar.CompiledWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TtfwVar
 TtfwVar.RegisterClass;
{$IfEnd} //not NoScripts

end.