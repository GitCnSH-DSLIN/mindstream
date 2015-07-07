unit kwCopyFile;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCopyFile.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FileProcessing::CopyFile
//
// CopyFile - �������� ����.
// *������:*  aCopyMode aDestFile aSourceFile CopyFile
// * aSourceFile - ��� ��������� �����
// * aDestFile - ��� �����, ���� ��������
// * aCopyMode - ����� ����������� �����.
// ��������� ����� �� ����������. ���� ���������� ������, �� ����� Exception
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
  tfwRegisterableWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwCopyFile = {final} class(_tfwAutoregisteringWord_)
  {* CopyFile - �������� ����.
*������:*  aCopyMode aDestFile aSourceFile CopyFile
* aSourceFile - ��� ��������� �����
* aDestFile - ��� �����, ���� ��������
* aCopyMode - ����� ����������� �����.
��������� ����� �� ����������. ���� ���������� ������, �� ����� Exception }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCopyFile
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3FileUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwCopyFile;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

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
 CopyFile(l_Source, l_Dest, l_CopyMode);
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
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.