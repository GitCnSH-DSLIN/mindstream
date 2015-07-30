unit kwCopyFile;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwCopyFile.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::FileProcessing::CopyFile
//
// CopyFile - �������� ����.
// *������:*  aCopyMode aDestFile aSourceFile CopyFile
// * aSourceFile - ��� ��������� �����
// * aDestFile - ��� �����, ���� ��������
// * aCopyMode - ����� ����������� �����.
// ��������� ����� �� ����������. ���� ���������� ������, �� ����� Exception
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
 TkwCopyFile = {final scriptword} class(TtfwRegisterableWord)
  {* CopyFile - �������� ����.
*������:*  aCopyMode aDestFile aSourceFile CopyFile
* aSourceFile - ��� ��������� �����
* aDestFile - ��� �����, ���� ��������
* aCopyMode - ����� ����������� �����.
��������� ����� �� ����������. ���� ���������� ������, �� ����� Exception }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCopyFile
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3FileUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCopyFile

procedure TkwCopyFile.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_53FDAD910148_var*
var
 l_Dest    : AnsiString;
 l_Source  : AnsiString;
 l_CopyMode: Byte;
//#UC END# *4DAEEDE10285_53FDAD910148_var*
begin
//#UC START# *4DAEEDE10285_53FDAD910148_impl*
 RunnerAssert(aCtx.rEngine.IsTopString, '�� ������ ��� ��������� �����!', aCtx);
 l_Source := aCtx.rEngine.PopDelphiString;
 RunnerAssert(aCtx.rEngine.IsTopString, '�� ������ ��� ����� ����������!', aCtx);
 l_Dest := aCtx.rEngine.PopDelphiString;
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ����� ����� �����������!', aCtx);
 l_CopyMode := Byte(aCtx.rEngine.PopInt);
 l3FileUtils.CopyFile(l_Source, l_Dest, l_CopyMode);
//#UC END# *4DAEEDE10285_53FDAD910148_impl*
end;//TkwCopyFile.DoDoIt

class function TkwCopyFile.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'CopyFile';
end;//TkwCopyFile.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� CopyFile
 TkwCopyFile.RegisterInEngine;
{$IfEnd} //not NoScripts

end.