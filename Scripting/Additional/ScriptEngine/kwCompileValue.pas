unit kwCompileValue;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwCompileValue.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::WordsDefinition::CompileValue
//
// ����������� �������� �� ����� � ���
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwRegisterableWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompileValue = {final scriptword} class(TtfwRegisterableWord)
  {* ����������� �������� �� ����� � ��� }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCompileValue
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwInteger,
  kwString,
  SysUtils,
  kwValue
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompileValue

procedure TkwCompileValue.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_52B46673008A_var*
var
 l_V : TtfwStackValue;
 l_W : TtfwWord;
//#UC END# *4DAEEDE10285_52B46673008A_var*
begin
//#UC START# *4DAEEDE10285_52B46673008A_impl*
 l_V := aCtx.rEngine.Pop;
 if (l_V.rType = tfw_svtObj) AND (l_V.AsObject Is TtfwWord) then
  l_W := TtfwWord(l_V.AsObject).Use
 else
  l_W := TkwValue.Create(l_V);
 try
  RunnerAssert(l_W <> nil, '��� ����� ��� ����������', aCtx);
  aCtx.rCompiler.AddCodePart(l_W, false, aCtx);
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4DAEEDE10285_52B46673008A_impl*
end;//TkwCompileValue.DoDoIt

class function TkwCompileValue.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'CompileValue';
end;//TkwCompileValue.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� CompileValue
 TkwCompileValue.RegisterInEngine;
{$IfEnd} //not NoScripts

end.