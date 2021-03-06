unit tfwNewWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$Core"
// �����: ����� �.�.
// ������: "tfwNewWord.pas"
// �����: 28.09.2011 22:50
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi Low Level::ScriptEngine$Core::CompiledWords::TtfwNewWord
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  l3Interfaces,
  tfwScriptingInterfaces,
  tfwCompilingWord,
  kwCompiledWordPrim
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwNewWord = {abstract} class(TtfwCompilingWord)
 protected
 // overridden protected methods
   procedure BeforeCompile(var theNewContext: TtfwContext); override;
   procedure AfterCompile(var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWordPrim); override;
 protected
 // protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWordPrim;
     const aContext: TtfwContext); virtual;
     {* ��������� ����������� ����� ���������� ����� }
   function GetNewWordName(const aContext: TtfwContext): Il3CString; virtual;
 end;//TtfwNewWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3String,
  l3Parser,
  kwForwardDeclaration
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TtfwNewWord

procedure TtfwNewWord.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWordPrim;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4DB9B6D20168_var*
//#UC END# *4F219629036A_4DB9B6D20168_var*
begin
//#UC START# *4F219629036A_4DB9B6D20168_impl*
 aWordToFinish.SetWord(aContext, aCompiled);
//#UC END# *4F219629036A_4DB9B6D20168_impl*
end;//TtfwNewWord.FinishDefinitionOfNewWord

function TtfwNewWord.GetNewWordName(const aContext: TtfwContext): Il3CString;
//#UC START# *4F37B3F10318_4DB9B6D20168_var*
//#UC END# *4F37B3F10318_4DB9B6D20168_var*
begin
//#UC START# *4F37B3F10318_4DB9B6D20168_impl*
 aContext.rParser.NextToken;
 CompilerAssert(aContext.rParser.TokenType <> l3_ttInteger, '����� �������������� ������', aContext);
 Result := aContext.rParser.TokenLongString;
//#UC END# *4F37B3F10318_4DB9B6D20168_impl*
end;//TtfwNewWord.GetNewWordName

procedure TtfwNewWord.BeforeCompile(var theNewContext: TtfwContext);
//#UC START# *4DB6CDDA038B_4DB9B6D20168_var*

 function locName : AnsiString;
 begin//locName
  if (theNewContext.rWordCompilingNow.WordProducer <> nil) then
   Result := theNewContext.rWordCompilingNow.WordProducer.Key.AsString
  else 
  if (Self.Key <> nil) then
   Result := Self.Key.AsString
  else
   Result := '';
 end;//locName

var
 l_N : Il3CString;
 l_W : TtfwKeyWord;
 l_Stereotype : AnsiString;
 l_Stereotype2 : AnsiString;
 l_C : TtfwNewWordDefinitor;
 l_CanBeMerged : Boolean;
 l_IsRedefinition : Boolean;
//#UC END# *4DB6CDDA038B_4DB9B6D20168_var*
begin
//#UC START# *4DB6CDDA038B_4DB9B6D20168_impl*
 inherited;
 l_N := theNewContext.rPrev^.rNewWordName;
 if l3IsNil(l_N) then
  l_N := GetNewWordName(theNewContext.rPrev^)
 else
  theNewContext.rPrev^.rNewWordName := nil;
 CompilerAssert(theNewContext.rPrev.rCompiler <> nil, '����� ���������� �����', theNewContext);
 l_C := theNewContext.rPrev.rCompiler.NewWordDefinitor;
 l_W := l_C.CheckWord(l_N);
 l_CanBeMerged := false;
 l_IsRedefinition := theNewContext.rPrev.rTypeInfo.Has(tfw_wmRedefinition);
 if l_IsRedefinition then
 begin
  if theNewContext.rEngine.CascadeDict then
  // - ����� ���� ������������ ������ �������� � ������
  begin
   CompilerAssert(l_W.Word <> nil, '��� ����� ��� ���������������', theNewContext);
   CompilerAssert(not l_W.Word.IsForwardDeclaration, '������ �������������� ��������������� ��������', theNewContext);
  end;//theNewContext.rEngine.CascadeDict
 end;//l_IsRedefinition
 if (l_W.Word <> nil) AND not l_W.Word.IsForwardDeclaration then
 begin
  if l_IsRedefinition then
  // - ��� ���������������
  begin
   l_CanBeMerged := true;
   theNewContext.rWordCompilingNow.Redefines := l_W.Word;
  end//theNewContext.rPrev.rTypeInfo.Has(tfw_wmRedefinition)
  else
  begin
   l_Stereotype := locName;
   CompilerAssertFmt(l_Stereotype <> '',
                     '�� ����� ��������� � �������������� �������� %s: %s (%s)',
                     [
                      l_W.AsString,
                      l_W.Word.ClassName,
                      l_W.ClassName
                     ],
                     theNewContext.rPrev^);
   if (l_W.Word.WordProducer <> nil) then
   begin
    l_StereoType2 := l_W.Word.WordProducer.Key.AsString;
    if (l_Stereotype = l_StereoType2) then
    begin
     if l_W.Word.ResultTypeInfo[theNewContext].Has(tfw_wmCanBeMerged) then
      l_CanBeMerged := true
     else
      CompilerAssertFmt(false,
                        '��������� ���������� %s � %s', [l_Stereotype, l_StereoType2],
                        theNewContext.rPrev^);
    end;//l_Stereotype = l_StereoType2
   end;//l_W.Word.WordProducer
   // - ������� ��������, �� ��� hResult � HResult - �� �������� !!!
   if l_CanBeMerged then
   begin
    l_W.Word.SetRefTo(theNewContext.rWordCompilingNow);
    // - ��������� ������� ������������� �����
    theNewContext.rCompiler := theNewContext.rWordCompilingNow.GetCompiler(theNewContext.rPrev^);
    // - ��������� ����������
   end//tfw_wmCanBeMerged in l_W.Word.Modifiers
   else
   begin
    l_N := TtfwCStringFactory.C(l3Cat(l_N, '$' + l_Stereotype));
    // - ���������� ��� ���������� � ����� �������� � ����� ������� �������� ��������� ��������
    //   ��� ��� ����, ����� ��������� ��������� ��, ��� ������ �� ����
    l_W := l_C.CheckWord(l_N);
   end;//tfw_wmCanBeMerged in l_W.Word.Modifiers
  end;//theNewContext.rPrev.rTypeInfo.Has(tfw_wmRedefinition)
 end;//l_W.Word <> nil
 theNewContext.rKeyWordCompilingNow := l_W;
 theNewContext.rKeyWordDefiningNow := l_W;
 theNewContext.rWordDefiningNow := theNewContext.rWordCompilingNow;
 if not l_CanBeMerged then
 begin
  if (l_W.Word <> nil) then
  begin
   if l_W.Word.IsForwardDeclaration then
   begin
    if (TkwForwardDeclaration(l_W.Word).RealWord <> nil) then
     CompilerAssertFmt(false,
                       '��������������� ����������� ����� %s: %s/%s (%s) ��� ���� ���������',
                       [
                        l_W.AsString,
                        l_W.Word.ClassName,
                        TkwForwardDeclaration(l_W.Word).RealWord.ClassName,
                        l_W.ClassName
                       ],
                       theNewContext.rPrev^)
   end//l_W.Word.IsForwardDeclaration
   else
    CompilerAssertFmt(false,
                      '����� %s: %s (%s) ��� ���� � �������',
                      [
                       l_W.AsString,
                       l_W.Word.ClassName,
                       l_W.ClassName
                      ],
                      theNewContext.rPrev^);
  end;//l_W.Word <> nil
 end;//l_CanBeMerged 
//#UC END# *4DB6CDDA038B_4DB9B6D20168_impl*
end;//TtfwNewWord.BeforeCompile

procedure TtfwNewWord.AfterCompile(var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWordPrim);
//#UC START# *4DB6CE2302C9_4DB9B6D20168_var*
//#UC END# *4DB6CE2302C9_4DB9B6D20168_var*
begin
//#UC START# *4DB6CE2302C9_4DB9B6D20168_impl*
 FinishDefinitionOfNewWord(theNewContext.rKeyWordCompilingNow, aCompiled, theNewContext{.rPrev^});
 theNewContext.rPrev^.rTypeInfo := TtfwWordInfoE.Instance;
 // - ���������� ������������
 inherited;
//#UC END# *4DB6CE2302C9_4DB9B6D20168_impl*
end;//TtfwNewWord.AfterCompile

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TtfwNewWord
 TtfwNewWord.RegisterClass;
{$IfEnd} //not NoScripts

end.