unit ReminderWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$VT"
// ������: "ReminderWordsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeywordsPack::Class Shared Delphi::ScriptEngine$VT::ReminderWords::ReminderWordsPack
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
uses
  l3Interfaces,
  Types,
  Classes,
  Menus,
  vtPopupFormModelPart,
  tfwScriptingInterfaces,
  vgRemindersLine,
  tfwRegisterableWord
  ;

{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene

implementation

{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
uses
  l3PopupMenuHelper,
  RemindersLineWordsPack,
  Forms,
  TypInfo,
  SysUtils,
  tfwTypeRegistrator
  ;

type
 TkwPopReminderClick = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:Click
*������:*
[code]
 aReminder pop:Reminder:Click
[code]  }
 private
 // private methods
   procedure Click(const aCtx: TtfwContext;
    aReminder: TvgReminder);
     {* ���������� ����� ������� pop:Reminder:Click }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderClick

// start class TkwPopReminderClick

procedure TkwPopReminderClick.Click(const aCtx: TtfwContext;
  aReminder: TvgReminder);
 {-}
begin
 aReminder.Click;
end;//TkwPopReminderClick.Click

procedure TkwPopReminderClick.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 Click(aCtx, l_aReminder);
end;//TkwPopReminderClick.DoDoIt

class function TkwPopReminderClick.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Click';
end;//TkwPopReminderClick.GetWordNameForRegister

function TkwPopReminderClick.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := @tfw_tiVoid;
end;//TkwPopReminderClick.GetResultTypeInfo

type
 TkwPopReminderMove = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:Move
*������:*
[code]
 aDelta aReminder pop:Reminder:Move
[code]  }
 private
 // private methods
   procedure Move(const aCtx: TtfwContext;
    aReminder: TvgReminder;
    const aDelta: TPoint);
     {* ���������� ����� ������� pop:Reminder:Move }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderMove

// start class TkwPopReminderMove

procedure TkwPopReminderMove.Move(const aCtx: TtfwContext;
  aReminder: TvgReminder;
  const aDelta: TPoint);
//#UC START# *2ABDE4AD9F20_0442CDEB32BC_var*
//#UC END# *2ABDE4AD9F20_0442CDEB32BC_var*
begin
//#UC START# *2ABDE4AD9F20_0442CDEB32BC_impl*
 RunnerAssert(aReminder.Owner is TvgRemindersLine, '�� ������� ����� ������', aCtx);
 (aReminder.Owner as TvgRemindersLine).OffSetLine(aDelta.X, aDelta.Y);
//#UC END# *2ABDE4AD9F20_0442CDEB32BC_impl*
end;//TkwPopReminderMove.Move

procedure TkwPopReminderMove.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
 l_aDelta : TPoint;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 try
  l_aDelta := (aCtx.rEngine.PopPoint);
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aDelta: TPoint : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 Move(aCtx, l_aReminder, l_aDelta);
end;//TkwPopReminderMove.DoDoIt

class function TkwPopReminderMove.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Move';
end;//TkwPopReminderMove.GetWordNameForRegister

function TkwPopReminderMove.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := @tfw_tiVoid;
end;//TkwPopReminderMove.GetResultTypeInfo

type
 TkwPopReminderFindEditor = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:FindEditor
*��� ����������:* TComponent
*������:*
[code]
 aReminder pop:Reminder:FindEditor
[code]  }
 private
 // private methods
   function FindEditor(const aCtx: TtfwContext;
    aReminder: TvgReminder): TComponent;
     {* ���������� ����� ������� pop:Reminder:FindEditor }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderFindEditor

// start class TkwPopReminderFindEditor

function TkwPopReminderFindEditor.FindEditor(const aCtx: TtfwContext;
  aReminder: TvgReminder): TComponent;
//#UC START# *963C245EE80F_649B596A6C75_var*
var
 l_F : TForm;
 l_E : TComponent;
//#UC END# *963C245EE80F_649B596A6C75_var*
begin
//#UC START# *963C245EE80F_649B596A6C75_impl*
 with aReminder do
 begin
  RunnerAssert(Assigned(PopupForm) and PopupForm.Visible, '������ �� ���������� ��� �������.', aCtx);
  l_F := PopupForm.Panel.Controls[0] as TForm;
  l_E := l_F.FindComponent('Viewer');
  RunnerAssert(Assigned(l_E), '�� ������ �������� � �������.', aCtx);
  Result := l_E;
 end;//with aReminder
//#UC END# *963C245EE80F_649B596A6C75_impl*
end;//TkwPopReminderFindEditor.FindEditor

procedure TkwPopReminderFindEditor.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushObj((FindEditor(aCtx, l_aReminder)));
end;//TkwPopReminderFindEditor.DoDoIt

class function TkwPopReminderFindEditor.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:FindEditor';
end;//TkwPopReminderFindEditor.GetWordNameForRegister

function TkwPopReminderFindEditor.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(TComponent);
end;//TkwPopReminderFindEditor.GetResultTypeInfo

type
 TkwPopReminderGetPopupMenu = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:GetPopupMenu
*��� ����������:* TMenuItem
*������:*
[code]
 aReminder pop:Reminder:GetPopupMenu
[code]  }
 private
 // private methods
   function GetPopupMenu(const aCtx: TtfwContext;
    aReminder: TvgReminder): TMenuItem;
     {* ���������� ����� ������� pop:Reminder:GetPopupMenu }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderGetPopupMenu

// start class TkwPopReminderGetPopupMenu

function TkwPopReminderGetPopupMenu.GetPopupMenu(const aCtx: TtfwContext;
  aReminder: TvgReminder): TMenuItem;
//#UC START# *BC5BE2E8AB9C_C1FAEFF176B2_var*
var
 l_Pt: TPoint;
//#UC END# *BC5BE2E8AB9C_C1FAEFF176B2_var*
begin
//#UC START# *BC5BE2E8AB9C_C1FAEFF176B2_impl*
 l_Pt.X := 0;
 l_Pt.Y := 0;
 Result := Tl3PopupMenuHelper.Instance.GetPopupMenu(aReminder, l_Pt);
//#UC END# *BC5BE2E8AB9C_C1FAEFF176B2_impl*
end;//TkwPopReminderGetPopupMenu.GetPopupMenu

procedure TkwPopReminderGetPopupMenu.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushObj((GetPopupMenu(aCtx, l_aReminder)));
end;//TkwPopReminderGetPopupMenu.DoDoIt

class function TkwPopReminderGetPopupMenu.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:GetPopupMenu';
end;//TkwPopReminderGetPopupMenu.GetWordNameForRegister

function TkwPopReminderGetPopupMenu.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(TMenuItem);
end;//TkwPopReminderGetPopupMenu.GetResultTypeInfo

type
 TkwPopReminderImageIndex = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:ImageIndex
*��� ����������:* Integer
*������:*
[code]
 aReminder pop:Reminder:ImageIndex
[code]  }
 private
 // private methods
   function ImageIndex(const aCtx: TtfwContext;
    aReminder: TvgReminder): Integer;
     {* ���������� ����� ������� pop:Reminder:ImageIndex }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderImageIndex

// start class TkwPopReminderImageIndex

function TkwPopReminderImageIndex.ImageIndex(const aCtx: TtfwContext;
  aReminder: TvgReminder): Integer;
 {-}
begin
 Result := aReminder.ImageIndex;
end;//TkwPopReminderImageIndex.ImageIndex

procedure TkwPopReminderImageIndex.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushInt((ImageIndex(aCtx, l_aReminder)));
end;//TkwPopReminderImageIndex.DoDoIt

class function TkwPopReminderImageIndex.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:ImageIndex';
end;//TkwPopReminderImageIndex.GetWordNameForRegister

function TkwPopReminderImageIndex.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Integer);
end;//TkwPopReminderImageIndex.GetResultTypeInfo

type
 TkwPopReminderUserType = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:UserType
*��� ����������:* Integer
*������:*
[code]
 aReminder pop:Reminder:UserType
[code]  }
 private
 // private methods
   function UserType(const aCtx: TtfwContext;
    aReminder: TvgReminder): Integer;
     {* ���������� ����� ������� pop:Reminder:UserType }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderUserType

// start class TkwPopReminderUserType

function TkwPopReminderUserType.UserType(const aCtx: TtfwContext;
  aReminder: TvgReminder): Integer;
 {-}
begin
 Result := aReminder.UserType;
end;//TkwPopReminderUserType.UserType

procedure TkwPopReminderUserType.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushInt((UserType(aCtx, l_aReminder)));
end;//TkwPopReminderUserType.DoDoIt

class function TkwPopReminderUserType.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:UserType';
end;//TkwPopReminderUserType.GetWordNameForRegister

function TkwPopReminderUserType.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Integer);
end;//TkwPopReminderUserType.GetResultTypeInfo

type
 TkwPopReminderIsBaloonVisible = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:IsBaloonVisible
*��� ����������:* Boolean
*������:*
[code]
 aReminder pop:Reminder:IsBaloonVisible
[code]  }
 private
 // private methods
   function IsBaloonVisible(const aCtx: TtfwContext;
    aReminder: TvgReminder): Boolean;
     {* ���������� ����� ������� pop:Reminder:IsBaloonVisible }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderIsBaloonVisible

// start class TkwPopReminderIsBaloonVisible

function TkwPopReminderIsBaloonVisible.IsBaloonVisible(const aCtx: TtfwContext;
  aReminder: TvgReminder): Boolean;
//#UC START# *17481393F146_B5B73476616C_var*
//#UC END# *17481393F146_B5B73476616C_var*
begin
//#UC START# *17481393F146_B5B73476616C_impl*
 Result := ((aReminder.PopupForm <> nil) and aReminder.PopupForm.Visible);
//#UC END# *17481393F146_B5B73476616C_impl*
end;//TkwPopReminderIsBaloonVisible.IsBaloonVisible

procedure TkwPopReminderIsBaloonVisible.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushBool((IsBaloonVisible(aCtx, l_aReminder)));
end;//TkwPopReminderIsBaloonVisible.DoDoIt

class function TkwPopReminderIsBaloonVisible.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:IsBaloonVisible';
end;//TkwPopReminderIsBaloonVisible.GetWordNameForRegister

function TkwPopReminderIsBaloonVisible.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Boolean);
end;//TkwPopReminderIsBaloonVisible.GetResultTypeInfo

type
 TkwPopReminderVisible = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:Visible
*��� ����������:* Boolean
*������:*
[code]
 aReminder pop:Reminder:Visible
[code]  }
 private
 // private methods
   function Visible(const aCtx: TtfwContext;
    aReminder: TvgReminder): Boolean;
     {* ���������� ����� ������� pop:Reminder:Visible }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderVisible

// start class TkwPopReminderVisible

function TkwPopReminderVisible.Visible(const aCtx: TtfwContext;
  aReminder: TvgReminder): Boolean;
 {-}
begin
 Result := aReminder.Visible;
end;//TkwPopReminderVisible.Visible

procedure TkwPopReminderVisible.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushBool((Visible(aCtx, l_aReminder)));
end;//TkwPopReminderVisible.DoDoIt

class function TkwPopReminderVisible.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Visible';
end;//TkwPopReminderVisible.GetWordNameForRegister

function TkwPopReminderVisible.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Boolean);
end;//TkwPopReminderVisible.GetResultTypeInfo

type
 TkwPopReminderName = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:Name
*��� ����������:* String
*������:*
[code]
 aReminder pop:Reminder:Name
[code]  }
 private
 // private methods
   function Name(const aCtx: TtfwContext;
    aReminder: TvgReminder): AnsiString;
     {* ���������� ����� ������� pop:Reminder:Name }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderName

// start class TkwPopReminderName

function TkwPopReminderName.Name(const aCtx: TtfwContext;
  aReminder: TvgReminder): AnsiString;
 {-}
begin
 Result := aReminder.Name;
end;//TkwPopReminderName.Name

procedure TkwPopReminderName.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushString((Name(aCtx, l_aReminder)));
end;//TkwPopReminderName.DoDoIt

class function TkwPopReminderName.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Name';
end;//TkwPopReminderName.GetWordNameForRegister

function TkwPopReminderName.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(AnsiString);
end;//TkwPopReminderName.GetResultTypeInfo

type
 TkwPopReminderFlash = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:Flash
*��� ����������:* Boolean
*������:*
[code]
 aReminder pop:Reminder:Flash
[code]  }
 private
 // private methods
   function Flash(const aCtx: TtfwContext;
    aReminder: TvgReminder): Boolean;
     {* ���������� ����� ������� pop:Reminder:Flash }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderFlash

// start class TkwPopReminderFlash

function TkwPopReminderFlash.Flash(const aCtx: TtfwContext;
  aReminder: TvgReminder): Boolean;
 {-}
begin
 Result := aReminder.Flash;
end;//TkwPopReminderFlash.Flash

procedure TkwPopReminderFlash.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushBool((Flash(aCtx, l_aReminder)));
end;//TkwPopReminderFlash.DoDoIt

class function TkwPopReminderFlash.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Flash';
end;//TkwPopReminderFlash.GetWordNameForRegister

function TkwPopReminderFlash.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Boolean);
end;//TkwPopReminderFlash.GetResultTypeInfo

type
 TkwPopReminderTextBackColor = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:TextBackColor
*��� ����������:* String
*������:*
[code]
 aReminder pop:Reminder:TextBackColor
[code]  }
 private
 // private methods
   function TextBackColor(const aCtx: TtfwContext;
    aReminder: TvgReminder): AnsiString;
     {* ���������� ����� ������� pop:Reminder:TextBackColor }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderTextBackColor

// start class TkwPopReminderTextBackColor

function TkwPopReminderTextBackColor.TextBackColor(const aCtx: TtfwContext;
  aReminder: TvgReminder): AnsiString;
//#UC START# *C4047A8567A8_4910B3AB2F0F_var*
//#UC END# *C4047A8567A8_4910B3AB2F0F_var*
begin
//#UC START# *C4047A8567A8_4910B3AB2F0F_impl*
 Result := aReminder.vgTextRect.Fill.Color;
//#UC END# *C4047A8567A8_4910B3AB2F0F_impl*
end;//TkwPopReminderTextBackColor.TextBackColor

procedure TkwPopReminderTextBackColor.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushString((TextBackColor(aCtx, l_aReminder)));
end;//TkwPopReminderTextBackColor.DoDoIt

class function TkwPopReminderTextBackColor.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:TextBackColor';
end;//TkwPopReminderTextBackColor.GetWordNameForRegister

function TkwPopReminderTextBackColor.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(AnsiString);
end;//TkwPopReminderTextBackColor.GetResultTypeInfo

type
 TkwPopReminderShowHint = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:ShowHint
*��� ����������:* Boolean
*������:*
[code]
 aReminder pop:Reminder:ShowHint
[code]  }
 private
 // private methods
   function ShowHint(const aCtx: TtfwContext;
    aReminder: TvgReminder): Boolean;
     {* ���������� ����� ������� pop:Reminder:ShowHint }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderShowHint

// start class TkwPopReminderShowHint

function TkwPopReminderShowHint.ShowHint(const aCtx: TtfwContext;
  aReminder: TvgReminder): Boolean;
 {-}
begin
 Result := aReminder.ShowHint;
end;//TkwPopReminderShowHint.ShowHint

procedure TkwPopReminderShowHint.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushBool((ShowHint(aCtx, l_aReminder)));
end;//TkwPopReminderShowHint.DoDoIt

class function TkwPopReminderShowHint.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:ShowHint';
end;//TkwPopReminderShowHint.GetWordNameForRegister

function TkwPopReminderShowHint.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Boolean);
end;//TkwPopReminderShowHint.GetResultTypeInfo

type
 TkwPopReminderCaption = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:Caption
*��� ����������:* Il3CString
*������:*
[code]
 aReminder pop:Reminder:Caption
[code]  }
 private
 // private methods
   function Caption(const aCtx: TtfwContext;
    aReminder: TvgReminder): Il3CString;
     {* ���������� ����� ������� pop:Reminder:Caption }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderCaption

// start class TkwPopReminderCaption

function TkwPopReminderCaption.Caption(const aCtx: TtfwContext;
  aReminder: TvgReminder): Il3CString;
 {-}
begin
 Result := aReminder.Caption;
end;//TkwPopReminderCaption.Caption

procedure TkwPopReminderCaption.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushString((Caption(aCtx, l_aReminder)));
end;//TkwPopReminderCaption.DoDoIt

class function TkwPopReminderCaption.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Caption';
end;//TkwPopReminderCaption.GetWordNameForRegister

function TkwPopReminderCaption.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := @tfw_tiString;
end;//TkwPopReminderCaption.GetResultTypeInfo

type
 TkwPopReminderHint = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:Hint
*��� ����������:* Il3CString
*������:*
[code]
 aReminder pop:Reminder:Hint
[code]  }
 private
 // private methods
   function Hint(const aCtx: TtfwContext;
    aReminder: TvgReminder): Il3CString;
     {* ���������� ����� ������� pop:Reminder:Hint }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderHint

// start class TkwPopReminderHint

function TkwPopReminderHint.Hint(const aCtx: TtfwContext;
  aReminder: TvgReminder): Il3CString;
 {-}
begin
 Result := aReminder.Hint;
end;//TkwPopReminderHint.Hint

procedure TkwPopReminderHint.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushString((Hint(aCtx, l_aReminder)));
end;//TkwPopReminderHint.DoDoIt

class function TkwPopReminderHint.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:Hint';
end;//TkwPopReminderHint.GetWordNameForRegister

function TkwPopReminderHint.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := @tfw_tiString;
end;//TkwPopReminderHint.GetResultTypeInfo

type
 TkwPopReminderPopupForm = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:Reminder:PopupForm
*��� ����������:* TvtPopupFormModelPart
*������:*
[code]
 aReminder pop:Reminder:PopupForm
[code]  }
 private
 // private methods
   function PopupForm(const aCtx: TtfwContext;
    aReminder: TvgReminder): TvtPopupFormModelPart;
     {* ���������� ����� ������� pop:Reminder:PopupForm }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopReminderPopupForm

// start class TkwPopReminderPopupForm

function TkwPopReminderPopupForm.PopupForm(const aCtx: TtfwContext;
  aReminder: TvgReminder): TvtPopupFormModelPart;
 {-}
begin
 Result := aReminder.PopupForm;
end;//TkwPopReminderPopupForm.PopupForm

procedure TkwPopReminderPopupForm.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aReminder : TvgReminder;
begin
 try
  l_aReminder := TvgReminder(aCtx.rEngine.PopObjAs(TvgReminder));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aReminder: TvgReminder : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushObj((PopupForm(aCtx, l_aReminder)));
end;//TkwPopReminderPopupForm.DoDoIt

class function TkwPopReminderPopupForm.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Reminder:PopupForm';
end;//TkwPopReminderPopupForm.GetWordNameForRegister

function TkwPopReminderPopupForm.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(TvtPopupFormModelPart);
end;//TkwPopReminderPopupForm.GetResultTypeInfo
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene

initialization
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_Click
 TkwPopReminderClick.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_Move
 TkwPopReminderMove.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_FindEditor
 TkwPopReminderFindEditor.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_GetPopupMenu
 TkwPopReminderGetPopupMenu.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_ImageIndex
 TkwPopReminderImageIndex.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_UserType
 TkwPopReminderUserType.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_IsBaloonVisible
 TkwPopReminderIsBaloonVisible.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_Visible
 TkwPopReminderVisible.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_Name
 TkwPopReminderName.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_Flash
 TkwPopReminderFlash.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_TextBackColor
 TkwPopReminderTextBackColor.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_ShowHint
 TkwPopReminderShowHint.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_Caption
 TkwPopReminderCaption.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_Hint
 TkwPopReminderHint.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� pop_Reminder_PopupForm
 TkwPopReminderPopupForm.RegisterInEngine;
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� TtfwContext
 TtfwTypeRegistrator.RegisterType(@tfw_tiStruct);
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� TvgReminder
 TtfwTypeRegistrator.RegisterType(TypeInfo(TvgReminder));
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� TPoint
 TtfwTypeRegistrator.RegisterType(@tfw_tiStruct);
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� TComponent
 TtfwTypeRegistrator.RegisterType(TypeInfo(TComponent));
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� TMenuItem
 TtfwTypeRegistrator.RegisterType(TypeInfo(TMenuItem));
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� Integer
 TtfwTypeRegistrator.RegisterType(TypeInfo(Integer));
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� Boolean
 TtfwTypeRegistrator.RegisterType(TypeInfo(Boolean));
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� String
 TtfwTypeRegistrator.RegisterType(TypeInfo(AnsiString));
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� Il3CString
 TtfwTypeRegistrator.RegisterType(@tfw_tiString);
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene
{$If not defined(NoScripts) AND not defined(NoVCM) AND not defined(NoVGScene)}
// ����������� ���� TvtPopupFormModelPart
 TtfwTypeRegistrator.RegisterType(TypeInfo(TvtPopupFormModelPart));
{$IfEnd} //not NoScripts AND not NoVCM AND not NoVGScene

end.