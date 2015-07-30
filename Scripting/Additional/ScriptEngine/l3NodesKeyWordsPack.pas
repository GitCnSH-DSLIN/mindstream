unit l3NodesKeyWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$L3"
// ������: "l3NodesKeyWordsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeywordsPack::Class Shared Delphi Low Level::ScriptEngine$L3::l3SimpleNodeWords::l3NodesKeyWordsPack
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  l3Interfaces,
  l3TreeInterfaces,
  tfwScriptingInterfaces,
  tfwRegisterableWord
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  TypInfo,
  SysUtils,
  tfwTypeRegistrator
  ;

type
 TkwNodeIsFirst = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� Node:IsFirst
[panel]���� ������?[panel]
*��� ����������:* Boolean
*������:*
[code]
 aNode Node:IsFirst
[code]  }
 private
 // private methods
   function IsFirst(const aCtx: TtfwContext;
    const aNode: Il3SimpleNode): Boolean;
     {* ���������� ����� ������� Node:IsFirst }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwNodeIsFirst

// start class TkwNodeIsFirst

function TkwNodeIsFirst.IsFirst(const aCtx: TtfwContext;
  const aNode: Il3SimpleNode): Boolean;
 {-}
begin
 Result := aNode.IsFirst;
end;//TkwNodeIsFirst.IsFirst

procedure TkwNodeIsFirst.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aNode : Il3SimpleNode;
begin
 try
  l_aNode := Il3SimpleNode(aCtx.rEngine.PopIntf(Il3SimpleNode));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aNode: Il3SimpleNode : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushBool((IsFirst(aCtx, l_aNode)));
end;//TkwNodeIsFirst.DoDoIt

class function TkwNodeIsFirst.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'Node:IsFirst';
end;//TkwNodeIsFirst.GetWordNameForRegister

function TkwNodeIsFirst.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Boolean);
end;//TkwNodeIsFirst.GetResultTypeInfo

type
 TkwNodeIsLast = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� Node:IsLast
[panel]���� ���������?[panel]
*��� ����������:* Boolean
*������:*
[code]
 aNode Node:IsLast
[code]  }
 private
 // private methods
   function IsLast(const aCtx: TtfwContext;
    const aNode: Il3SimpleNode): Boolean;
     {* ���������� ����� ������� Node:IsLast }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwNodeIsLast

// start class TkwNodeIsLast

function TkwNodeIsLast.IsLast(const aCtx: TtfwContext;
  const aNode: Il3SimpleNode): Boolean;
 {-}
begin
 Result := aNode.IsLast;
end;//TkwNodeIsLast.IsLast

procedure TkwNodeIsLast.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aNode : Il3SimpleNode;
begin
 try
  l_aNode := Il3SimpleNode(aCtx.rEngine.PopIntf(Il3SimpleNode));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aNode: Il3SimpleNode : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushBool((IsLast(aCtx, l_aNode)));
end;//TkwNodeIsLast.DoDoIt

class function TkwNodeIsLast.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'Node:IsLast';
end;//TkwNodeIsLast.GetWordNameForRegister

function TkwNodeIsLast.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Boolean);
end;//TkwNodeIsLast.GetResultTypeInfo

type
 TkwNodeFlags = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� Node:Flags
[panel]����� ����[panel]
*��� ����������:* Integer
*������:*
[code]
 aNode Node:Flags
[code]  }
 private
 // private methods
   function Flags(const aCtx: TtfwContext;
    const aNode: Il3SimpleNode): Integer;
     {* ���������� ����� ������� Node:Flags }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwNodeFlags

// start class TkwNodeFlags

function TkwNodeFlags.Flags(const aCtx: TtfwContext;
  const aNode: Il3SimpleNode): Integer;
 {-}
begin
 Result := aNode.Flags;
end;//TkwNodeFlags.Flags

procedure TkwNodeFlags.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aNode : Il3SimpleNode;
begin
 try
  l_aNode := Il3SimpleNode(aCtx.rEngine.PopIntf(Il3SimpleNode));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aNode: Il3SimpleNode : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushInt((Flags(aCtx, l_aNode)));
end;//TkwNodeFlags.DoDoIt

class function TkwNodeFlags.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'Node:Flags';
end;//TkwNodeFlags.GetWordNameForRegister

function TkwNodeFlags.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Integer);
end;//TkwNodeFlags.GetResultTypeInfo

type
 TkwNodeText = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� Node:Text
[panel]����� ����[panel]
*��� ����������:* Tl3WString
*������:*
[code]
 aNode Node:Text
[code]  }
 private
 // private methods
   function Text(const aCtx: TtfwContext;
    const aNode: Il3SimpleNode): Tl3WString;
     {* ���������� ����� ������� Node:Text }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwNodeText

// start class TkwNodeText

function TkwNodeText.Text(const aCtx: TtfwContext;
  const aNode: Il3SimpleNode): Tl3WString;
 {-}
begin
 Result := aNode.Text;
end;//TkwNodeText.Text

procedure TkwNodeText.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aNode : Il3SimpleNode;
begin
 try
  l_aNode := Il3SimpleNode(aCtx.rEngine.PopIntf(Il3SimpleNode));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aNode: Il3SimpleNode : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushString((Text(aCtx, l_aNode)));
end;//TkwNodeText.DoDoIt

class function TkwNodeText.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'Node:Text';
end;//TkwNodeText.GetWordNameForRegister

function TkwNodeText.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := @tfw_tiString;
end;//TkwNodeText.GetResultTypeInfo
{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� Node_IsFirst
 TkwNodeIsFirst.RegisterInEngine;
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� Node_IsLast
 TkwNodeIsLast.RegisterInEngine;
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� Node_Flags
 TkwNodeFlags.RegisterInEngine;
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� Node_Text
 TkwNodeText.RegisterInEngine;
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� TtfwContext
 TtfwTypeRegistrator.RegisterType(@tfw_tiStruct);
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� Il3SimpleNode
 TtfwTypeRegistrator.RegisterType(TypeInfo(Il3SimpleNode));
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� Boolean
 TtfwTypeRegistrator.RegisterType(TypeInfo(Boolean));
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� Integer
 TtfwTypeRegistrator.RegisterType(TypeInfo(Integer));
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� Tl3WString
 TtfwTypeRegistrator.RegisterType(@tfw_tiString);
{$IfEnd} //not NoScripts

end.