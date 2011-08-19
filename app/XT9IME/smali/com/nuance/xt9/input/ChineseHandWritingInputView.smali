.class public Lcom/nuance/xt9/input/ChineseHandWritingInputView;
.super Lcom/nuance/xt9/input/HandWritingInputView;
.source "ChineseHandWritingInputView.java"


# static fields
.field public static final HWR_123_MODE:I = 0x1

.field public static final HWR_ABC_MODE:I = 0x2

.field public static final HWR_ALL_MODE:I = 0x3

.field public static final HWR_CHN_MODE:I = 0x0

.field static final MSG_DELAY_RECOGNIZER:I = 0x1


# instance fields
.field private final MSG_DELAY_TOGGLE_SYMBOLS:I

.field private final MSG_HANDLE_CHAR:I

.field private final MSG_HANDLE_SUGGESTION_CANDIDATES:I

.field private final MSG_HANDLE_TEXT:I

.field private mContextCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field private mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mHandWritingMode:I

.field mHandler:Landroid/os/Handler;

.field private mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

.field private mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mRecognitionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStringHandWriting123Mode:Ljava/lang/String;

.field private mStringHandWritingABCMode:Ljava/lang/String;

.field private mStringHandWritingChnMode:Ljava/lang/String;

.field private mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

.field private mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x3

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/HandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    .line 782
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->MSG_HANDLE_SUGGESTION_CANDIDATES:I

    .line 783
    iput v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->MSG_HANDLE_CHAR:I

    .line 784
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->MSG_HANDLE_TEXT:I

    .line 786
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->MSG_DELAY_TOGGLE_SYMBOLS:I

    .line 789
    new-instance v0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView$1;-><init>(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    .line 856
    new-instance v0, Lcom/nuance/xt9/input/ChineseHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView$2;-><init>(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method private SetKeyboardForTextEntry(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 4
    .parameter "inputFieldInfo"

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x1

    .line 162
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isNameField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/xt9/input/WriteChinese;->setAttribute(II)Z

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0, v3, v1, v2}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 171
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->changeChineseHwrMode(I)Z

    .line 173
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/xt9/input/WriteChinese;->setAttribute(II)Z

    goto :goto_0
.end method

.method private acceptCurrentDefaultWord()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->selectActiveWord()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->clearCurrentInline()V

    .line 559
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearArcs()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 561
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/ChineseHandWritingInputView;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/ChineseHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)Lcom/nuance/xt9/input/ChineseHandWritingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/xt9/input/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearArcs()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->updateCandidatesList()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->toggleDelaySymbols()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/xt9/input/ChineseHandWritingInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method private addDigitPuncSymbolCategoty()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    if-nez v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 301
    .local v0, mode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v2, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_DIGIT:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 306
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v2, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_PUNCTUATION:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 308
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v2, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_SYMBOL:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    goto :goto_0
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->clearCurrentInline()V

    .line 547
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 548
    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private changeChineseHwrMode(I)Z
    .locals 12
    .parameter "mode"

    .prologue
    .line 342
    const/4 v6, 0x0

    .line 344
    .local v6, periodKey:Lcom/nuance/xt9/input/KeyboardEx$Key;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/xt9/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 345
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    if-nez v2, :cond_0

    .line 346
    const/4 v8, 0x0

    .line 450
    :goto_0
    return v8

    .line 349
    :cond_0
    const/4 v8, -0x2

    invoke-direct {p0, v2, v8}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v0

    .line 350
    .local v0, altKey:Lcom/nuance/xt9/input/KeyboardEx$Key;
    if-nez v0, :cond_1

    .line 351
    const/4 v8, 0x0

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 355
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 358
    :cond_2
    const/16 v4, 0x2e

    .line 359
    .local v4, period:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 360
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f08014e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 361
    .local v3, label:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 364
    .local v5, periodChn:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v8, v9, :cond_3

    .line 365
    invoke-direct {p0, v2, v5}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v6

    .line 366
    if-nez v6, :cond_3

    .line 367
    invoke-direct {p0, v2, v4}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v6

    .line 371
    :cond_3
    iput p1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    .line 373
    iget v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-nez v8, :cond_6

    .line 374
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/WriteChineseSettings;->clearCategory()V

    .line 375
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v9, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_CHINESE_ONLY:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 376
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->addDigitPuncSymbolCategoty()V

    .line 377
    if-eqz v6, :cond_4

    .line 378
    iput-object v3, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 379
    iget-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aput v5, v8, v9

    .line 380
    const v8, 0x7f05000b

    iput v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 381
    const v8, 0x7f0800ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 382
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    .line 383
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearPopupKeyCached(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    .line 439
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    if-eqz v8, :cond_5

    .line 440
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getHandWritingMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/ChineseHandWritingView;->setModeString(Ljava/lang/String;)V

    .line 445
    :cond_5
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChinese;->changeSetting(Lcom/nuance/xt9/input/WriteChineseSettings;)Z

    .line 447
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 448
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/nuance/xt9/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 449
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 450
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 386
    :cond_6
    iget v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 387
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/WriteChineseSettings;->clearCategory()V

    .line 388
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v9, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_MISC:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 389
    if-eqz v6, :cond_4

    .line 390
    const-string v8, "."

    iput-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 391
    iget-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aput v4, v8, v9

    .line 392
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 393
    const v8, 0x7f05002d

    iput v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 394
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    .line 395
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearPopupKeyCached(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    goto :goto_1

    .line 398
    :cond_7
    iget v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 399
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/WriteChineseSettings;->clearCategory()V

    .line 400
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v9, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_ALPHA:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 401
    if-eqz v6, :cond_4

    .line 402
    const-string v8, "."

    iput-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 403
    iget-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aput v4, v8, v9

    .line 404
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 405
    const v8, 0x7f05002d

    iput v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 406
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    .line 407
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearPopupKeyCached(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    goto :goto_1

    .line 413
    :cond_8
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/WriteChineseSettings;->clearCategory()V

    .line 414
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v9, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_CHINESE_ONLY:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 415
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v9, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_ALPHA:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 417
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    .line 418
    .local v1, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 419
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v9, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_DIGIT:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 421
    :cond_9
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 422
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v9, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_PUNCTUATION:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 424
    :cond_a
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 425
    iget-object v8, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    sget-object v9, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_SYMBOL:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {v8, v9}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 428
    :cond_b
    if-eqz v6, :cond_4

    .line 429
    const-string v8, "."

    iput-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 430
    iget-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aput v4, v8, v9

    .line 431
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 432
    const v8, 0x7f05002d

    iput v8, v6, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 433
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    .line 434
    invoke-virtual {p0, v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearPopupKeyCached(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    goto/16 :goto_1
.end method

.method private clearArcs()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->clearArcs()V

    .line 747
    :cond_0
    return-void
.end method

.method private findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/xt9/input/KeyboardEx$Key;
    .locals 4
    .parameter
    .parameter "keyCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            ">;I)",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 332
    .local v1, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p2, :cond_0

    move-object v2, v1

    .line 337
    .end local v1           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private finishRemainingJobs()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->removeAllPendingMsg()V

    .line 228
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/WriteChinese;->removeRecognizeListener(Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 229
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteChinese;->finish()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 231
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearArcs()V

    .line 233
    return-void
.end method

.method private getContextCandidates()V
    .locals 4

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, i:I
    const/4 v1, 0x1

    .line 568
    .local v1, success:Z
    :cond_0
    :goto_0
    sget v3, Lcom/nuance/xt9/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    if-ge v0, v3, :cond_1

    if-eqz v1, :cond_1

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 570
    .local v2, word:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v3, v0, v2}, Lcom/nuance/xt9/input/WriteChinese;->getWord(ILjava/lang/StringBuilder;)Z

    move-result v1

    .line 571
    if-eqz v1, :cond_0

    .line 572
    add-int/lit8 v0, v0, 0x1

    .line 573
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    .end local v2           #word:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private handleBackspace()Z
    .locals 2

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->cancelCurrentDefaultWord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/IME;->sendBackspace(I)V

    .line 514
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private handleChar(C)V
    .locals 1
    .parameter "ch"

    .prologue
    .line 750
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 751
    const/16 p1, 0xa

    .line 757
    :cond_0
    :goto_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 758
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->handleBackspace()Z

    .line 771
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 772
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 773
    return-void

    .line 753
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 754
    const/16 p1, 0x20

    goto :goto_0

    .line 760
    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    .line 761
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->handleSpace()V

    goto :goto_1

    .line 763
    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 764
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 765
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->sendKeyChar(C)V

    goto :goto_1

    .line 768
    :cond_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 769
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method private handleSpace()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 489
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->sendSpace()V

    .line 490
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 286
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private nextMode(I)I
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 454
    iget v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-nez v0, :cond_0

    move v0, v1

    .line 465
    :goto_0
    return v0

    .line 457
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 458
    goto :goto_0

    .line 461
    :cond_1
    iget v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-ne v0, v2, :cond_2

    .line 462
    const/4 v0, 0x3

    goto :goto_0

    .line 465
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDelayRecognition()V
    .locals 2

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setIsWriting(Z)V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 893
    return-void
.end method

.method private postDelayToggleSymbols()V
    .locals 4

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->removeDelayToggleSymbols()V

    .line 908
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 909
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->performDelayRecognition()V

    .line 883
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 780
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 874
    return-void
.end method

.method private setEmailKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 5
    .parameter "inputFieldInfo"

    .prologue
    const v4, 0x7f09003b

    .line 184
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const v2, 0x7f050001

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 188
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 189
    return-void
.end method

.method private setImKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 5
    .parameter "inputFieldInfo"

    .prologue
    const v4, 0x7f09003c

    .line 200
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const v2, 0x7f050001

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 204
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 205
    return-void
.end method

.method private setNormalKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 5
    .parameter "inputFieldInfo"

    .prologue
    const v4, 0x7f090039

    .line 176
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const v2, 0x7f050001

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 180
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 181
    return-void
.end method

.method private setUrlKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 5
    .parameter "inputFieldInfo"

    .prologue
    const v4, 0x7f09003a

    .line 192
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const v2, 0x7f050001

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 196
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 197
    return-void
.end method

.method private toggleDelaySymbols()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v0, v0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v0, v0, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v0, v0, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->toggleSymbols()V

    .line 904
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->postDelayToggleSymbols()V

    goto :goto_0
.end method

.method private updateCandidatesList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 592
    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 618
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 596
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 600
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    iget-object v0, v0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 615
    :goto_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0, v4}, Lcom/nuance/xt9/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 616
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->requestLayout()V

    .line 617
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->invalidate()V

    goto :goto_0

    .line 607
    :cond_2
    iget v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-eqz v0, :cond_4

    .line 608
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 613
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    goto :goto_1

    .line 610
    :cond_4
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 611
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getContextCandidates()V

    goto :goto_2
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/HandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 475
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->postDelayToggleSymbols()V

    .line 477
    return-void
.end method

.method public create(Lcom/nuance/xt9/input/IME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/HandWritingInputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 71
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/nuance/xt9/input/WriteChineseSettings;

    invoke-direct {v0}, Lcom/nuance/xt9/input/WriteChineseSettings;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    .line 74
    new-instance v0, Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    .line 75
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteChinese;->create()Z

    .line 76
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 79
    new-instance v0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    .line 80
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setInputView(Lcom/nuance/xt9/input/InputView;)V

    .line 81
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->makeKeyboards()V

    .line 84
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-super {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->destroy()V

    .line 92
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteChinese;->destroy()V

    .line 94
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    .line 95
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    .line 96
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 97
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 98
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 99
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 102
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    .line 104
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->finishInput()V

    .line 214
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->finishRemainingJobs()V

    .line 217
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseHandWritingView;->freeMemory()V

    .line 221
    :cond_0
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->acceptCurrentInline()V

    .line 538
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearArcs()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 540
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 541
    return-void
.end method

.method public getHandWritingMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 325
    :goto_0
    return-object v0

    .line 317
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_1
    iget v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandWritingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 321
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_2
    const-string v0, "ALL"

    goto :goto_0
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .parameter "repeatedCount"

    .prologue
    const/16 v1, 0x8

    .line 519
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 522
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;->queueChar(C)V

    .line 532
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;->queueChar(C)V

    goto :goto_0

    .line 530
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->handleBackspace()Z

    goto :goto_0
.end method

.method public handleCharKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;->queueChar(C)V

    .line 485
    return-void
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->handleClose()V

    .line 240
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 241
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->removeAllPendingMsg()V

    .line 242
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteChinese;->finish()V

    .line 243
    return-void
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 248
    const/4 v7, 0x0

    .line 250
    .local v7, handled:Z
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v0, :cond_2

    .line 253
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    move-object v0, p0

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v7

    .line 257
    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 262
    :cond_0
    const/4 v7, 0x1

    .line 266
    :cond_1
    if-nez v7, :cond_2

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->handleKeyForPrediction(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 271
    :cond_2
    return v7

    .line 253
    :cond_3
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 279
    :cond_0
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleSpace(ZI)Z
    .locals 2
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/16 v1, 0x20

    .line 494
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 497
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;->queueChar(C)V

    .line 507
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;->queueChar(C)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->handleSpace()V

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x5

    .line 729
    iget v0, p1, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 741
    :goto_0
    return-void

    .line 731
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 734
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 738
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    if-nez v0, :cond_1

    .line 674
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 653
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setIsWriting(Z)V

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 658
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 660
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    if-eq v0, p1, :cond_3

    .line 661
    check-cast p1, Lcom/nuance/xt9/input/ChineseHandWritingView;

    .end local p1
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    .line 662
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    iput v1, v0, Lcom/nuance/xt9/input/WriteChineseSettings;->mXMin:I

    .line 663
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    iput v1, v0, Lcom/nuance/xt9/input/WriteChineseSettings;->mYMin:I

    .line 664
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/nuance/xt9/input/WriteChineseSettings;->mXMax:I

    .line 665
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/nuance/xt9/input/WriteChineseSettings;->mYMax:I

    .line 666
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;->changeSetting(Lcom/nuance/xt9/input/WriteChineseSettings;)Z

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->selectActiveWord()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 672
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter "src"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, arc:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteChinese;->queueAddArc(Ljava/util/List;)V

    .line 685
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    iget v2, v2, Lcom/nuance/xt9/input/WriteChineseSettings;->mRecognizeDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected removeDelayToggleSymbols()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 913
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->clearCurrentInline()V

    .line 692
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0, p2}, Lcom/nuance/xt9/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 694
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 695
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 696
    return-void
.end method

.method public setActiveCandidate(I)V
    .locals 2
    .parameter "n"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    iget-object v0, v0, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 588
    :cond_0
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/xt9/input/HandWritingView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 623
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    if-eq v1, p1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->freeMemory()V

    .line 627
    :cond_0
    if-eqz p1, :cond_1

    .line 628
    move-object v0, p1

    check-cast v0, Lcom/nuance/xt9/input/ChineseHandWritingView;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseHandWritingView;->allocateMemory()V

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/Composition;->clearCurrentInline()V

    .line 635
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearArcs()V

    .line 637
    :cond_2
    check-cast p1, Lcom/nuance/xt9/input/ChineseHandWritingView;

    .end local p1
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    .line 638
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    if-eqz v1, :cond_3

    .line 639
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getHandWritingMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/ChineseHandWritingView;->setModeString(Ljava/lang/String;)V

    .line 640
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearArcs()V

    .line 642
    :cond_3
    return-void
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 5
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->finishRemainingJobs()V

    .line 116
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseHandWritingView;->allocateMemory()V

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/HandWritingInputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 127
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 128
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    invoke-virtual {v2, p0}, Lcom/nuance/xt9/input/WriteChinese;->addRecognizeListener(Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 129
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 130
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v2, v3, v4}, Lcom/nuance/xt9/input/WriteChinese;->start(Lcom/nuance/xt9/input/WriteChineseSettings;I)Z

    .line 131
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 133
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->SetKeyboardForTextEntry(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 135
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    const/16 v3, 0xe1

    if-ne v2, v3, :cond_2

    .line 138
    const v2, 0x7f08013f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 139
    const v2, 0x7f080141

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    .line 145
    :goto_1
    const v2, 0x7f080143

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChineseSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    const-string v3, "auto_recpgnize_delay"

    const/16 v4, 0x2bc

    invoke-static {v1, v3, v4}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->getAutoDelay(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/nuance/xt9/input/WriteChineseSettings;->mRecognizeDelay:I

    .line 150
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearArcs()V

    .line 153
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 158
    return-void

    .line 120
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/ChineseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseHandWritingView;->freeMemory()V

    goto :goto_0

    .line 142
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_2
    const v2, 0x7f080140

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 143
    const v2, 0x7f080142

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateSelection(IIIIII)V
    .locals 4
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 702
    invoke-super/range {p0 .. p6}, Lcom/nuance/xt9/input/HandWritingInputView;->updateSelection(IIIIII)V

    .line 703
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/xt9/input/WriteChinese;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/xt9/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 707
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getCandidatesHiddenVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 708
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 721
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 722
    return-void

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-ne p3, p6, :cond_3

    if-eq p4, p6, :cond_1

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->acceptCurrentInline()V

    .line 717
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->clearArcs()V

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 719
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
