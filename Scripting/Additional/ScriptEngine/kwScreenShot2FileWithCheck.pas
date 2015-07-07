unit kwScreenShot2FileWithCheck;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwScreenShot2FileWithCheck.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WinUtils::ScreenShot2FileWithCheck
//
// ��������: ������� �������� � ������������� �������� � ��������� ��� � ���� bmp. ����� ���������
// ����� ������������ ��������� � ��������.
// ������:
// {code}
// aFileName aHeight aWidth aTop aLeft aHandle ScreenShot2FileWithCheck
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
// l_FileName 200 200 0 0 l_Handle ScreenShot2FileWithCheck
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
 TkwScreenShot2FileWithCheck = {final} class(_ScreenShotCommon_)
  {* ��������: ������� �������� � ������������� �������� � ��������� ��� � ���� bmp. ����� ��������� ����� ������������ ��������� � ��������.
������:
[code]
aFileName aHeight aWidth aTop aLeft aHandle ScreenShot2FileWithCheck
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
  l_FileName 200 200 0 0 l_Handle ScreenShot2FileWithCheck
[code] }
 protected
 // realized methods
   procedure DoAfterSave(const aFileName: AnsiString;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwScreenShot2FileWithCheck
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  ddPicturePathListner,
  Graphics,
  SysUtils,
  l3ImageUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwScreenShot2FileWithCheck;

{$Include ..\ScriptEngine\ScreenShotCommon.imp.pas}

// start class TkwScreenShot2FileWithCheck

procedure TkwScreenShot2FileWithCheck.DoAfterSave(const aFileName: AnsiString;
  const aCtx: TtfwContext);
//#UC START# *5369FDE50394_5369FD7A00E8_var*
//#UC END# *5369FDE50394_5369FD7A00E8_var*
begin
//#UC START# *5369FDE50394_5369FD7A00E8_impl*
 with TddPicturePathListner.Instance do
 begin
  AddPicturePath(aFileName);
  TestName := '';
 end; // with TddPicturePathListner.Instance do
 aCtx.rCaller.CheckPictureOnly;
//#UC END# *5369FDE50394_5369FD7A00E8_impl*
end;//TkwScreenShot2FileWithCheck.DoAfterSave

class function TkwScreenShot2FileWithCheck.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ScreenShot2FileWithCheck';
end;//TkwScreenShot2FileWithCheck.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\ScreenShotCommon.imp.pas}
{$IfEnd} //not NoScripts

end.