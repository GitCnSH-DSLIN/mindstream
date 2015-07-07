unit kwScreenShot2File;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwScreenShot2File.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WinUtils::ScreenShot2File
//
// ��������: ������� �������� � ������������� �������� � ��������� ��� � ���� bmp. ������:
// {code}
// aFileName aHeight aWidth aTop aLeft aHandle ScreenShot2File
// {code}
// ��� aFileName - ��� ����� � ����������� bmp, � ������� ��������� ��������
// aHandle - ����� ��������, � �������� ������� �������� (0 - ��� ������ ��������� � ��������).
// aLeft, aTop, aWidth, aHeight - ��������� ���������� � ������� ������������� �������, � �������
// ������� ��������.
// ������:
// {code}
// INTEGER VAR l_Handle
// "������� � ������" pop:control:GetHandle >>> l_Handle
// STRING VAR l_FileName
// script:FileName '.bmp' sysutils:ChangeFileExt
// sysutils:ExtractFileName >>> l_FileName
// l_FileName 200 200 0 0 l_Handle ScreenShot2File
// {code}
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
  tfwScriptingInterfaces,
  Windows,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\ScreenShotCommon.imp.pas}
 TkwScreenShot2File = {final} class(_ScreenShotCommon_)
  {* ��������: ������� �������� � ������������� �������� � ��������� ��� � ���� bmp. ������:
[code]
aFileName aHeight aWidth aTop aLeft aHandle ScreenShot2File
[code]
��� aFileName - ��� ����� � ����������� bmp, � ������� ��������� ��������
aHandle - ����� ��������, � �������� ������� �������� (0 - ��� ������ ��������� � ��������).
aLeft, aTop, aWidth, aHeight - ��������� ���������� � ������� ������������� �������, � ������� ������� ��������.
������:
[code]
  INTEGER VAR l_Handle
  "������� � ������" pop:control:GetHandle >>> l_Handle
  STRING VAR l_FileName
  script:FileName '.bmp' sysutils:ChangeFileExt
  sysutils:ExtractFileName >>> l_FileName  
  l_FileName 200 200 0 0 l_Handle ScreenShot2File
[code] }
 protected
 // realized methods
   procedure DoAfterSave(const aFileName: AnsiString;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwScreenShot2File
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Graphics,
  SysUtils,
  l3ImageUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwScreenShot2File;

{$Include ..\ScriptEngine\ScreenShotCommon.imp.pas}

// start class TkwScreenShot2File

procedure TkwScreenShot2File.DoAfterSave(const aFileName: AnsiString;
  const aCtx: TtfwContext);
//#UC START# *5369FDE50394_5369E170038B_var*
//#UC END# *5369FDE50394_5369E170038B_var*
begin
//#UC START# *5369FDE50394_5369E170038B_impl*
//#UC END# *5369FDE50394_5369E170038B_impl*
end;//TkwScreenShot2File.DoAfterSave

class function TkwScreenShot2File.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ScreenShot2File';
end;//TkwScreenShot2File.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\ScreenShotCommon.imp.pas}
{$IfEnd} //not NoScripts

end.