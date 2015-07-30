unit kwCopyFilesByMask;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwCopyFilesByMask.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::FileProcessing::CopyFilesByMask
//
// CopyFilesByMask- �������� ����� �� �����..
// *������:*
// {code}
// aFileMask aDestDir aSourceDir  CopyFilesByMask
// {code}
// * aSourceDir - ���������� ������ ��������.
// * aDestDir - ���������� ���� ��������.
// * aFileMask - �����, �� ������� �������� �����.
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
 TkwCopyFilesByMask = {final scriptword} class(TtfwRegisterableWord)
  {* CopyFilesByMask- �������� ����� �� �����..
*������:* 
[code]
 aFileMask aDestDir aSourceDir  CopyFilesByMask
[code]
* aSourceDir - ���������� ������ ��������.
* aDestDir - ���������� ���� ��������.
* aFileMask - �����, �� ������� �������� �����.
��������� ����� �� ����������. ���� ���������� ������, �� ����� Exception }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCopyFilesByMask
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3FileUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCopyFilesByMask

procedure TkwCopyFilesByMask.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_53FDBEC202D9_var*
var
 l_Dest   : AnsiString;
 l_Mask   : AnsiString;
 l_Source : AnsiString;
//#UC END# *4DAEEDE10285_53FDBEC202D9_var*
begin
//#UC START# *4DAEEDE10285_53FDBEC202D9_impl*
 RunnerAssert(aCtx.rEngine.IsTopString, '�� ������ �������� ����������!', aCtx);
 l_Source := aCtx.rEngine.PopDelphiString;
 RunnerAssert(aCtx.rEngine.IsTopString, '�� ������ ���������� ����������!', aCtx);
 l_Dest := aCtx.rEngine.PopDelphiString;
 RunnerAssert(aCtx.rEngine.IsTopString, '�� ������ ����� ������!', aCtx);
 l_Mask := aCtx.rEngine.PopDelphiString;
 CopyFilesByMask(l_Source, l_Dest, l_Mask);
//#UC END# *4DAEEDE10285_53FDBEC202D9_impl*
end;//TkwCopyFilesByMask.DoDoIt

class function TkwCopyFilesByMask.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'CopyFilesByMask';
end;//TkwCopyFilesByMask.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� CopyFilesByMask
 TkwCopyFilesByMask.RegisterInEngine;
{$IfEnd} //not NoScripts

end.