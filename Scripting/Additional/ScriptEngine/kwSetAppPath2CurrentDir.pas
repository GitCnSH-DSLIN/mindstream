unit kwSetAppPath2CurrentDir;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwSetAppPath2CurrentDir.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::SysUtils::SetAppPath2CurrentDir
//
// ������������� CurrentDirectory �������� ���������� ������� ��������� ����������.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwSysUtilsWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwSetAppPath2CurrentDir = {final scriptword} class(TtfwSysUtilsWord)
  {* ������������� CurrentDirectory �������� ���������� ������� ��������� ����������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSetAppPath2CurrentDir
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3String,
  l3Base
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwSetAppPath2CurrentDir

procedure TkwSetAppPath2CurrentDir.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_545B5D020069_var*
//#UC END# *4DAEEDE10285_545B5D020069_var*
begin
//#UC START# *4DAEEDE10285_545B5D020069_impl*
 SetCurrentDir(ExtractFilePath(ParamStr(0)));
//#UC END# *4DAEEDE10285_545B5D020069_impl*
end;//TkwSetAppPath2CurrentDir.DoDoIt

class function TkwSetAppPath2CurrentDir.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'SetAppPath2CurrentDir';
end;//TkwSetAppPath2CurrentDir.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� SetAppPath2CurrentDir
 TkwSetAppPath2CurrentDir.RegisterInEngine;
{$IfEnd} //not NoScripts

end.