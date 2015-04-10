unit kwMain;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwMain.pas"
// �����: 10.05.2011 13:49
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::TkwMain
//
// ��������� ��������� ���� �������.
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
  kwCompiledWord,
  l3Interfaces,
  l3ParserInterfaces,
  kwCompiledWordPrim,
  tfwRegisterableWord,
  tfwValueStack,
  tfwStreamFactory,
  tfwParserInterfaces {a},
  l3Variant
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 IDlgInitListner = interface(IUnknown)
   ['{07616FB4-3E14-45AB-BD51-86D8D3D17ACE}']
   procedure Init(const aCode: TObject;
    aContext: Pointer);
 end;//IDlgInitListner

 {$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}
 _tfwScriptEngine_Parent_ = _tfwCompilingWord_;
 {$Include ..\ScriptEngine\tfwScriptEngine.imp.pas}
 TkwMain = class(_tfwScriptEngine_, IDlgInitListner)
  {* ��������� ��������� ���� �������. }
 private
 // private fields
   f_Compiled : TkwCompiledWord;
    {* ��������������� ���}
 private
 // private methods
   procedure CompileScriptToAxiomatics(const aContext: TtfwContext;
     const aScriptCode: array of AnsiString);
     {* ����������� ����� � ����������� }
   procedure CompileScriptToAxiomaticsIfDefined(const aContext: TtfwContext;
     const aDefined: array of AnsiString;
     const aScriptCode: array of AnsiString);
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext;
     aSilent: Boolean): RtfwWord; override;
   procedure Init(const aCode: TObject;
     aContext: Pointer);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
   procedure BeforeCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext); override;
   procedure AfterCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWordPrim); override;
   function CompiledWordClass(const aCtx: TtfwContext): RkwCompiledWordPrim; override;
   function AcceptsEOF: Boolean; override;
   class function ReallyNeedRegister: Boolean; override;
 public
 // overridden public methods
   procedure Script(aStream: TtfwStreamFactory;
     const aCaller: ItfwScriptCaller); override;
 public
 // public methods
   procedure RunCompiled(const aContext: TtfwContext);
 end;//TkwMain
{$IfEnd} //not NoScripts

  {$If not defined(NoScripts)}
var
   g_ScriptEngine : TkwMain;
  {$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwSystemIncluded,
  l3Memory,
  l3_String,
  SysUtils,
  l3String,
  l3Chars,
  l3Base,
  l3Stream,
  l3Types,
  kwCompiledMain,
  seThreadSupport,
  kwEtalonNeedsComputerName,
  kwEtalonNeedsXE,
  kwEtalonNeedsOSName,
  kwEtalonNeeds64,
  tfwFileStreamFactory,
  tfwCOMStreamFactory,
  tfwStringStreamFactory,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  kwIntegerFactory,
  kwStringFactory,
  StrUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  l3StringList,
  tfwParser,
  l3Filer,
  tfwStoredValuesStack,
  seWordsInfo
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwMain;

{$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}

{$Include ..\ScriptEngine\tfwScriptEngine.imp.pas}

// start class TkwMain

procedure TkwMain.CompileScriptToAxiomatics(const aContext: TtfwContext;
  const aScriptCode: array of AnsiString);
//#UC START# *5282326A0233_4DC90A1E03C2_var*
var
 l_String : Tl3_String;
 l_Index : Integer;
 l_Stream : TtfwStringStreamFactory;
 l_SI : TkwSystemIncluded;
//#UC END# *5282326A0233_4DC90A1E03C2_var*
begin
//#UC START# *5282326A0233_4DC90A1E03C2_impl*
 l_String := Tl3_String.Create;
 try
  for l_Index := Low(aScriptCode) to High(aScriptCode) do
  begin
   l_String.Append(l3PCharLen(aScriptCode[l_Index]));
   l_String.Append(cc_EOLStr);
  end;//for l_Index
  l_Stream := TtfwStringStreamFactory.Create(l_String.AsString);
  try
   l_SI := TkwSystemIncluded.Create(l_Stream);
   try
    l_SI.DoIt(aContext);
   finally
    FreeAndNil(l_SI);
   end;//try..finally
  finally
   FreeAndNil(l_Stream);
  end;//try..finally
 finally
  FreeAndNil(l_String);
 end;//try..finally
//#UC END# *5282326A0233_4DC90A1E03C2_impl*
end;//TkwMain.CompileScriptToAxiomatics

procedure TkwMain.CompileScriptToAxiomaticsIfDefined(const aContext: TtfwContext;
  const aDefined: array of AnsiString;
  const aScriptCode: array of AnsiString);
//#UC START# *5293232E0291_4DC90A1E03C2_var*
var
 l_Index : Integer;
//#UC END# *5293232E0291_4DC90A1E03C2_var*
begin
//#UC START# *5293232E0291_4DC90A1E03C2_impl*
 for l_Index := Low(aDefined) to High(aDefined) do
  if (aContext.rEngine.As_ItfwKeywordFinder.KeywordByName[TtfwCStringFactory.C(aDefined[l_Index])] = nil) then
   // - ���� �� ���� �� ���������� - ������ ������������� ������
   Exit;
 CompileScriptToAxiomatics(aContext, aScriptCode);
//#UC END# *5293232E0291_4DC90A1E03C2_impl*
end;//TkwMain.CompileScriptToAxiomaticsIfDefined

procedure TkwMain.RunCompiled(const aContext: TtfwContext);
//#UC START# *4DC90A79006D_4DC90A1E03C2_var*
//#UC END# *4DC90A79006D_4DC90A1E03C2_var*
begin
//#UC START# *4DC90A79006D_4DC90A1E03C2_impl*
 kwEtalonNeedsComputerName.g_EtalonNeedsComputerName := false;
 kwEtalonNeedsOSName.g_EtalonNeedsOSName := false;
 kwEtalonNeedsXE.g_EtalonNeedsXE := false;
 kwEtalonNeeds64.g_EtalonNeeds64 := false;
 RunnerAssert(f_Compiled <> nil, '��� ������', aContext);
 try
  f_Compiled.DoIt(aContext);
 finally
  if TseWorkThreadList.WasInit then
   TseWorkThreadList.Instance.WaitForAllThreads;
 end;
//#UC END# *4DC90A79006D_4DC90A1E03C2_impl*
end;//TkwMain.RunCompiled

function TkwMain.EndBracket(const aContext: TtfwContext;
  aSilent: Boolean): RtfwWord;
//#UC START# *4DB6C99F026E_4DC90A1E03C2_var*
//#UC END# *4DB6C99F026E_4DC90A1E03C2_var*
begin
//#UC START# *4DB6C99F026E_4DC90A1E03C2_impl*
 Result := nil;
//#UC END# *4DB6C99F026E_4DC90A1E03C2_impl*
end;//TkwMain.EndBracket

procedure TkwMain.Init(const aCode: TObject;
  aContext: Pointer);
//#UC START# *4E4B9AE20283_4DC90A1E03C2_var*
var
 l_Ctx  : TtfwContext;
//#UC END# *4E4B9AE20283_4DC90A1E03C2_var*
begin
//#UC START# *4E4B9AE20283_4DC90A1E03C2_impl*
 l_Ctx.rEngine := Self;
 l_Ctx.rCaller := ItfwScriptCaller(aContext);
 l_Ctx.rParser := nil;//l_P;
 l_Ctx.rCompiler := nil;                                    
 l_Ctx.rException := nil;
 l_Ctx.rUsed := nil;//l_Used;
 l_Ctx.rTypeInfo := TtfwTypeInfo_E;
 l_Ctx.rScriptFileName := f_ScriptFileName;
 (aCode as TtfwWord).DoIt(l_Ctx);
//#UC END# *4E4B9AE20283_4DC90A1E03C2_impl*
end;//TkwMain.Init

procedure TkwMain.Cleanup;
//#UC START# *479731C50290_4DC90A1E03C2_var*
//#UC END# *479731C50290_4DC90A1E03C2_var*
begin
//#UC START# *479731C50290_4DC90A1E03C2_impl*
 FreeAndNil(f_Compiled);
 inherited;
//#UC END# *479731C50290_4DC90A1E03C2_impl*
end;//TkwMain.Cleanup

procedure TkwMain.BeforeCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext);
//#UC START# *4DB6CDDA038B_4DC90A1E03C2_var*
var
 l_S  : IStream;
 l_SI : TkwSystemIncluded;
 l_SystemFilename : AnsiString;
 l_NS             : TtfwFileStreamFactory;
 l_CS             : TtfwCOMStreamfactory;
//#UC END# *4DB6CDDA038B_4DC90A1E03C2_var*
begin
//#UC START# *4DB6CDDA038B_4DC90A1E03C2_impl*
 inherited;
 if not TtfwAutoregisteredDiction.Instance.AllAxiomaticsDefined then
 try
  CompileScriptToAxiomatics(aPrevContext, [
   'NamedWordProducer %INHERITS %G',
   ' // - ������ �������������� ���������',

   'WordAlias ITERATE Iterate',
   'WordAlias WordWorker WORDWORKER',

   'WordAlias operator OPERATOR',

//   'VOID operator :=',
   'operator :=',
// - ���� ���, ����� ����������� @ XXX -> A := 1024 - �� ��������, �.�. XXX ��������� �� ����� ��� � ��������� := � ����������� �������� �����   
   '  ^@ IN aLeft',
   '  ^ IN aRight',
   ' aRight DO >>>^ aLeft',
   ';',

   'VOID operator ^:=',
   '  IN aLeft',
   '  ^ IN aRight',
   ' aRight DO >>>^ aLeft',
   ';',

   'operator IT ARRAY ',
   '  IN A',
   '  ^ IN aWhatToDo',
   ' aWhatToDo A ITERATE',
   '; // IT',

   'WordAlias ==> IT',

   'operator for ',
   '  ^ IN aList',
   '  ^ IN aWhatToDo',
   ' aList DO ==> ( aWhatToDo DO )',
   '; // for',

   'WordAlias CONSTANT CONST',
   'WordAlias Test PROCEDURE',
   'WordAlias ���� PROCEDURE',

   'INLINE operator then',
   '  ^ IN aWhatToThen',
   ' aWhatToThen DO',
   '; // then',

   'WordAlias ���� if',
   'WordAlias ���� if',
   'WordAlias �� then',
   'WordAlias ����� else',

   'WordAlias ������� EXIT',
   'WordAlias ������� EXIT',

   'WordAlias =:^ >>>^',
   'WordAlias =: >>>',

   'VOID operator +! ',
   '  INTEGER IN anIncrement',
   '  ^ IN aWhatToIncrement',
   '// ������:',
   '// {code}',
   '// VAR l_WinID',
   '// 5 >>> l_WinID',
   '// 1 +! l_WinID',
   '// l_WinID .',
   '// {code}',

   ' aWhatToIncrement DO anIncrement + =:^ aWhatToIncrement',
   '; // +!',

   'WordAlias =+ +!',

   'VOID operator =- ',
   '  INTEGER IN anInc',
   '  ^ IN aWhatToDecrement',
   ' aWhatToDecrement DO anInc - =:^ aWhatToDecrement',
   '; // =-',

   'VOID operator +=',
   '  ^@ IN aLeft',
   '  ^ IN aRight',
   ' aLeft DO',
   ' aRight DO',
   ' +',
   ' >>>^ aLeft',
   ';',

   'VOID operator -=',
   '  ^@ IN aLeft',
   '  ^ IN aRight',
   ' aLeft DO',
   ' aRight DO',
   ' -',
   ' >>>^ aLeft',
   ';',

   'STRING FUNCTION strings:Cat ARRAY IN anArray',
   ' // - ���������� ������ ������� �� �����',

   ' PROCEDURE DoCat STRING IN aStr1',
   '  Result := ( Result aStr1 Cat )',
   ' ; // DoCat',

   ' Result := ''''',
   ' @ DoCat anArray ITERATE',
   '; // strings:Cat',

   'VOID operator INC',
   '  ^ IN aWhatToIncrement',
   ' aWhatToIncrement DO 1 + =:^ aWhatToIncrement',
   '; // INC',

   'WordAlias ++! INC',
   'WordAlias Inc INC',

   'VOID operator DEC',
   '  ^ IN aWhatToDecrement',
   ' aWhatToDecrement DO 1 - =:^ aWhatToDecrement',
   '; // DEC',

   'WordAlias --! DEC',
   'WordAlias Dec DEC',

   'BOOLEAN FUNCTION array:HasString ARRAY IN anArray STRING IN aString',
   ' Result := false',

   '  PROCEDURE ����� STRING IN anItem',
   '   if ( anItem aString SameStr )',
   '    ( Result := true )',
   '  ; // �����',

   '  @ ����� anArray ITERATE',
   '; // array:HasString',

   'BOOLEAN FUNCTION array:HasText ARRAY IN anArray STRING IN aString',
   ' Result := false',

   '  PROCEDURE ����� STRING IN anItem',
   '   if ( anItem aString SameText )',
   '    ( Result := true )',
   '  ; // �����',

   '  @ ����� anArray ITERATE',
   '; // array:HasText',

   'INTEGER FUNCTION array:StringCount ARRAY IN anArray STRING IN aString',
   ' Result := 0',

   '  PROCEDURE ����� STRING IN anItem',
   '   if ( anItem aString SameStr )',
   '    ( ++! Result )',
   '  ; // �����',

   '  @ ����� anArray ITERATE',
   '; // array:StringCount',

   'PROCEDURE "�������� ������� ���������� � ��������"',
   ' STRING VAR l_ClassName',
   ' current:exception:ClassName >>> l_ClassName',
   ' l_ClassName .',
   ' STRING VAR l_Message',
   ' STRING VAR l_Message_out',
   ' current:exception:Message >>> l_Message',

   ' if ( l_ClassName ''EAssertionFailed'' SameText )',
   '  ( l_Message ''('' string:Split DROP >>> l_Message )',
   ' else',
   '  ( l_ClassName ''EAccessViolation'' SameText ? (',
   '     l_Message '' at '' string:Split DROP >>> l_Message',
   '    )',
   '  )',
   ' l_Message ''������� ����:'' string:Split =: l_Message_out =: l_Message',
   ' l_Message_out ''. '' string:Split =: l_Message_out DROP',
   ' l_Message l_Message_out Cat .',
   '; // "�������� ������� ���������� � ��������"',

   'PROCEDURE "��������� � ���� ���� ����������, �� ���������" IN aProc1 IN aProc2',
   ' TRY',
   '  aProc1 DO',
   ' EXCEPT',
   '  "�������� ������� ���������� � ��������"',
   '  aProc2 DO',
   ' END',
   '; // "��������� � ���� ���� ����������, �� ���������"',

   'VOID operator ����-����',
   '  ^ IN aWhatToDo',
   ' VAR l_WasException',
   ' false =: l_WasException',
   ' "��������� {(@ ( aWhatToDo DO ) )} � ���� ���� ����������, �� ��������� {(@ ( true =: l_WasException ) )}"',
   ' l_WasException',
   '  [ ''���� '' script:FileName '' ������-�� ���� ���������'' ] strings:Cat',
   '   ASSERTS',
   '; // ����-����',

   'WordAlias "���� � ��������" ����-����',

   'VOID operator "��������� ������� ����������"',
   '  ^ IN aWhatToDo',
   ' VAR l_WasException',
   ' false =: l_WasException',
   ' "��������� {(@ ( aWhatToDo DO ) )} � ���� ���� ����������, �� ��������� {(@ ( true =: l_WasException ) )}"',
   ' l_WasException',
   '  [ ''���������������� ���������� � �����: '' script:FileName '' ������-�� �� ���������'' ] strings:Cat',
   '   ASSERTS',
   '; // "��������� ������� ����������"',

   'PROCEDURE "��������� ��������� ����������" OBJECT IN aProc STRING IN anException',
   ' TRY',
   '  aProc DO',
   ' EXCEPT',
   '  current:exception:Message anException ?!= ? RAISE',
   ' END',
   '; // "��������� ��������� ����������"',

   'PROCEDURE ToDo STRING IN aString',
   ' ''To Do: '' aString Cat .',
   '; // ToDo',

   'PROCEDURE "! ���� � ����������"',
   ' script:FileName sysutils:ExtractFileName '' � ��������� ����������'' Cat ToDo',
   '; // "! ���� � ����������"',

   'PROCEDURE OnTest',
   '// - ��� ���������� ��������� �� OnTest',
   '  3 LOOP (',
   '   ProcessMessages',
   '   application:ActionIdle',
   '  )',
   '  // - ��������� ������ ���� OnTest',
   '; // OnTest',

   'WordAlias "���� ������� ��������������" OnTest',

   'PROCEDURE "������" STRING IN aString',
   ' aString key',
   ' OnTest',
   '; // "������"',

   'VOID operator "���������� Enter ��������"',
   '  ^ IN aWhatToDo',
   ' @ ( "������ {(''Enter'')}" ) MODAL ( aWhatToDo DO )',
   '; // "���������� Enter ��������"',

   {$IfNDef NoVCM}
   'CONST ANYUSERTYPE 31',
   {$EndIf  NoVCM}

   'PROCEDURE ASSUME STRING IN aStr',
   ' // �������� "�������� ���������" aStr � ����������� ����������',
   ' // http://mdp.garant.ru/pages/viewpage.action?pageId=236719181 �44',
   '; // ASSUME',

   'PROCEDURE UNASSUME STRING IN aStr',
   ' // ��������� "�������� ���������" aStr � ����������� ����������',
   ' // http://mdp.garant.ru/pages/viewpage.action?pageId=236719181 �44',
   '; // UNASSUME',

   'BOOLEAN FUNCTION ArraysAreEqual ARRAY IN A ARRAY IN B',
   ' A IsArray ''��� ������?'' ASSERTS',
   ' B IsArray ''��� ������?'' ASSERTS',
   ' CONST l_Exception ''������� �� ���������''',
   ' INTEGER VAR l_Index',
   ' l_Index := 0',
   ' INTEGER VAR l_Count',
   ' l_Count := ( A array:Count )',

   '   PROCEDURE DoWithItem IN B[i]',
   '    if ( l_Index A [i] B[i] ?== ) then',
   '     ++! l_Index',
   '    else',
   '    (',
   '     Result := false',
   '     l_Exception RAISE',
   '    )',
   '   ;',

   ' if ( l_Count B array:Count ?!= ) then',
   ' (',
   '  Result := false',
   '  EXIT',
   ' )',
   ' TRY',
   '  @ DoWithItem B ITERATE',
   ' Result := true',
   ' EXCEPT',
   '  if ( current:exception:Message l_Exception ?!= ) then',
   '   RAISE',
   ' END',
   '; // ArraysAreEqual',

   'BOOLEAN operator AND BOOLEAN',
   '  IN aFirst',
   '  ^ IN aSecond',
   ' // ������������, � �� �������� �������� &&',
   ' if aFirst then',
   '  (',
   '   if ( aSecond DO ) then',
   '    ( Result := true )',
   '   else',
   '    ( Result := false )',
   '   )',
   ' else',
   '  ( Result := false )',
   '; // AND',

   'WordAlias � AND',

   'BOOLEAN operator OR BOOLEAN',
   '  IN aFirst',
   '  ^ IN aSecond',
   ' // ������������, � �� �������� �������� ||',
   ' if aFirst then',
   '  ( Result := true )',
   ' else',
   '  if ( aSecond DO ) then',
   '   ( Result := true )',
   '  else',
   '   ( Result := false )',
   '; // OR',

   'WordAlias ��� OR',

   'BOOLEAN operator NOT',
   '  ^ IN aWhatToNot',
   ' // ��������������, � �� �������� �������� !',
   ' Result := ( aWhatToNot DO ! )',
   '; // NOT',

   'WordAlias �� NOT',

   'BOOLEAN operator =',
   '  IN aLeft',
   '  ^ IN aRight',
   ' // ��������������, � �� �������� �������� ==',
   ' // ������ � ���������� � ���������!',

   '//1 ����� 1  . - True',
   '//[ 10 20 ] ����� ( 10 20 ) . - True',
   '//[ 10 20 ] ����� ( [ 10 20 ] ) . - True',
   '//[ 10 ] ����� ( [ 10 ] ) . - True',
   '//[ 10 ] ����� ( 10 ) . - True',
   '//[ 10 ] ����� ( 20 ) . - False',
 
   ' ARRAY VAR l_Right',
   ' l_Right := ( [ aRight DO ] )',
   ' TRY',
   '  if ( aLeft IsArray ) then',
   '  (',
   '   if',
   '    (',
   '     ( l_Right IsArray ) �',
   '     ( l_Right array:Count 1 == ) �',
   '     ( 0 l_Right [i] IsArray )',
   '    )',
   '   then',
   '   (',
   '    Result := ( aLeft 0 l_Right [i] ArraysAreEqual )',
   '   )',
   '   else',
   '   (',
   '    Result := ( aLeft l_Right ArraysAreEqual )',
   '   )',
   '  )',
   '  else',
   '  (',
   '   if ( l_Right array:Count 1 == ) then',
   '   (',
   '    Result := ( aLeft 0 l_Right [i] ?== )',
   '   )',
   '   else',
   '   (',
   '    Result := false',
   '   )',
   '  )',
   ' FINALLY',
   '  l_Right := ( [ ] )',
   '  aLeft := nil',
   ' END',
   '; //=',
 
   'WordAlias ����� =',

   'BOOLEAN operator <>',
   '  IN aLeft',
   '  ^ IN aRight',
   ' // ��������������, � �� �������� �������� !=',
   ' Result := ( aLeft aRight DO ?!= )',
   '; //<>',

   'WordAlias ������� <>',
   'WordAlias "�� �����" �������',
 
   'BOOLEAN operator >',
   '  IN aLeft',
   '  ^ IN aRight',
   ' Result := ( aLeft aRight DO GREATER )',
   ';',

   'WordAlias ������ >',
 
   'BOOLEAN operator <',
   '  IN aLeft',
   '  ^ IN aRight',
   ' Result := ( aLeft aRight DO LESS )',
   ';',

   'WordAlias ������ <',
 
   'BOOLEAN operator >=',
   '  IN aLeft',
   '  ^ IN aRight',
   ' Result := ( aLeft aRight DO LESS ! )',
   ';',

   'WordAlias "������ ��� �����" >=',
 
   'BOOLEAN operator <=',
   '  IN aLeft',
   '  ^ IN aRight',
   ' Result := ( aLeft aRight DO GREATER ! )',
   ';',

   'WordAlias "������ ��� �����" <=',
 
   'BOOLEAN operator IS',
   '  CLASS OBJECT IN anObj',
   '  ^ IN aClass',
   ' STRING CLASS VAR l_Class',
   ' l_Class := ( aClass DO )',
   ' if ( anObj IsClass ) then',
   '  ( Result := ( l_Class anObj pop:class:Inherits ) )',
   ' else',
   '  ( Result := ( l_Class anObj pop:object:Inherits ) )',
   ';',

   'WordAlias �������� IS',
   'WordAlias Is IS',

   'BOOLEAN operator NOTIS',
   '  CLASS OBJECT IN anObj',
   '  ^ IN aClass',
   ' Result := NOT ( anObj Is ( aClass DO ) )',
   ';',

   'WordAlias NotIs NOTIS',
   'WordAlias ���������� NOTIS',
   'WordAlias "�� ��������" ����������',

   'operator WHILE',
   '  ^ IN aCondition',
   '  ^ IN aWhatToDo',
   ' @ ( aCondition DO ) WHILEDO ( aWhatToDo DO )',
   ';',

   'WordAlias ���� WHILE',
   'WordAlias while WHILE',

   'WordAlias �� true',

   'WordAlias ��� false',

   'BOOLEAN operator "� ���������"',
   '  INTEGER IN aValue',
   '  ^ IN anInterval',
   ' INTEGER VAR "������ ��������"',
   ' INTEGER VAR "������� ��������"',
   ' ( anInterval DO )',
   ' >>> "������� ��������"',
   ' >>> "������ ��������"',
   ' Result := ( ( aValue "������ ��� �����" "������ ��������" )',
   ' � ( aValue "������ ��� �����" "������� ��������" ) )',
   ';'

   {$IfDef Nemesis}
   {$IfNDef Admin}
   ,
   // http://mdp.garant.ru/pages/viewpage.action?pageId=284164589
   'CONST LLO_AND 1',
   'CONST LLO_OR 2',
   'CONST LLO_AND_NOT 3',
   'CONST LLO_NONE 4'
   // http://mdp.garant.ru/pages/viewpage.action?pageId=284164589
   {$EndIf  Admin}

   ,
   'PROCEDURE "�������� ����� ���� ��������"',
   ' 3 LOOP OnTest',
   ' 200 SLEEP',
   ' 3 LOOP OnTest',
   ' // - ��� ��������� ��-�� ������� ���� ��������',
   ' // http://mdp.garant.ru/pages/viewpage.action?pageId=296627734',
   ';',

   'WordAlias "��������� ������������ �������" "�������� ����� ���� ��������"',

   'CONST fsNormal 0',
   'CONST fsMDIChild 1',
   'CONST fsMDIForm 2',
   'CONST fsStayOnTop 3'
   {$EndIf Nemesis}

  ]);

  {$IfNDef NoVCM}
  CompileScriptToAxiomaticsIfDefined(aPrevContext,
  ['vcm:History:DeleteBackItem'],
  [
   'WordAlias history:DeleteBackItem vcm:History:DeleteBackItem'
  ]);

  CompileScriptToAxiomaticsIfDefined(aPrevContext,
  ['vcm:History:DeleteForwardItem'],
  [
   'WordAlias history:DeleteForwardItem vcm:History:DeleteForwardItem'
  ]);


  CompileScriptToAxiomaticsIfDefined(aPrevContext,
  ['���::�����_�����_�������������_�������', 'Ok', 'history:DeleteBackItem'],
  [
   'PROCEDURE RunInpharmSearch OBJECT IN aProc',
   ' // - ��������� ����� �� �� �������',
   ' ���::�����_�����_�������������_�������',
   ' aProc DO',
   ' Ok',
   ' OnTest',
   ' history:DeleteBackItem',
   ' // - ������� ���������� ������� ������� (��)',
   '; // RunInpharmSearch'

  ]);

  CompileScriptToAxiomaticsIfDefined(aPrevContext,
  ['���_Prim'],
  [
   'PROCEDURE ���',
   ' ���_Prim',
   ' OnTest',
   '; // ���'
  ]);

  CompileScriptToAxiomaticsIfDefined(aPrevContext,
  ['���_�����������_Prim'],
  [
   'PROCEDURE "��� �����������"',
   ' ���_�����������_Prim',
   ' OnTest',
   '; // "��� �����������"'
  ]);

  CompileScriptToAxiomaticsIfDefined(aPrevContext,
  ['���_�������������_Prim'],
  [
   'PROCEDURE "��� �������������"',
   ' ���_�������������_Prim',
   ' OnTest',
   '; // "��� �������������"'
  ]);

  CompileScriptToAxiomaticsIfDefined(aPrevContext,
  ['���', 'Ok', 'history:DeleteBackItem'],
  [
   'PROCEDURE RunSearch OBJECT IN aProc',
   ' // - ��������� ����� �� �� ���',
   ' vcm:Dispatcher:Lock',
   ' TRY',
   '  ���',
   '  OBJECT VAR l_QC',
   '  focused:control:push >>> l_QC',
   '  class::TevQueryCardEditor l_QC pop:object:Inherits',
   '   ''����� �� � ��'' ASSERTS',
   '  aProc DO',
   '  Ok',
   '  OnTest',
   '  history:DeleteBackItem',
   '  // - ������� ���������� ������� ������� (��)',
   ' FINALLY',
   '  vcm:Dispatcher:Unlock',
   ' END',
   '; // RunSearch'
  ]);

  CompileScriptToAxiomaticsIfDefined(aPrevContext,
  ['���::�����������_�����_���������_����������������', '���::������_��������_����_������', 'Ok',
   'history:DeleteBackItem', 'history:DeleteForwardItem'],
  [
   'PROCEDURE RunLegislationReviewSearch OBJECT IN aProc',
   ' // - ��������� ����� �� �� ���',
   ' vcm:Dispatcher:Lock',
   ' TRY',
   '  ���::�����������_�����_���������_����������������',
   '  OBJECT VAR l_QC',
   '  BOOLEAN VAR l_NotFound',
   '  l_NotFound := false',
   '  focused:control:push >>> l_QC',
   '  class::TevQueryCardEditor l_QC pop:object:Inherits ''����� �� � ��'' ASSERTS',
   '  aProc DO',
   '  2 wait:Choice',
   '  TRY',
   '   Ok',
   '   OnTest',
   '  FINALLY',
   '   TRY',
   '    waited:? ASSERT',
   '    true >>> l_NotFound',
   '   EXCEPT',
   '    DROP',
   '    false >>> l_NotFound',
   '   END',
   '   if l_NotFound then (',
   '    ��::�������_�����',
   '    OnTest',
   '    history:DeleteForwardItem',
   '   )',
   '   else',
   '    history:DeleteBackItem',
   '  END',         
   ' FINALLY',
   '  vcm:Dispatcher:Unlock',
   ' END',
   '; // RunLegislationReviewSearch'
  ]);

  {$EndIf  NoVCM}

  CompileScriptToAxiomatics(aPrevContext, [
   {$IfDef Nemesis}

   ' CONST defNemesis 0'

   {$IfDef Admin}
   ,
   ' CONST defAdmin 1'
   {$EndIf Admin}

   {$IfDef Monitorings}
   ,
   ' CONST defPrime 2'
   {$EndIf Monitorings}

   {$IfDef Shell}
   ,
   ' CONST defF1 3'
   {$EndIf Shell}

   {$Else  Nemesis}

   {$IfDef Archi}
   ' CONST defArchi 4'
   {$Else  Archi}
   {$IfDef EverestLite}
   ' CONST defEverestLite 4'
   {$EndIf EverestLite}
   {$EndIf Archi}

   {$EndIf Nemesis}
  ]);
 finally
  TtfwAutoregisteredDiction.Instance.AllAxiomaticsDefined := true;
 end;//try..finally

 l_SystemFilename := aPrevContext.rCaller.ResolveIncludedFilePath('System.script');
 if FileExists(l_SystemFilename) then
 begin
  l_NS := TtfwFileStreamFactory.Create(l_SystemFilename);
  try
   l_SI := TkwSystemIncluded.Create(l_NS);
   try
    l_SI.DoIt(aPrevContext);
   finally
    FreeAndNil(l_SI);
   end;//try..finally
  finally
   FreeAndNil(l_NS);
  end;//try..finally
 end//FileExists(l_SystemFilename)
 else
 // - ��� ������ (��� ������ ����������), ��� � ����
 begin
  l_S := aPrevContext.rCaller.SystemDictionary;
  if (l_S <> nil) then
  begin
   l_CS := TtfwCOMStreamfactory.Create(l_S);
   try
    l_SI := TkwSystemIncluded.Create(l_CS);
    try
     l_SI.DoIt(aPrevContext);
    finally
     FreeAndNil(l_SI);
    end;//try..finally
   finally
    FreeAndNil(l_CS);
   end;//try..finally
  end;//l_S <> nil
 end;//FileExists(l_SystemFilename)
 {$IfDef Nemesis}
 {$IfDef InsiderTest}
 l_SystemFilename := aPrevContext.rCaller.ResolveIncludedFilePath('HLTCLike.script');
 if FileExists(l_SystemFilename) then
 begin
  aPrevContext.rUsed.Add(l_SystemFilename);
  l_NS := TtfwFileStreamFactory.Create(l_SystemFilename);
  try
   l_SI := TkwSystemIncluded.Create(l_NS);
   try
    l_SI.DoIt(aPrevContext);
   finally
    FreeAndNil(l_SI);
   end;//try..finally
  finally
   FreeAndNil(l_NS);
  end;//try..finally
 end;//FileExists(l_SystemFilename);
 {$EndIf InsiderTest}
 {$EndIf Nemesis}
//#UC END# *4DB6CDDA038B_4DC90A1E03C2_impl*
end;//TkwMain.BeforeCompile

procedure TkwMain.AfterCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWordPrim);
//#UC START# *4DB6CE2302C9_4DC90A1E03C2_var*
//#UC END# *4DB6CE2302C9_4DC90A1E03C2_var*
begin
//#UC START# *4DB6CE2302C9_4DC90A1E03C2_impl*
 aCompiled.SetRefTo(f_Compiled);
 inherited;
//#UC END# *4DB6CE2302C9_4DC90A1E03C2_impl*
end;//TkwMain.AfterCompile

function TkwMain.CompiledWordClass(const aCtx: TtfwContext): RkwCompiledWordPrim;
//#UC START# *4DBAEE0D028D_4DC90A1E03C2_var*
//#UC END# *4DBAEE0D028D_4DC90A1E03C2_var*
begin
//#UC START# *4DBAEE0D028D_4DC90A1E03C2_impl*
 Result := TkwCompiledMain;
//#UC END# *4DBAEE0D028D_4DC90A1E03C2_impl*
end;//TkwMain.CompiledWordClass

function TkwMain.AcceptsEOF: Boolean;
//#UC START# *4DC2DEE70178_4DC90A1E03C2_var*
//#UC END# *4DC2DEE70178_4DC90A1E03C2_var*
begin
//#UC START# *4DC2DEE70178_4DC90A1E03C2_impl*
 Result := true;
//#UC END# *4DC2DEE70178_4DC90A1E03C2_impl*
end;//TkwMain.AcceptsEOF

class function TkwMain.ReallyNeedRegister: Boolean;
//#UC START# *4DC2E05B03DD_4DC90A1E03C2_var*
//#UC END# *4DC2E05B03DD_4DC90A1E03C2_var*
begin
//#UC START# *4DC2E05B03DD_4DC90A1E03C2_impl*
 Result := false;
//#UC END# *4DC2E05B03DD_4DC90A1E03C2_impl*
end;//TkwMain.ReallyNeedRegister

procedure TkwMain.Script(aStream: TtfwStreamFactory;
  const aCaller: ItfwScriptCaller);
//#UC START# *4F733B9C0064_4DC90A1E03C2_var*
var
 l_PrevScriptEngine : TkwMain;
//#UC END# *4F733B9C0064_4DC90A1E03C2_var*
begin
//#UC START# *4F733B9C0064_4DC90A1E03C2_impl*
 l_PrevScriptEngine := g_ScriptEngine;
 try
  g_ScriptEngine := Self;
  inherited Script(aStream, aCaller);
 finally
  g_ScriptEngine := l_PrevScriptEngine;
 end;//try..finally
//#UC END# *4F733B9C0064_4DC90A1E03C2_impl*
end;//TkwMain.Script

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}
{$IfEnd} //not NoScripts

end.