unit kwProcessFilesWithMask;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwProcessFilesWithMask.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::FileProcessing::ProcessFilesWithMask
//
// ProcessFilesWithMask - ���������� ����� �� ����� � �������� ���������� � �������� ��� �������
// ���������� �������.
// *������:*
// aProc aFileMask aDirName ProcessFilesWithMask
// * aProc - �������, ������� ���������� ��� ������� �����. � ���� ��� ������ ���������� ��� �����.
// * aFileMask - �����, �� ������� ���������� �����, �������� '*.script'
// * aDirName - ����, �� �������� ������ �����.
// *������:*
// {code}
// : PrintFileName
// .
// ;
// 
// @ PrintFileName '*.script' 'w:\archi\source\projects\Archi\TestSet\Scripts\' ProcessFilesWithMask
// {code}
// � ���������� ����� ������ ���� � ���_�������.prn � ������� ������ � ������� ������.
// *����������:* ���� �� ���� ���� �� ������, �� ������� �� ����� ������� �� ����. �� �����������,
// �� ������ �� �����, �� ����� ������ � ����� �� ��������. ����� �� ��������� ����������� ��
// �����������. ��� ����� ���������� � ������ �����.
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
 TkwProcessFilesWithMask = {final scriptword} class(TtfwRegisterableWord)
  {* ProcessFilesWithMask - ���������� ����� �� ����� � �������� ���������� � �������� ��� ������� ���������� �������.
*������:*
aProc aFileMask aDirName ProcessFilesWithMask
* aProc - �������, ������� ���������� ��� ������� �����. � ���� ��� ������ ���������� ��� �����.
* aFileMask - �����, �� ������� ���������� �����, �������� '*.script'
* aDirName - ����, �� �������� ������ �����.
*������:*
[code]
: PrintFileName
 .
;

@ PrintFileName '*.script' 'w:\archi\source\projects\Archi\TestSet\Scripts\' ProcessFilesWithMask
[code]
� ���������� ����� ������ ���� � ���_�������.prn � ������� ������ � ������� ������.
*����������:* ���� �� ���� ���� �� ������, �� ������� �� ����� ������� �� ����. �� �����������, �� ������ �� �����, �� ����� ������ � ����� �� ��������. ����� �� ��������� ����������� �� �����������. ��� ����� ���������� � ������ �����. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwProcessFilesWithMask
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3FileUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwProcessFilesWithMask

procedure TkwProcessFilesWithMask.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5090FF1E038D_var*
var
 l_V          : TtfwStackValue;
 l_Word       : TtfwWord;
 l_DirName    : AnsiString;
 l_FileMask   : AnsiString;
 l_SearchRec  : TSearchRec;
 l_FindResult : Integer;
//#UC END# *4DAEEDE10285_5090FF1E038D_var*
begin
//#UC START# *4DAEEDE10285_5090FF1E038D_impl*
 if aCtx.rEngine.IsTopString then
 begin
  l_DirName := aCtx.rEngine.PopDelphiString;
  if not DirectoryExists(l_DirName) then
  begin
   Assert(False, Format('���������� %s �� ����������', [l_DirName]));
   Exit;
  end; // if not DirectoryExists(l_DirName) then
  if aCtx.rEngine.IsTopString then
  begin
   l_FileMask := aCtx.rEngine.PopDelphiString;
   l_FindResult := FindFirst(ConcatDirName(l_DirName, l_FileMask),
                             faAnyFile,
                             l_SearchRec);
   l_V := aCtx.rEngine.Pop;
   l_Word := TtfwWord(l_V.AsObject);
   try
    while (l_FindResult = 0) do
    begin
     if (l_SearchRec.Attr and (faDirectory or faVolumeID or faSymLink)) = 0 then
     begin
      aCtx.rEngine.PushString(ConcatDirName(l_DirName, l_SearchRec.Name));
      l_Word.DoIt(aCtx);
     end; // if (l_SearchRec.Attr and (faDirectory or faVolumeID or faSymLink)) = 0 then
     l_FindResult := FindNext(l_SearchRec);
    end; // while l_FindResult = 0 do
   finally
    SysUtils.FindClose(l_SearchRec);
   end;//try..finally
  end // if aCtx.rEngine.IsTopString then
  else
   Assert(False, '�� ������ ����� ��� ������!');
 end // if aCtx.rEngine.IsTopString then
 else
  Assert(False, '�� ������ ���������� ��� ������!');
//#UC END# *4DAEEDE10285_5090FF1E038D_impl*
end;//TkwProcessFilesWithMask.DoDoIt

class function TkwProcessFilesWithMask.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ProcessFilesWithMask';
end;//TkwProcessFilesWithMask.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� ProcessFilesWithMask
 TkwProcessFilesWithMask.RegisterInEngine;
{$IfEnd} //not NoScripts

end.