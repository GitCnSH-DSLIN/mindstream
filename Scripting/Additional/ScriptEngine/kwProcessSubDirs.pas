unit kwProcessSubDirs;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwProcessSubDirs.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::FileProcessing::ProcessSubDirs
//
// ProcessSubDirs - ���������� ���������� � �������� ���������� � �������� ��� ������� ����������
// �������.
// *������:*
// aProc aDirName ProcessSubDirs
// * aProc - �������, ������� ���������� ��� ������ ����������. � ���� ��� ������ ���������� ���
// ����������.
// * aDirName - ����, �� �������� ������ ����������.
// *������:*
// {code}
// : PrintFileName
// .
// ;
// 
// @ PrintFileName 'w:\archi\source\projects\Archi\TestSet\' ProcessSubDirs
// {code}
// � ���������� ����� ������ ���� � ���_�������.prn � ������� ���������� � ������� ������.
// *����������:* ���� �� ���� ����������  �� �������, �� ������� �� ����� ������� �� ����.
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
 TkwProcessSubDirs = {final scriptword} class(TtfwRegisterableWord)
  {* ProcessSubDirs - ���������� ���������� � �������� ���������� � �������� ��� ������� ���������� �������.
*������:*
aProc aDirName ProcessSubDirs
* aProc - �������, ������� ���������� ��� ������ ����������. � ���� ��� ������ ���������� ��� ����������.
* aDirName - ����, �� �������� ������ ����������.
*������:*
[code]
: PrintFileName
 .
;

@ PrintFileName 'w:\archi\source\projects\Archi\TestSet\' ProcessSubDirs
[code]
� ���������� ����� ������ ���� � ���_�������.prn � ������� ���������� � ������� ������.
*����������:* ���� �� ���� ����������  �� �������, �� ������� �� ����� ������� �� ����. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwProcessSubDirs
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3FileUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwProcessSubDirs

procedure TkwProcessSubDirs.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5091008A0389_var*
var
 l_V          : TtfwStackValue;
 l_Word      : TtfwWord;
 l_DirName   : AnsiString;
 l_SearchRec : TSearchRec;
 l_FindResult: Integer;
//#UC END# *4DAEEDE10285_5091008A0389_var*
begin
//#UC START# *4DAEEDE10285_5091008A0389_impl*
 if aCtx.rEngine.IsTopString then
 begin
  l_DirName := aCtx.rEngine.PopDelphiString;
  if not DirectoryExists(l_DirName) then
  begin
   Assert(False, Format('���������� %s �� ����������', [l_DirName]));
   Exit;
  end; // if not DirectoryExists(l_DirName) then
  l_FindResult := FindFirst(ConcatDirName(l_DirName, '*.*'),
                            faDirectory ,
                            l_SearchRec);
  l_V := aCtx.rEngine.Pop;
  l_Word := TtfwWord(l_V.AsObject);
  try
   while (l_FindResult = 0) do
   begin
    if ((l_SearchRec.Attr and faDirectory) <> 0) and (l_SearchRec.Name <> '.') and (l_SearchRec.Name <> '..') then
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
  Assert(False, '�� ������ ���������� ��� ������!');
//#UC END# *4DAEEDE10285_5091008A0389_impl*
end;//TkwProcessSubDirs.DoDoIt

class function TkwProcessSubDirs.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ProcessSubDirs';
end;//TkwProcessSubDirs.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� ProcessSubDirs
 TkwProcessSubDirs.RegisterInEngine;
{$IfEnd} //not NoScripts

end.