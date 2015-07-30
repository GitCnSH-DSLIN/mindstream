unit kwPureDir;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwPureDir.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::FileProcessing::PureDir
//
// RenameFile - ������� ����������.
// *������:* aDirName PureDir
// * aDirName  - ��� ����������.
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
 TkwPureDir = {final scriptword} class(TtfwRegisterableWord)
  {* RenameFile - ������� ����������.
*������:* aDirName PureDir
* aDirName  - ��� ����������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPureDir
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3FileUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwPureDir

procedure TkwPureDir.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5124682C039E_var*
//#UC END# *4DAEEDE10285_5124682C039E_var*
begin
//#UC START# *4DAEEDE10285_5124682C039E_impl*
 if aCtx.rEngine.IsTopString then
  PureDir(aCtx.rEngine.PopDelphiString)
 else
  Assert(False, '�� ������ ��� ����������!');
//#UC END# *4DAEEDE10285_5124682C039E_impl*
end;//TkwPureDir.DoDoIt

class function TkwPureDir.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'PureDir';
end;//TkwPureDir.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� PureDir
 TkwPureDir.RegisterInEngine;
{$IfEnd} //not NoScripts

end.