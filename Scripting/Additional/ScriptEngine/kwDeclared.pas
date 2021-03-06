unit kwDeclared;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwDeclared.pas"
// �����: 15.12.2011 20:43
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Basics::Declared
//
// ����������, ��� ����� ���������� � �������
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
  kwCompiledWordWorker,
  kwCompiledWordPrim,
  l3Interfaces,
  l3ParserInterfaces,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
 TkwDeclared = class(_tfwWordWorker_)
  {* ����������, ��� ����� ���������� � ������� }
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 protected
 // overridden protected methods
   function EndBracket(const aContext: TtfwContext;
     aSilent: Boolean): RtfwWord; override;
   procedure AfterCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWordPrim); override;
   procedure UnknownWord(var aContext: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwDeclared
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwTrue,
  kwFalse,
  kwTemporaryCompiledCode,
  l3Parser,
  kwCompiledWord,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  StrUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwDeclared;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwDeclared

function TkwDeclared.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4EEA2372006A_var*
//#UC END# *4DCBD67C0362_4EEA2372006A_var*
begin
//#UC START# *4DCBD67C0362_4EEA2372006A_impl*
 Result := nil;
 Assert(false);
//#UC END# *4DCBD67C0362_4EEA2372006A_impl*
end;//TkwDeclared.CompiledWorkerClass

class function TkwDeclared.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'DECLARED';
end;//TkwDeclared.GetWordNameForRegister

function TkwDeclared.EndBracket(const aContext: TtfwContext;
  aSilent: Boolean): RtfwWord;
//#UC START# *4DB6C99F026E_4EEA2372006A_var*
//#UC END# *4DB6C99F026E_4EEA2372006A_var*
begin
//#UC START# *4DB6C99F026E_4EEA2372006A_impl*
 Result := nil;
 //Assert(false);
 // - ����� ����� UnknownWord �� ������
//#UC END# *4DB6C99F026E_4EEA2372006A_impl*
end;//TkwDeclared.EndBracket

procedure TkwDeclared.AfterCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWordPrim);
//#UC START# *4DB6CE2302C9_4EEA2372006A_var*
var
 l_CPW : TtfwWord;
//#UC END# *4DB6CE2302C9_4EEA2372006A_var*
begin
//#UC START# *4DB6CE2302C9_4EEA2372006A_impl*
 if (not aCompiled.HasCode) then
  l_CPW := TkwFalse.Create
 else
 if (aCompiled.CodeCount = 1) then
  l_CPW := TkwTrue.Create
 else
  CompilerAssert(false, '������������� ��������� �����', aPrevContext);
 try 
  DoCompiledWord(l_CPW, aPrevContext);
 finally
  FreeAndNil(l_CPW);
 end;//try..finally
 //inherited;
//#UC END# *4DB6CE2302C9_4EEA2372006A_impl*
end;//TkwDeclared.AfterCompile

procedure TkwDeclared.UnknownWord(var aContext: TtfwContext);
//#UC START# *4DB6F2760023_4EEA2372006A_var*
//#UC END# *4DB6F2760023_4EEA2372006A_var*
begin
//#UC START# *4DB6F2760023_4EEA2372006A_impl*
 // - ������ �� ������, ������ ���������� �����
 //inherited;
//#UC END# *4DB6F2760023_4EEA2372006A_impl*
end;//TkwDeclared.UnknownWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.