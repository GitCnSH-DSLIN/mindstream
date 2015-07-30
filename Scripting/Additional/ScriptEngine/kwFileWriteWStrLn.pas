unit kwFileWriteWStrLn;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwFileWriteWStrLn.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::FileProcessing::file_WriteWStrLn
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwFileWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwFileWriteWStrLn = {final scriptword} class(TtfwFileWord)
 protected
 // realized methods
   procedure DoFile(const aFile: ItfwFile;
     const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFileWriteWStrLn
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3String
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwFileWriteWStrLn

procedure TkwFileWriteWStrLn.DoFile(const aFile: ItfwFile;
  const aCtx: TtfwContext);
//#UC START# *4F5084CF033E_4F4FE2D70193_var*
//#UC END# *4F5084CF033E_4F4FE2D70193_var*
begin
//#UC START# *4F5084CF033E_4F4FE2D70193_impl*
 aFile.WriteWStrLn(aCtx.rEngine.PopWStr);
//#UC END# *4F5084CF033E_4F4FE2D70193_impl*
end;//TkwFileWriteWStrLn.DoFile

class function TkwFileWriteWStrLn.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'file:WriteWStrLn';
end;//TkwFileWriteWStrLn.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� file_WriteWStrLn
 TkwFileWriteWStrLn.RegisterInEngine;
{$IfEnd} //not NoScripts

end.