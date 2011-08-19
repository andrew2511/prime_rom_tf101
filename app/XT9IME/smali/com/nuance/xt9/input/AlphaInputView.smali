.class public Lcom/nuance/xt9/input/AlphaInputView;
.super Lcom/nuance/xt9/input/InputView;
.source "AlphaInputView.java"

# interfaces
.implements Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/AlphaInputView$PerfData;,
        Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;,
        Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;,
        Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;
    }
.end annotation


# static fields
.field private static final LAST_INPUT_BACKSPACE:I = 0x4

.field private static final LAST_INPUT_SPACE:I = 0x3

.field private static final LAST_INPUT_TAP:I = 0x1

.field private static final LAST_INPUT_TRACE:I = 0x2

.field private static final LAST_INPUT_UNDEFINED:I = 0x0

.field private static final MSG_PROFILING:I = 0x4

.field private static final RESELECT_WORD_CANDIATES_DISPLAY_THRESHOLD:I = 0x1

.field static final TAG:Ljava/lang/String; = "XT9IME.AlphaInputView"

.field private static final WORD_CANDIDATES_DISPLAY_THRESHOLD:I = 0x1


# instance fields
.field private final PROFILING:Z

.field private final PROFILING_USING_HANDLE_CHAR_METHOD:I

.field private final PROFILING_USING_HANDLE_PREDICTION_METHOD:I

.field private final PROFILING_USING_JNI_METHOD:I

.field private mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

.field private mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

.field private mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

.field protected mAutoCorrectionMode:I

.field protected mAutoPunctuationOn:Z

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private final mContextBuffer:Ljava/lang/StringBuilder;

.field mHandler:Landroid/os/Handler;

.field protected mInlineWord:Landroid/text/SpannableStringBuilder;

.field protected mKeyboardInputSuggestionOn:Z

.field private mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

.field protected mLangModel:Z

.field protected mLastInput:I

.field private mLastSelEnd:I

.field private mLastSelStart:I

.field protected mNextWordPredictionOn:Z

.field private final mRecaptureBuffer:Ljava/lang/StringBuilder;

.field protected mRecaptureOn:Z

.field private mSoundEffects:Lcom/nuance/xt9/input/SoundEffects;

.field protected mSuggestedWord:Landroid/text/SpannableStringBuilder;

.field private final mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

.field protected mTextInputPredictionOn:Z

.field protected mTraceInputSuggestionOn:Z

.field private mUpdatingInline:Z

.field protected mWordCompletionPoint:I

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;

.field protected mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 2024
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 56
    iput v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 77
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 78
    new-instance v0, Lcom/nuance/xt9/input/Int;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/Int;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    .line 85
    new-instance v0, Lcom/nuance/xt9/input/AlphaInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/AlphaInputView$1;-><init>(Lcom/nuance/xt9/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    .line 2091
    iput-boolean v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->PROFILING:Z

    .line 2094
    iput v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->PROFILING_USING_HANDLE_CHAR_METHOD:I

    .line 2097
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->PROFILING_USING_HANDLE_PREDICTION_METHOD:I

    .line 2100
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->PROFILING_USING_JNI_METHOD:I

    .line 2025
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 2028
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 56
    iput v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 77
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 78
    new-instance v0, Lcom/nuance/xt9/input/Int;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/Int;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    .line 85
    new-instance v0, Lcom/nuance/xt9/input/AlphaInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/AlphaInputView$1;-><init>(Lcom/nuance/xt9/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    .line 2091
    iput-boolean v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->PROFILING:Z

    .line 2094
    iput v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->PROFILING_USING_HANDLE_CHAR_METHOD:I

    .line 2097
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->PROFILING_USING_HANDLE_PREDICTION_METHOD:I

    .line 2100
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->PROFILING_USING_JNI_METHOD:I

    .line 2029
    return-void
.end method

.method private AddCommpoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "ic"
    .parameter "wordJustSelected"

    .prologue
    .line 1394
    if-nez p1, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1399
    .local v2, seqBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 1400
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1401
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 1403
    .local v1, index:I
    if-lez v1, :cond_0

    .line 1404
    :goto_1
    if-lez v1, :cond_2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1405
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1408
    :cond_2
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1409
    add-int/lit8 v1, v1, 0x1

    .line 1412
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, compoundWord:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-gt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isUDBShortcutSubstitutionField()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1415
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/xt9/input/AlphaInput;->addWordToUserDictionary([CI)Z

    goto :goto_0
.end method

.method private HandleDoubleTabRecapture(Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 153
    iget-object v0, p1, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;->mRecaptureBuffer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;->mRecaptureBuffer:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p1, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;->mContextBuffer:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;->mRecaptureBuffer:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->recapture(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->reselectToReplace()V

    .line 157
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isUDBShortcutSubstitutionField()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 159
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 160
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 162
    iput v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastSelStart:I

    .line 163
    iput v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastSelEnd:I

    .line 166
    :cond_0
    return-void
.end method

.method private PreloadUDBWords()V
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 2085
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/AlphaInputView;)Lcom/nuance/xt9/input/CandidatesListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/xt9/input/AlphaInputView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mUpdatingInline:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/AlphaInputView;Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->HandleDoubleTabRecapture(Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/AlphaInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->profilingWordList()V

    return-void
.end method

.method private changeContext(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "contextBuffer"

    .prologue
    .line 1523
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->breakContext()V

    .line 1529
    :goto_0
    return-void

    .line 1527
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->setContext([C)V

    goto :goto_0
.end method

.method private clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "ic"

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1776
    if-eqz p1, :cond_0

    .line 1777
    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1780
    :cond_0
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1811
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 1813
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 1814
    return-void
.end method

.method private clearedAllKeys()V
    .locals 2

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1894
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1895
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1896
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1897
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 1898
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->clearAllKeys()Z

    .line 1901
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mUpdatingInline:Z

    .line 1904
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1905
    return-void
.end method

.method private commitSuggestedWord()V
    .locals 3

    .prologue
    .line 2321
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2322
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2323
    .local v0, selectedWord:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2330
    .end local v0           #selectedWord:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2324
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2326
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 2327
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 2328
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    goto :goto_0
.end method

.method private composingState()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 775
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 776
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->current()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 779
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 776
    goto :goto_0

    :cond_1
    move v0, v2

    .line 779
    goto :goto_0
.end method

.method private endInputSession()V
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->breakContext()V

    .line 339
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->finish()V

    .line 341
    :cond_0
    return-void
.end method

.method private extractContextAndRecaptureWordsFromBeforeCursor(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "contextBuffer"
    .parameter "recapture"

    .prologue
    const/4 v4, 0x0

    .line 1454
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1455
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1457
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1459
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_2

    .line 1461
    const/16 v2, 0xc0

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1462
    .local v0, cSeq:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1464
    invoke-direct {p0, v0, p2}, Lcom/nuance/xt9/input/AlphaInputView;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 1465
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1466
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1467
    invoke-direct {p0, v0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 1471
    :cond_0
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/AlphaInputView;->isNumberAndSymbolOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1472
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1476
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->isNumberAndSymbolOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1477
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1484
    .end local v0           #cSeq:Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method private extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "seqBeforCusor"
    .parameter "word"

    .prologue
    const/4 v5, 0x1

    .line 1624
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1626
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1631
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1632
    .local v1, length:I
    sub-int v0, v1, v5

    .local v0, end:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1633
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1638
    :cond_0
    if-gez v0, :cond_3

    .line 1662
    .end local v0           #end:I
    .end local v1           #length:I
    :cond_1
    :goto_1
    return-void

    .line 1632
    .restart local v0       #end:I
    .restart local v1       #length:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1644
    :cond_3
    const/4 v3, 0x1

    .line 1645
    .local v3, valideSeq:Z
    sub-int v2, v0, v5

    .local v2, start:I
    :goto_2
    if-ltz v2, :cond_4

    .line 1646
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1656
    :cond_4
    :goto_3
    if-eqz v3, :cond_1

    .line 1657
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1649
    :cond_5
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->isValidAlphabeticChar(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1651
    const/4 v3, 0x0

    .line 1652
    goto :goto_3

    .line 1645
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private getShiftState()I
    .locals 1

    .prologue
    .line 1942
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    const/4 v0, 0x2

    .line 1949
    .end local p0
    :goto_0
    return v0

    .line 1945
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1946
    const/4 v0, 0x1

    goto :goto_0

    .line 1949
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1594
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1595
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1599
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1601
    const-string v0, "."

    .line 1603
    .local v0, autopunct:Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1605
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->sendKeyChar(C)V

    .line 1606
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0
.end method

.method private handleBackspaceDuringMultitap()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 970
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 987
    :goto_0
    return v0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->clearKey()Z

    :cond_1
    move v0, v1

    .line 983
    goto :goto_0

    .line 987
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleExplicitRecapture()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1537
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1538
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    move v4, v7

    .line 1576
    :goto_0
    return v4

    .line 1542
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v4, v5}, Lcom/nuance/xt9/input/AlphaInputView;->extractContextAndRecaptureWordsFromBeforeCursor(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1543
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1544
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    move v4, v7

    .line 1545
    goto :goto_0

    .line 1548
    :cond_2
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1549
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1550
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->recapture()V

    .line 1552
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->changeContext(Ljava/lang/CharSequence;)V

    .line 1554
    const/4 v1, 0x0

    .local v1, iCharPos:I
    :goto_1
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1556
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 1557
    .local v3, lower:C
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1559
    .local v0, arrayLower:[C
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/AlphaInput;->isSymbolUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1560
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4, v0, v6, v6}, Lcom/nuance/xt9/input/AlphaInput;->addExplicit([CII)Z

    .line 1554
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1563
    :cond_3
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4, v0, v6, v7}, Lcom/nuance/xt9/input/AlphaInput;->addExplicit([CII)Z

    goto :goto_2

    .line 1567
    .end local v0           #arrayLower:[C
    .end local v3           #lower:C
    :cond_4
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/AlphaInputView;->updateSuggestions(I)I

    move-result v4

    if-lt v4, v6, :cond_5

    .line 1568
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/nuance/xt9/input/EditState;->appendCharacterTyped(Ljava/lang/CharSequence;)V

    .line 1569
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v6

    .line 1570
    goto :goto_0

    .line 1573
    :cond_5
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1574
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 1575
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v7

    .line 1576
    goto/16 :goto_0
.end method

.method private handlePrediction(I[I)V
    .locals 10
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1689
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1690
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 1762
    :cond_0
    :goto_0
    return-void

    .line 1696
    :cond_1
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "abc"

    if-eq v5, v6, :cond_4

    invoke-static {}, Lcom/nuance/xt9/input/EditState;->canDoRecapture()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v5, :cond_4

    .line 1698
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->handleExplicitRecapture()Z

    .line 1729
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 1730
    iput v8, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 1735
    :cond_3
    const/4 v3, 0x0

    .line 1736
    .local v3, shiftState:I
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v5, :cond_8

    .line 1737
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v5}, Lcom/nuance/xt9/input/IME;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v5

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v6}, Lcom/nuance/xt9/input/IME;->isCapsLocked(Landroid/view/KeyEvent;)Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_7

    move v3, v8

    .line 1743
    :goto_2
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v6

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v3}, Lcom/nuance/xt9/input/AlphaInput;->processKey(III)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1746
    int-to-char v5, p1

    invoke-static {v5}, Lcom/nuance/xt9/input/EditState;->characterTyped(C)V

    .line 1749
    invoke-direct {p0, v8}, Lcom/nuance/xt9/input/AlphaInputView;->updateSuggestions(I)I

    .line 1752
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1754
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    goto :goto_0

    .line 1702
    .end local v3           #shiftState:I
    :cond_4
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V

    .line 1705
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1708
    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1709
    .local v2, seqTextBeforeCursor:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1710
    .local v4, strTextBefore:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1711
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1714
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1716
    :cond_6
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentShiftState()I

    move-result v0

    .line 1717
    .local v0, iShiftState:I
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1718
    invoke-virtual {p0, v9, v8}, Lcom/nuance/xt9/input/AlphaInputView;->handleSpace(ZI)Z

    .line 1720
    if-ne v0, v8, :cond_2

    .line 1722
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v5, v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setShiftState(I)V

    goto/16 :goto_1

    .end local v0           #iShiftState:I
    .end local v2           #seqTextBeforeCursor:Ljava/lang/CharSequence;
    .end local v4           #strTextBefore:Ljava/lang/String;
    .restart local v3       #shiftState:I
    :cond_7
    move v3, v9

    .line 1737
    goto/16 :goto_2

    .line 1740
    :cond_8
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getShiftState()I

    move-result v3

    goto/16 :goto_2

    .line 1760
    :cond_9
    int-to-char v5, p1

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->sendBackCharOnFailProcess(C)V

    goto/16 :goto_0
.end method

.method private handlePunctOrSymbol(I)V
    .locals 5
    .parameter "primaryCode"

    .prologue
    const/4 v4, 0x1

    .line 1784
    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    .line 1785
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/nuance/xt9/input/AlphaInputView;->handleSpace(ZI)Z

    .line 1808
    :goto_0
    return-void

    .line 1789
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->composingState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1790
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1791
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1792
    .local v1, selectedWord:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1793
    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->AddCommpoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1799
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v1           #selectedWord:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 1800
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 1802
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->punctuationOrSymbols()V

    .line 1803
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->sendKeyChar(C)V

    .line 1805
    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1807
    iput v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    goto :goto_0

    .line 1796
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_1
.end method

.method private handleRecapture()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1487
    const/4 v0, 0x0

    .line 1489
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1490
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_0

    move v1, v0

    .line 1519
    .end local v0           #handled:Z
    .local v1, handled:I
    :goto_0
    return v1

    .line 1495
    .end local v1           #handled:I
    .restart local v0       #handled:Z
    :cond_0
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v4}, Lcom/nuance/xt9/input/AlphaInputView;->extractContextAndRecaptureWordsFromBeforeCursor(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1497
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v4}, Lcom/nuance/xt9/input/AlphaInputView;->recapture(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1499
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1501
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1503
    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->updateSuggestions(I)I

    move-result v3

    if-lt v3, v5, :cond_2

    .line 1504
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/nuance/xt9/input/EditState;->appendCharacterTyped(Ljava/lang/CharSequence;)V

    .line 1505
    const/4 v0, 0x1

    .line 1513
    :goto_1
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1516
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/AlphaInput;->breakContext()V

    :cond_1
    move v1, v0

    .line 1519
    .restart local v1       #handled:I
    goto :goto_0

    .line 1508
    .end local v1           #handled:I
    :cond_2
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1509
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 1510
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleShiftPressedHold()V
    .locals 2

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1970
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->handleShift()V

    .line 1974
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->invalidateAll()V

    .line 1975
    return-void

    .line 1972
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->toggleCapsLock()V

    goto :goto_0
.end method

.method private handleWhiteSpaces(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    .line 1765
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 1766
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->handleSpace(ZI)Z

    .line 1771
    :goto_0
    return-void

    .line 1770
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto :goto_0
.end method

.method private isNumberAndSymbolOnly(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "text"

    .prologue
    .line 1582
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1583
    .local v3, length:I
    const/4 v1, 0x0

    .line 1584
    .local v1, deleted:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1585
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1586
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1587
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1584
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1590
    .end local v0           #ch:C
    :cond_2
    if-lt v1, v3, :cond_3

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isWordAcceptingSymbol(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->isWordCompounder(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1978
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1979
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getAutoCorrectionMode()I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAutoCorrectionMode:I

    .line 1980
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getWordCompletionPoint()I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordCompletionPoint:I

    .line 1986
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    .line 1987
    iget v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAutoCorrectionMode:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordCompletionPoint:I

    if-eqz v1, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    .line 1990
    const-string v1, "auto_punctuation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAutoPunctuationOn:Z

    .line 1992
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_4

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    .line 1993
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isRecaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureOn:Z

    .line 1994
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isNextWordPredictionEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_6

    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1998
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mIme:Lcom/nuance/xt9/input/IME;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->isHardwareKeyboardPresented()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-boolean v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledHardwareKeyboard:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureOn:Z

    .line 2002
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputType()I

    move-result v1

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 2003
    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputFieldInfo;->suggestionCompletionEnabled()Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    .line 2008
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    .line 2009
    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    .line 2021
    return-void

    :cond_3
    move v1, v2

    .line 1987
    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 1992
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1993
    goto :goto_2

    :cond_6
    move v1, v2

    .line 1994
    goto :goto_3

    .line 1998
    :cond_7
    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureOn:Z

    goto :goto_4
.end method

.method private logPerfData(Lcom/nuance/xt9/input/AlphaInputView$PerfData;)V
    .locals 8
    .parameter "perfData"

    .prologue
    .line 2214
    const-string v0, "PerfLog"

    .line 2216
    .local v0, TAG:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n================================================================\nProfiling method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mProfilingMethod:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mProfilingMethod:I

    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/AlphaInputView;->profilingMethodDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nLanguage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0x0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mLanguageId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nKdb = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0x0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mKdbId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nCorrection level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mCorrectionLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nWord completion point = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mWordCompletionPoint:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iget-object v5, p1, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mPerfWords:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2224
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;

    .line 2226
    .local v4, word:Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\tPerfLog for spelling \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;->mWord:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    iget-object v5, v4, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;->mPerfKeys:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2229
    .local v2, itKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;

    .line 2231
    .local v3, perKey:Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\t\tKey = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, v3, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mCh:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", word list count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mWordCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mSpellTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2236
    .end local v2           #itKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;>;"
    .end local v3           #perKey:Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;
    .end local v4           #word:Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;
    :cond_1
    return-void
.end method

.method private perfornamceForOneWord(Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;Lcom/nuance/xt9/input/AlphaInputView$PerfData;)V
    .locals 12
    .parameter "word"
    .parameter "perfData"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 2179
    iget-object v6, p1, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;->mPerfKeys:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2180
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;

    .line 2182
    .local v1, key:Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;
    const/4 v4, 0x0

    .line 2184
    .local v4, wordCount:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2186
    .local v2, start:J
    iget v6, p2, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mProfilingMethod:I

    packed-switch v6, :pswitch_data_0

    .line 2206
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iput-wide v6, v1, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mSpellTime:J

    .line 2207
    iput v4, v1, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mWordCount:I

    goto :goto_0

    .line 2188
    :pswitch_0
    iget-char v6, v1, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mCh:C

    invoke-virtual {p0, v6, v11}, Lcom/nuance/xt9/input/AlphaInputView;->handleCharKey(I[I)V

    .line 2189
    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v4

    .line 2190
    goto :goto_1

    .line 2193
    :pswitch_1
    iget-char v6, v1, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mCh:C

    invoke-direct {p0, v6, v11}, Lcom/nuance/xt9/input/AlphaInputView;->handlePrediction(I[I)V

    .line 2194
    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v4

    .line 2195
    goto :goto_1

    .line 2198
    :pswitch_2
    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    iget v7, p2, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mKdbId:I

    iget-char v8, v1, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mCh:C

    invoke-virtual {v6, v7, v8, v10}, Lcom/nuance/xt9/input/AlphaInput;->processKey(III)Z

    .line 2199
    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2200
    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2201
    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    iget-object v7, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isUDBShortcutSubstitutionField()Z

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/nuance/xt9/input/AlphaInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;Z)Ljava/util/List;

    move-result-object v5

    .line 2202
    .local v5, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    .line 2210
    .end local v1           #key:Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;
    .end local v2           #start:J
    .end local v4           #wordCount:I
    .end local v5           #wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v10, v6}, Lcom/nuance/xt9/input/AlphaInputView;->handleSpace(ZI)Z

    .line 2211
    return-void

    .line 2186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private postDoubleTapRecaptureMsg(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "contextBuffer"
    .parameter "recaptureBuffer"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->removeDoubleTapRecaptureMsg()V

    .line 148
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    new-instance v3, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;

    invoke-direct {v3, p1, p2}, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 150
    return-void
.end method

.method private postToastMsg(I)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->removeToastMsg(I)V

    .line 138
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    return-void
.end method

.method private processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "ic"

    .prologue
    .line 1422
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->spaceKey()V

    .line 1423
    const/4 v0, 0x6

    invoke-static {}, Lcom/nuance/xt9/input/EditState;->current()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1424
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->selectedWord()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/xt9/input/AlphaInputView;->AddCommpoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1426
    :cond_0
    return-void
.end method

.method private profiling(Ljava/util/Iterator;Lcom/nuance/xt9/input/AlphaInputView$PerfData;)V
    .locals 2
    .parameter
    .parameter "perfData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nuance/xt9/input/AlphaInputView$PerfData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2170
    .local p1, itKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2171
    new-instance v0, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;-><init>(Ljava/lang/String;)V

    .line 2172
    .local v0, word:Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;
    iget-object v1, p2, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mPerfWords:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2173
    invoke-direct {p0, v0, p2}, Lcom/nuance/xt9/input/AlphaInputView;->perfornamceForOneWord(Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;Lcom/nuance/xt9/input/AlphaInputView$PerfData;)V

    goto :goto_0

    .line 2175
    .end local v0           #word:Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;
    :cond_0
    return-void
.end method

.method private profilingMethodDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "profilingMethod"

    .prologue
    .line 2240
    packed-switch p1, :pswitch_data_0

    .line 2251
    const-string v0, "huh?"

    :goto_0
    return-object v0

    .line 2242
    :pswitch_0
    const-string v0, "With symbol/number check and list view display overhead, and java/JNI and word copies"

    goto :goto_0

    .line 2245
    :pswitch_1
    const-string v0, "With list view displaying overhead, and java/JNI and word copies"

    goto :goto_0

    .line 2248
    :pswitch_2
    const-string v0, "No symbol/numb and list view display overhead, but with java/JNI and word copies"

    goto :goto_0

    .line 2240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private profilingWordList()V
    .locals 0

    .prologue
    .line 2134
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 2050
    return-void
.end method

.method private recapture(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "contextBuffer"
    .parameter "capture"

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->changeContext(Ljava/lang/CharSequence;)V

    .line 1533
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInput;->recaptureWord(I[CI)Z

    move-result v0

    return v0
.end method

.method private removeDoubleTapRecaptureMsg()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    return-void
.end method

.method private removeToastMsg(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 132
    invoke-static {}, Lcom/nuance/xt9/input/QuickToast;->hide()V

    .line 133
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    return-void
.end method

.method private sendBackCharOnFailProcess(C)V
    .locals 1
    .parameter "ch"

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 1613
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 1616
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->sendKeyChar(C)V

    .line 1617
    return-void
.end method

.method private setCorrectionLevel(Ljava/lang/String;)V
    .locals 3
    .parameter "inputMode"

    .prologue
    const/16 v2, 0x64

    .line 1442
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_0

    .line 1443
    const-string v0, "ambig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    iget v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAutoCorrectionMode:I

    invoke-virtual {v0, v2, v1}, Lcom/nuance/xt9/input/AlphaInput;->setAttribute(II)Z

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    const-string v0, "abc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/xt9/input/AlphaInput;->setAttribute(II)Z

    goto :goto_0
.end method

.method private setMultitapOrAmbigMode()V
    .locals 2

    .prologue
    .line 1429
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Settings;->getMultitapMode(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->toggleAmbigMode()V

    .line 1433
    const-string v0, "abc"

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    const-string v0, "ambig"

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startInputSession()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 301
    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInput;->start()Z

    .line 305
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 306
    .local v0, language:Lcom/nuance/xt9/input/InputMethods$Language;
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->getAlphaLanguage(Lcom/nuance/xt9/input/InputMethods;)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v0

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    iget v2, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/AlphaInput;->setLanguage(I)Z

    .line 312
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    const/16 v2, 0x65

    iget v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordCompletionPoint:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInput;->setAttribute(II)Z

    .line 313
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    const/16 v2, 0x64

    iget v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAutoCorrectionMode:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInput;->setAttribute(II)Z

    .line 314
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    const/16 v2, 0x68

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInput;->setAttribute(II)Z

    .line 328
    iput v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastSelStart:I

    .line 329
    iput v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastSelEnd:I

    .line 331
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V

    .line 334
    .end local v0           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_1
    return-void

    .line 314
    .restart local v0       #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private toggleCapsLock()V
    .locals 2

    .prologue
    .line 1955
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1956
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    .line 1958
    .local v0, currentShiftState:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1959
    const/4 v0, 0x0

    .line 1964
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 1966
    .end local v0           #currentShiftState:I
    :cond_0
    return-void

    .line 1962
    .restart local v0       #currentShiftState:I
    .restart local p0
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private toggleKeyboardMode()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->changeKeyboardMode()V

    .line 965
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->abortKey()V

    .line 966
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->setMultitapOrAmbigMode()V

    .line 967
    return-void
.end method

.method private updateCandidateContainerLayout()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 764
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->requestLayout()V

    .line 765
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->invalidate()V

    .line 766
    return-void
.end method

.method private updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "ic"

    .prologue
    .line 1667
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/nuance/xt9/input/EditState;->current()I

    move-result v1

    if-nez v1, :cond_0

    .line 1670
    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1671
    .local v0, seqBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1673
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 1677
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1678
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/AlphaInput;->setContext([C)V

    .line 1685
    .end local v0           #seqBeforeCursor:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 1681
    .restart local v0       #seqBeforeCursor:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInput;->breakContext()V

    goto :goto_0
.end method

.method private updateInlineTextFromSelectedWord()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2263
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v2, v3

    .line 2264
    .local v2, wordCandidatesCount:I
    :goto_0
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView;->getSelectedIndex()I

    move-result v3

    move v1, v3

    .line 2265
    .local v1, selectedIndex:I
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2267
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-gt v1, v2, :cond_0

    if-gez v1, :cond_3

    .line 2318
    :cond_0
    :goto_2
    return-void

    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v1           #selectedIndex:I
    .end local v2           #wordCandidatesCount:I
    :cond_1
    move v2, v7

    .line 2263
    goto :goto_0

    .line 2264
    .restart local v2       #wordCandidatesCount:I
    :cond_2
    const/4 v3, -0x1

    move v1, v3

    goto :goto_1

    .line 2272
    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v1       #selectedIndex:I
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2273
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2274
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2275
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2279
    if-lez v2, :cond_5

    .line 2280
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2281
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3, v1}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 2282
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2285
    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mPreferExplicit:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v4, 0x900

    if-ne v3, v4, :cond_4

    .line 2286
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2287
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2288
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3, v7}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 2289
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2290
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2293
    :cond_4
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->compose()V

    .line 2297
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2298
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2300
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2303
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2305
    iput-boolean v8, p0, Lcom/nuance/xt9/input/AlphaInputView;->mUpdatingInline:Z

    .line 2306
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2308
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivateKlingonMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    const-string v4, "QoS \'oH \'oHbe\' chenmoHta\'"

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2314
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->flushCurrentActiveWord()V

    goto/16 :goto_2
.end method

.method private updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .parameter "attr"

    .prologue
    .line 1913
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1914
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 1915
    const/4 v0, 0x0

    .line 1916
    .local v0, caps:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 1917
    .local v2, ei:Landroid/view/inputmethod/EditorInfo;
    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAutoCap:Z

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v4, :cond_0

    .line 1918
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 1920
    :cond_0
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentShiftState()I

    move-result v1

    .line 1921
    .local v1, curretShiftState:I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 1922
    const/16 v4, 0x1000

    if-eq v0, v4, :cond_4

    .line 1923
    if-nez v0, :cond_3

    const/4 v4, 0x0

    move v1, v4

    .line 1929
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v4, v1}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setShiftState(I)V

    .line 1931
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardEx;->isShifted()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->setShifted(Z)Z

    .line 1933
    .end local v0           #caps:I
    .end local v1           #curretShiftState:I
    .end local v2           #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_2
    return-void

    .line 1923
    .restart local v0       #caps:I
    .restart local v1       #curretShiftState:I
    .restart local v2       #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_3
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0

    .line 1926
    :cond_4
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private updateSuggestions(I)I
    .locals 11
    .parameter "wordCandidatesDisplayThreshold"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1819
    const/4 v2, 0x0

    .line 1820
    .local v2, wordCandidatesCount:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1822
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    .line 1889
    .end local v2           #wordCandidatesCount:I
    .local v3, wordCandidatesCount:I
    :goto_0
    return v3

    .line 1826
    .end local v3           #wordCandidatesCount:I
    .restart local v2       #wordCandidatesCount:I
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1827
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1828
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1829
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1831
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isUDBShortcutSubstitutionField()Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/xt9/input/AlphaInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    .line 1832
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1836
    if-lez v2, :cond_7

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1839
    .local v1, inlineText:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4, v1}, Lcom/nuance/xt9/input/AlphaInput;->getInlineText(Ljava/lang/StringBuilder;)V

    .line 1842
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1845
    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mPreferExplicit:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x900

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1846
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1847
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1848
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v4, v8}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 1849
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1850
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1853
    :cond_2
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->compose()V

    .line 1857
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1858
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x121

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1860
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1863
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xa

    invoke-virtual {v4, v10, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1865
    iput-boolean v9, p0, Lcom/nuance/xt9/input/AlphaInputView;->mUpdatingInline:Z

    .line 1866
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v4, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1868
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivateKlingonMode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    const-string v5, "QoS \'oH \'oHbe\' chenmoHta\'"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1873
    :cond_3
    if-lt v2, p1, :cond_5

    .line 1874
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordList:Ljava/util/List;

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v6

    invoke-virtual {v4, v5, v8, v6}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 1877
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 1878
    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletionOn:Z

    if-eqz v4, :cond_6

    :cond_4
    move v4, v9

    :goto_1
    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .end local v1           #inlineText:Ljava/lang/StringBuilder;
    :cond_5
    :goto_2
    move v3, v2

    .line 1889
    .end local v2           #wordCandidatesCount:I
    .restart local v3       #wordCandidatesCount:I
    goto/16 :goto_0

    .end local v3           #wordCandidatesCount:I
    .restart local v1       #inlineText:Ljava/lang/StringBuilder;
    .restart local v2       #wordCandidatesCount:I
    :cond_6
    move v4, v8

    .line 1878
    goto :goto_1

    .line 1884
    .end local v1           #inlineText:Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_2
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->changeKeyboardMode()V

    .line 1286
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->setMultitapOrAmbigMode()V

    .line 1287
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1289
    return-void
.end method

.method public create(Lcom/nuance/xt9/input/IME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 172
    new-instance v0, Lcom/nuance/xt9/input/SoundEffects;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/nuance/xt9/input/SoundEffects;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSoundEffects:Lcom/nuance/xt9/input/SoundEffects;

    .line 173
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSoundEffects:Lcom/nuance/xt9/input/SoundEffects;

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/SoundEffects;->addSound(I)V

    .line 175
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/AlphaInput;->getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/AlphaInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    .line 176
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 178
    new-instance v0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    .line 179
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setInputView(Lcom/nuance/xt9/input/AlphaInputView;)V

    .line 180
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->makeKeyboards()V

    .line 182
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 188
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->readStyles(Landroid/content/Context;)V

    .line 189
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "parameter input is not an instance of AlphaInput"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 220
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/WordListViewContainer;

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    .line 214
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->initViews()V

    .line 215
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->requestLayout()V

    .line 216
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 220
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->destroy()V

    .line 195
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->destroy()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSoundEffects:Lcom/nuance/xt9/input/SoundEffects;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SoundEffects;->release()V

    .line 201
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    .line 202
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSoundEffects:Lcom/nuance/xt9/input/SoundEffects;

    .line 203
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    .line 204
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 6
    .parameter "completions"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 495
    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletionOn:Z

    if-eqz v3, :cond_0

    .line 496
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 497
    if-nez p1, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eqz p1, :cond_3

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_4

    .line 504
    aget-object v0, p1, v1

    .line 505
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    move v3, v4

    goto :goto_2

    .line 507
    :cond_4
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v3, v2, v5, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 509
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 510
    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletionOn:Z

    if-eqz v3, :cond_6

    :cond_5
    move v3, v5

    :goto_3
    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 2256
    const-string v0, "AlphaInputView"

    const-string v1, "AlphaInputView.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->endSession()V

    .line 353
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->closing()V

    .line 354
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 355
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->endInputSession()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 366
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 367
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 370
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 371
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 372
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 373
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 375
    :cond_0
    return-void
.end method

.method public handleBackspace(I)Z
    .locals 9
    .parameter "repeatedCount"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 995
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 997
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 998
    :cond_0
    iput v7, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 999
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->sendBackspace(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    move v3, v5

    .line 1154
    :goto_0
    return v3

    .line 1004
    :cond_1
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->current()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1006
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1007
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 1008
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 1009
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->updateCandidateContainerLayout()V

    .line 1011
    :cond_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 1012
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 1013
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->backSpace()V

    .line 1014
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->sendBackspace(I)V

    .line 1015
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    move v3, v5

    .line 1016
    goto :goto_0

    .line 1020
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "abc"

    if-eq v3, v4, :cond_7

    invoke-static {}, Lcom/nuance/xt9/input/EditState;->canDoRecapture()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureOn:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyEvent:Landroid/view/KeyEvent;

    if-nez v3, :cond_7

    .line 1025
    invoke-interface {v2, v8, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1026
    .local v1, cSeqBefore:Ljava/lang/CharSequence;
    invoke-interface {v2, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1031
    .local v0, cSeqAfter:Ljava/lang/CharSequence;
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    if-ge p1, v8, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v8, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1038
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->handleRecapture()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1039
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->recapture()V

    move v3, v5

    .line 1040
    goto/16 :goto_0

    .line 1043
    :cond_5
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->canNotRecapture()V

    .line 1047
    :cond_6
    iput v7, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 1049
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->backSpace()V

    .line 1050
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->sendBackspace(I)V

    .line 1051
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    move v3, v5

    .line 1052
    goto/16 :goto_0

    .line 1056
    .end local v0           #cSeqAfter:Ljava/lang/CharSequence;
    .end local v1           #cSeqBefore:Ljava/lang/CharSequence;
    :cond_7
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->handleBackspaceDuringMultitap()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v5

    .line 1057
    goto/16 :goto_0

    .line 1061
    :cond_8
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 1094
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/AlphaInput;->clearKey()Z

    .line 1096
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 1111
    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->updateSuggestions(I)I

    move v3, v5

    .line 1112
    goto/16 :goto_0

    .line 1116
    :cond_9
    iput v7, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 1119
    const-string v3, ""

    invoke-interface {v2, v3, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1121
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 1122
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 1123
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->backSpace()V

    .line 1124
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->current()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 1125
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 1127
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    move v3, v5

    .line 1128
    goto/16 :goto_0

    .line 1131
    :cond_b
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v3

    if-lez v3, :cond_d

    .line 1133
    iput v7, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 1136
    const-string v3, ""

    invoke-interface {v2, v3, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1138
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 1139
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 1140
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->backSpace()V

    .line 1141
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->current()I

    move-result v3

    if-ne v3, v5, :cond_c

    .line 1142
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 1144
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    move v3, v5

    .line 1145
    goto/16 :goto_0

    .line 1148
    :cond_d
    iput v7, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 1150
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->sendBackspace(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1152
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 1153
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->backSpace()V

    move v3, v5

    .line 1154
    goto/16 :goto_0
.end method

.method public handleCharKey(I[I)V
    .locals 7
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v6, 0x1

    .line 684
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->handleCharKey(I[I)V

    .line 686
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->removeToastMsg(I)V

    .line 690
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v1, :cond_7

    .line 692
    :cond_0
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->end()V

    .line 694
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 698
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_6

    .line 699
    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->sendKeyChar(C)V

    .line 717
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 747
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_3

    .line 748
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 751
    :cond_3
    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isWordCompounder(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->composingState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->supportsAlphaMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 754
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->toggleKeyboardMode()V

    .line 757
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 758
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 760
    :cond_5
    return-void

    .line 703
    :cond_6
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 704
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 705
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 708
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 711
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 712
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 713
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 720
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_7
    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 722
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->handleWhiteSpaces(I)V

    goto :goto_1

    .line 724
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 727
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/AlphaInputView;->handlePrediction(I[I)V

    goto :goto_1

    .line 729
    :cond_9
    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v2, 0x600

    if-ne v1, v2, :cond_a

    .line 732
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/AlphaInputView;->handlePrediction(I[I)V

    goto/16 :goto_1

    .line 734
    :cond_a
    int-to-char v1, p1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isWordAcceptingSymbol(C)Z

    move-result v1

    if-nez v1, :cond_c

    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_b

    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isWordCompounder(I)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_d

    .line 740
    :cond_c
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_1

    .line 743
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/AlphaInputView;->handlePrediction(I[I)V

    goto/16 :goto_1
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 1242
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->handleClose()V

    .line 1243
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 6
    .parameter "primaryCode"
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 517
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->removeToastMsg(I)V

    .line 519
    sparse-switch p1, :sswitch_data_0

    .line 567
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    move-result v0

    :goto_0
    return v0

    .line 523
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isTraceInputEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0, p2, p3}, Lcom/nuance/xt9/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_0

    .line 529
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    sget v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipCount:I

    .line 532
    sget v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipCount:I

    if-lt v0, v2, :cond_1

    .line 533
    sput v3, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipCount:I

    .line 535
    sget v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipDisplayCount:I

    if-ge v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    if-eqz v0, :cond_1

    .line 536
    sget v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipDisplayCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipDisplayCount:I

    .line 537
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->postToastMsg(I)V

    .line 556
    :cond_1
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/nuance/xt9/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_0

    .line 542
    :cond_2
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    sget v0, Lcom/nuance/xt9/input/EditState;->mTraceTipCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mTraceTipCount:I

    .line 545
    sget v0, Lcom/nuance/xt9/input/EditState;->mTraceTipCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 546
    sput v3, Lcom/nuance/xt9/input/EditState;->mTraceTipCount:I

    .line 548
    sget v0, Lcom/nuance/xt9/input/EditState;->mTraceTipDisplayCount:I

    if-ge v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_1

    .line 549
    sget v0, Lcom/nuance/xt9/input/EditState;->mTraceTipDisplayCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/xt9/input/EditState;->mTraceTipDisplayCount:I

    .line 550
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->postToastMsg(I)V

    goto :goto_1

    .line 559
    :sswitch_1
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_3

    .line 560
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->postToastMsg(I)V

    :cond_3
    move v0, v4

    .line 563
    goto/16 :goto_0

    .line 519
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x16

    const/16 v8, 0x15

    .line 574
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 575
    .local v7, handled:Z
    if-nez v7, :cond_5

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v0, :cond_5

    .line 578
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/xt9/input/AlphaInputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v7

    .line 582
    if-eqz v7, :cond_1

    if-eq p1, v8, :cond_0

    if-ne p1, v9, :cond_1

    .line 584
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->updateInlineTextFromSelectedWord()V

    .line 588
    :cond_1
    if-nez v7, :cond_3

    if-eq p1, v8, :cond_2

    if-eq p1, v9, :cond_2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 591
    :cond_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->commitSuggestedWord()V

    .line 595
    :cond_3
    if-nez v7, :cond_4

    .line 596
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/AlphaInputView;->handleKeyForKCM(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 600
    :cond_4
    if-nez v7, :cond_5

    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/AlphaInputView;->handleKeyForPrediction(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 605
    :cond_5
    return v7
.end method

.method public handleMultitapToggle()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1342
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->toggleAmbigMode()V

    .line 1343
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, inputMode:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1346
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "abc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v2, v3}, Lcom/nuance/xt9/input/Settings;->setMultitapMode(Landroid/content/SharedPreferences;Z)V

    .line 1349
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1350
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1351
    .local v1, selectedWord:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1354
    .end local v1           #selectedWord:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1355
    return-void

    .line 1346
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public handleShift()V
    .locals 1

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->toggleShiftState()V

    .line 1938
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->invalidateAll()V

    .line 1939
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 11
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1162
    const/4 v5, 0x3

    iput v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 1164
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1166
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v5, :cond_0

    if-nez v3, :cond_1

    .line 1167
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->sendSpace()V

    .line 1168
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    move v5, v7

    .line 1236
    :goto_0
    return v5

    .line 1172
    :cond_1
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1174
    const/4 v0, 0x1

    .line 1175
    .local v0, addSpace:Z
    const/4 v2, 0x0

    .line 1177
    .local v2, displayNWP:Z
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 1178
    iget-boolean v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1179
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1180
    .local v4, selectedWord:Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v5

    invoke-virtual {p0, v5, v4, v10}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1196
    .end local v4           #selectedWord:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    if-ge p2, v9, :cond_3

    iget-boolean v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAutoPunctuationOn:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v5, :cond_3

    .line 1197
    invoke-interface {v3, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1203
    .local v1, cSeqBefore:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v9, :cond_3

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1208
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->handleAutoPunct()V

    .line 1209
    const/4 v0, 0x0

    .line 1213
    .end local v1           #cSeqBefore:Ljava/lang/CharSequence;
    :cond_3
    if-eqz v0, :cond_7

    .line 1214
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/AlphaInputView;->processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V

    .line 1215
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->sendKeyChar(C)V

    .line 1222
    :goto_1
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->isAlphabetMode()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->supportsAlphaMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1223
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->toggleKeyboardMode()V

    .line 1226
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1227
    invoke-virtual {p0, v7}, Lcom/nuance/xt9/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1229
    if-eqz v2, :cond_5

    .line 1230
    invoke-direct {p0, v7}, Lcom/nuance/xt9/input/AlphaInputView;->updateSuggestions(I)I

    .line 1231
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1234
    :cond_5
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v5, v7

    .line 1236
    goto/16 :goto_0

    .line 1182
    :cond_6
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_2

    invoke-static {}, Lcom/nuance/xt9/input/EditState;->current()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 1186
    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->getCurrentHighlighted()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1187
    .local v4, selectedWord:Ljava/lang/CharSequence;
    if-eqz v4, :cond_2

    .line 1188
    const/4 v5, -0x2

    invoke-virtual {p0, v5, v4, v10}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1189
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v5, v7

    .line 1190
    goto/16 :goto_0

    .line 1218
    .end local v4           #selectedWord:Ljava/lang/CharSequence;
    :cond_7
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    goto :goto_1
.end method

.method public handleTrace(Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p1, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v4, 0x0

    .line 787
    .local v4, bAddSpace:Z
    const/16 v17, 0x0

    sput v17, Lcom/nuance/xt9/input/EditState;->mTraceTipCount:I

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 791
    .local v10, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v10, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 800
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V

    .line 803
    const/16 v17, 0x64

    const/16 v18, 0x0

    move-object v0, v10

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 807
    .local v14, strSeqBefore:Ljava/lang/CharSequence;
    if-eqz v14, :cond_0

    .line 811
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/AlphaInput;->isAutoSpaceBeforeTrace(ILjava/util/ArrayList;)I

    move-result v7

    .line 815
    .local v7, iAcceptType:I
    const/16 v17, 0x2

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 816
    const/4 v4, 0x1

    .line 861
    .end local v7           #iAcceptType:I
    .end local v14           #strSeqBefore:Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 863
    const/16 v17, 0x0

    sput v17, Lcom/nuance/xt9/input/EditState;->mAutoAcceptTipCount:I

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentShiftState()I

    move-result v9

    .line 866
    .local v9, iShiftState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 867
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/AlphaInputView;->handleSpace(ZI)Z

    .line 869
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setShiftState(I)V

    .line 874
    .end local v9           #iShiftState:I
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .local v12, oldExactBuffer:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v8

    .line 879
    .local v8, iKeyCount:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    .line 880
    .local v15, timerStart:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/nuance/xt9/input/AlphaInputView;->getShiftState()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInput;->processTrace(ILjava/util/ArrayList;I)Z

    move-result v5

    .line 885
    .local v5, bSuccess:Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .local v11, newExactBuffer:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 889
    if-eqz v4, :cond_b

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_b

    const/16 v17, 0x0

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 891
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->sendBackspace(I)V

    .line 892
    const/4 v4, 0x0

    .line 902
    :cond_4
    :goto_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->updateSuggestions(I)I

    move-result v17

    if-lez v17, :cond_c

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 912
    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    .line 914
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 818
    .end local v5           #bSuccess:Z
    .end local v8           #iKeyCount:I
    .end local v11           #newExactBuffer:Ljava/lang/StringBuilder;
    .end local v12           #oldExactBuffer:Ljava/lang/StringBuilder;
    .end local v15           #timerStart:J
    .restart local v7       #iAcceptType:I
    .restart local v14       #strSeqBefore:Ljava/lang/CharSequence;
    :cond_5
    const/16 v17, 0x1

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto/16 :goto_1

    .line 822
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mLastInput:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_2

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v17

    if-nez v17, :cond_2

    .line 824
    const-string v13, "_@"

    .line 825
    .local v13, strJoiners:Ljava/lang/String;
    const/4 v4, 0x1

    .line 828
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mInURLEmail:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 830
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const/16 v18, 0x2e

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 833
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v6, v17, v18

    .local v6, i:I
    :goto_4
    if-ltz v6, :cond_2

    if-eqz v4, :cond_2

    invoke-interface {v14, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isWhiteSpace(C)Z

    move-result v17

    if-nez v17, :cond_2

    .line 836
    invoke-interface {v14, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const/16 v18, 0x40

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v17, 0x3

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    invoke-interface {v14, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const/16 v18, 0x2e

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    sub-int v17, v6, v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const/16 v18, 0x77

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v17, 0x2

    sub-int v17, v6, v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const/16 v18, 0x77

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v17, 0x3

    sub-int v17, v6, v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const/16 v18, 0x77

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 833
    :cond_7
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 843
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 847
    .end local v6           #i:I
    :cond_9
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 849
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 853
    :cond_a
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLetter(C)Z

    move-result v17

    if-nez v17, :cond_2

    .line 855
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 894
    .end local v7           #iAcceptType:I
    .end local v13           #strJoiners:Ljava/lang/String;
    .end local v14           #strSeqBefore:Ljava/lang/CharSequence;
    .restart local v5       #bSuccess:Z
    .restart local v8       #iKeyCount:I
    .restart local v11       #newExactBuffer:Ljava/lang/StringBuilder;
    .restart local v12       #oldExactBuffer:Ljava/lang/StringBuilder;
    .restart local v15       #timerStart:J
    :cond_b
    if-nez v4, :cond_4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/AlphaInput;->clearKey()Z

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/nuance/xt9/input/AlphaInputView;->getShiftState()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInput;->processTrace(ILjava/util/ArrayList;I)Z

    goto/16 :goto_2

    .line 909
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/AlphaInputView;->mSoundEffects:Lcom/nuance/xt9/input/SoundEffects;

    move-object/from16 v17, v0

    const/high16 v18, 0x7f06

    invoke-virtual/range {v17 .. v18}, Lcom/nuance/xt9/input/SoundEffects;->play(I)V

    goto/16 :goto_3
.end method

.method public hideCandidateView()V
    .locals 1

    .prologue
    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 1909
    return-void
.end method

.method isDigit(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 679
    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTraceInputEnabled()Z
    .locals 2

    .prologue
    .line 2044
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLongPress(Lcom/nuance/xt9/input/KeyboardEx$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 2033
    iget-object v0, p1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2034
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->handleShiftPressedHold()V

    .line 2035
    const/4 v0, 0x1

    .line 2038
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->onLongPress(Lcom/nuance/xt9/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMultitapTimeout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1359
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1360
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1390
    :goto_0
    return-void

    .line 1365
    :cond_0
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 1366
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1367
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1368
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1389
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 1372
    :cond_3
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1374
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1377
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1378
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    .line 1379
    .local v2, lastSymbol:C
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->isWordAcceptingSymbol(C)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ne v4, v6, :cond_5

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v0, v6

    .line 1381
    .local v0, flush:Z
    :goto_2
    if-eqz v0, :cond_2

    .line 1382
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1383
    .local v3, selectedWord:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1384
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->punctuationOrSymbols()V

    goto :goto_1

    .line 1379
    .end local v0           #flush:Z
    .end local v3           #selectedWord:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    .line 615
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 616
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v2, :cond_4

    .line 619
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 620
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 621
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 623
    :cond_3
    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 624
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 674
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 675
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    goto :goto_0

    .line 629
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, v6, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->isWordAcceptingSymbol(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 630
    :cond_5
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 631
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->composingState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 632
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, selectedWord:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/nuance/xt9/input/AlphaInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 641
    .end local v1           #selectedWord:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 642
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 646
    :cond_6
    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 647
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->punctuationOrSymbols()V

    .line 648
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_1

    .line 636
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 637
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 638
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    goto :goto_2

    .line 650
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->composingState()Z

    move-result v2

    if-nez v2, :cond_9

    .line 652
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 653
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 654
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 655
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 656
    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 657
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->punctuationOrSymbols()V

    .line 658
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1

    .line 661
    :cond_9
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->composingState()Z

    move-result v2

    if-nez v2, :cond_a

    .line 662
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 663
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 664
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 668
    :cond_a
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getShiftState()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/xt9/input/AlphaInput;->addExplicit([CII)Z

    .line 671
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/AlphaInputView;->updateSuggestions(I)I

    goto/16 :goto_1
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 5
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1248
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1250
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1252
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/nuance/xt9/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1255
    iget-boolean v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletionOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v2, :cond_2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 1256
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v2, p1

    .line 1257
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v1, :cond_1

    .line 1258
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1261
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 1262
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    .line 1263
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1281
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :goto_0
    return-void

    .line 1268
    :cond_2
    if-eqz v1, :cond_3

    .line 1269
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1271
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mSuggestedWordIndex:Lcom/nuance/xt9/input/Int;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 1272
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearSuggestions()V

    .line 1273
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1276
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v2, p1}, Lcom/nuance/xt9/input/AlphaInput;->wordSelected(I)V

    .line 1277
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isUDBShortcutSubstitutionField()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1278
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/xt9/input/AlphaInput;->addWordToUserDictionary([CI)Z

    .line 1280
    :cond_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->clearedAllKeys()V

    goto :goto_0
.end method

.method public setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V
    .locals 4
    .parameter "keyboard"

    .prologue
    .line 954
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 956
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KeyboardEx;->getMinWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/KeyboardEx;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaInput;->initTrace(III)V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 6
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 228
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->startSession()V

    .line 243
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->dismissPopupKeyboard()V

    .line 244
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 245
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->removeDoubleTapRecaptureMsg()V

    .line 248
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 251
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->loadSettings()V

    .line 255
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->makeKeyboards()V

    .line 258
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;Z)V

    .line 285
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p1, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 289
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 290
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->startInputSession()V

    .line 291
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->setMultitapOrAmbigMode()V

    .line 292
    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 294
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInputView;->PreloadUDBWords()V

    goto :goto_0

    .line 266
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;Z)V

    goto :goto_1

    .line 269
    :cond_4
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;Z)V

    goto :goto_1

    .line 272
    :cond_5
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;Z)V

    goto :goto_1

    .line 275
    :cond_6
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;Z)V

    goto :goto_1

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;Z)V

    .line 281
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v0, v5}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setShiftState(I)V

    goto :goto_1
.end method

.method public updateMultitapDeadkey(Z)V
    .locals 7
    .parameter "invalidateKeyNow"

    .prologue
    const/16 v6, -0x13

    const/16 v5, -0x15

    const/4 v4, 0x0

    .line 1294
    iget v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 1299
    .local v1, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    if-eqz v1, :cond_0

    .line 1303
    const/4 v0, 0x0

    .line 1305
    .local v0, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-boolean v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-nez v2, :cond_3

    .line 1306
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v0

    .line 1307
    if-eqz v0, :cond_2

    .line 1309
    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    .line 1335
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1336
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaInputView;->invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    goto :goto_0

    .line 1313
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "abc"

    if-ne v2, v3, :cond_5

    .line 1314
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1315
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v0

    .line 1316
    if-eqz v0, :cond_2

    .line 1317
    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_1

    .line 1321
    :cond_4
    invoke-virtual {v1, v4}, Lcom/nuance/xt9/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v0

    .line 1322
    if-eqz v0, :cond_2

    .line 1323
    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    goto :goto_1

    .line 1328
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v0

    .line 1329
    if-eqz v0, :cond_2

    .line 1330
    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    goto :goto_1
.end method

.method public updateSelection(IIIIII)V
    .locals 8
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 384
    invoke-super/range {p0 .. p6}, Lcom/nuance/xt9/input/InputView;->updateSelection(IIIIII)V

    .line 387
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 388
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v4, :cond_6

    .line 406
    invoke-interface {v2, v5, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 408
    .local v0, charBeforeCusor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 409
    :cond_2
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaInput;->breakContext()V

    .line 415
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/nuance/xt9/input/EditState;->cursorChanged(Ljava/lang/CharSequence;)V

    .line 417
    if-ne p3, p6, :cond_4

    if-ne p4, p6, :cond_4

    const/4 v4, -0x1

    if-ne p6, v4, :cond_8

    if-nez p4, :cond_8

    :cond_4
    move v1, v5

    .line 422
    .local v1, cursorChanged:Z
    :goto_2
    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mUpdatingInline:Z

    if-nez v4, :cond_9

    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v4

    if-lez v4, :cond_9

    .line 424
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 427
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 428
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 431
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 432
    invoke-static {}, Lcom/nuance/xt9/input/EditState;->start()V

    .line 434
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 478
    .end local v0           #charBeforeCusor:Ljava/lang/CharSequence;
    .end local v1           #cursorChanged:Z
    :cond_6
    :goto_3
    iput p3, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastSelStart:I

    .line 479
    iput p4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastSelEnd:I

    .line 483
    iput-boolean v7, p0, Lcom/nuance/xt9/input/AlphaInputView;->mUpdatingInline:Z

    .line 484
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->dismissPopupKeyboard()V

    .line 487
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->isMultitapping()Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 411
    .restart local v0       #charBeforeCusor:Ljava/lang/CharSequence;
    :cond_7
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaInput;->getKeyCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/nuance/xt9/input/EditState;->breakContextState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaInput;->breakContext()V

    goto :goto_1

    :cond_8
    move v1, v7

    .line 417
    goto :goto_2

    .line 437
    .restart local v1       #cursorChanged:Z
    :cond_9
    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureOn:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mKeyEvent:Landroid/view/KeyEvent;

    if-nez v4, :cond_6

    if-le p4, p3, :cond_6

    iget v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastSelStart:I

    if-eq v4, p3, :cond_6

    iget v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mLastSelEnd:I

    if-eq v4, p4, :cond_6

    .line 444
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 447
    invoke-interface {v2, p4, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 449
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v4, v5}, Lcom/nuance/xt9/input/AlphaInputView;->extractContextAndRecaptureWordsFromBeforeCursor(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 452
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int v5, p4, p3

    if-le v4, v5, :cond_a

    .line 453
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int v6, p4, p3

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, strRecapture:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 455
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .end local v3           #strRecapture:Ljava/lang/String;
    :cond_a
    invoke-interface {v2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 464
    if-nez p3, :cond_b

    if-nez p3, :cond_d

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_d

    :cond_b
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 466
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/xt9/input/AlphaInputView;->mRecaptureBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v4, v5}, Lcom/nuance/xt9/input/AlphaInputView;->postDoubleTapRecaptureMsg(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 474
    :cond_c
    :goto_4
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_3

    .line 469
    :cond_d
    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInputView;->mAlphaWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 470
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_4
.end method
