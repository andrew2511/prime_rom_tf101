.class public Lcom/nuance/xt9/input/ChineseInputView;
.super Lcom/nuance/xt9/input/InputView;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;
.implements Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;
    }
.end annotation


# static fields
.field private static final INPUT_MODE_BPMF:I = 0x1

.field private static final INPUT_MODE_CANGJIE:I = 0x3

.field private static final INPUT_MODE_PINYIN:I = 0x0

.field private static final INPUT_MODE_QUICK_CANGJIE:I = 0x4

.field private static final INPUT_MODE_STROKE:I = 0x2


# instance fields
.field private mAutoCorrectionMode:I

.field private mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

.field private mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

.field private mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

.field protected mDefaultWord:Landroid/text/SpannableStringBuilder;

.field private mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

.field private mGetMoreWordsHandler:Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;

.field mHandler:Landroid/os/Handler;

.field public mInsertText:Ljava/lang/StringBuilder;

.field private mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

.field private mMutitapMaxKeyTimeout:Z

.field private mNumericSelectionBPMF:Z

.field private mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

.field private mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

.field private mStrikethrough:Landroid/text/style/StrikethroughSpan;

.field private mUnderline:Landroid/text/style/UnderlineSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1127
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    .line 43
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 45
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 82
    new-instance v0, Lcom/nuance/xt9/input/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/ChineseInputView$1;-><init>(Lcom/nuance/xt9/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    .line 1128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1131
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    .line 43
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 45
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 82
    new-instance v0, Lcom/nuance/xt9/input/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/ChineseInputView$1;-><init>(Lcom/nuance/xt9/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    .line 1132
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/ChineseInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/ChineseInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->addMoreSuggestions()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/ChineseInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hideSpellView()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/ChineseInputView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateContext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/xt9/input/ChineseInputView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    return-void
.end method

.method private addMoreSuggestions()V
    .locals 2

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v1, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->getMoreWords()Ljava/util/List;

    move-result-object v0

    .line 1110
    .local v0, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/CandidatesListView;->setMoreSuggestions(Ljava/util/List;)V

    goto :goto_0
.end method

.method private flashError()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1234
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1236
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mStrikethrough:Landroid/text/style/StrikethroughSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1238
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1239
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1244
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1245
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/ChineseInputView;->updateBPMFInlineString(Z)V

    .line 1251
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    return-void

    .line 1247
    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/ChineseInputView;->updateInlineString(Z)V

    goto :goto_0
.end method

.method private handlePrediction(I[I)V
    .locals 9
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 898
    const/4 v2, 0x0

    .line 899
    .local v2, success:Z
    const/4 v3, 0x0

    .line 902
    .local v3, triedMT:Z
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isMultitapping()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    iget v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    if-eq v4, v5, :cond_3

    .line 903
    :cond_0
    const/4 v2, 0x0

    .line 956
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 957
    if-nez v3, :cond_2

    .line 958
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    .line 962
    :cond_2
    invoke-direct {p0, v8, v8}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 963
    return-void

    .line 906
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isMultitapping()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 907
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v5

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v2

    .line 908
    if-nez v2, :cond_7

    .line 909
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "cangjie"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "quick_cangjie"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    .line 915
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapTimeOut()V

    goto :goto_0

    .line 920
    :cond_6
    iput p1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    .line 921
    iget v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    iput v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    .line 922
    iget v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mTapCount:I

    iput v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidTapCount:I

    .line 923
    const/4 v3, 0x1

    goto :goto_0

    .line 927
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapClearInvalid()V

    goto :goto_0

    .line 931
    :cond_8
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "stroke"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    .line 932
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v5

    invoke-virtual {v4, v5, p1, v7}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v2

    goto/16 :goto_0

    .line 935
    :cond_9
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 937
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handlePrediction()Z

    .line 938
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    aget v5, p2, v7

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->addBPMFChar(C)V

    .line 939
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 944
    :cond_a
    const/4 v1, 0x1

    .line 945
    .local v1, len:I
    iget v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mAutoCorrectionMode:I

    if-eqz v4, :cond_b

    .line 946
    array-length v1, p2

    .line 949
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    aget v4, p2, v0

    if-lez v4, :cond_1

    .line 950
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v5

    aget v6, p2, v0

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v2

    .line 951
    if-nez v2, :cond_1

    .line 949
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleSeparator(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v1, 0x1

    .line 970
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    .line 981
    :goto_0
    return-void

    .line 977
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->sendKeyChar(C)V

    .line 980
    invoke-direct {p0, v1, v1}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0
.end method

.method private hasActiveKeySeq()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1310
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFStringLength()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    .line 1313
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1311
    goto :goto_0

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private hideSpellView()V
    .locals 1

    .prologue
    .line 1083
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 1084
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->hideSpellLayout()V

    .line 1085
    return-void
.end method

.method private highlightCandidateWord()V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->isShowingNextCandidatesPrediction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->disableHighlight()V

    goto :goto_0
.end method

.method private inputModeName2IntegralValue(Ljava/lang/String;)I
    .locals 2
    .parameter "inputModeName"

    .prologue
    .line 258
    const/4 v0, -0x1

    .line 260
    .local v0, inputMode:I
    const-string v1, "pinyin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 261
    const/4 v0, 0x0

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    const-string v1, "bpmf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 264
    const/4 v0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    const-string v1, "stroke"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 267
    const/4 v0, 0x2

    goto :goto_0

    .line 269
    :cond_3
    const-string v1, "cangjie"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 270
    const/4 v0, 0x3

    goto :goto_0

    .line 272
    :cond_4
    const-string v1, "quick_cangjie"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private isModeBPMF()Z
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "bpmf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isModeCangjie()Z
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "quick_cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isModePinyin()Z
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumericSelectionBPMF()Z
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mNumericSelectionBPMF:Z

    return v0
.end method

.method private postDelayHideSpellViewMsg()V
    .locals 4

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 1088
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1090
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1255
    const v4, 0x7f0e0002

    sget-object v5, Lcom/nuance/xt9/input/R$styleable;->InlineStringChinese:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1259
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 1261
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1262
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1264
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 1261
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1266
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1267
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    goto :goto_1

    .line 1272
    .end local v1           #attr:I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1275
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mStrikethrough:Landroid/text/style/StrikethroughSpan;

    .line 1277
    return-void

    .line 1264
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private removeDelayHideSpellViewMsg()V
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1093
    return-void
.end method

.method private selectDefault()V
    .locals 3

    .prologue
    .line 1153
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/xt9/input/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1154
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 1155
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapClearInvalid()V

    .line 1156
    return-void
.end method

.method private setPhoneticSymbols(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1350
    .local v1, symbols:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 1351
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1352
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1353
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1357
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->setPhoneticSymbols(Ljava/lang/String;)V

    .line 1358
    return-void
.end method

.method private updateBPMFInlineString(Z)V
    .locals 8
    .parameter "setEmptyComposingText"

    .prologue
    const/4 v7, 0x1

    .line 1200
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getSelectionMode()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1202
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/ChineseInputView;->setPhoneticSymbols(Ljava/lang/String;)V

    .line 1204
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->getCurrentHighlighted()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1205
    .local v0, hightlight:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1206
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1214
    .end local v0           #hightlight:Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1215
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1218
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1219
    :cond_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1220
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v2, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1221
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1223
    :cond_2
    return-void

    .line 1208
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/ChineseInputView;->setPhoneticSymbols(Ljava/lang/String;)V

    .line 1210
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1211
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private updateContext()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 330
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 349
    :goto_0
    return v3

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 335
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_2

    move v3, v4

    .line 337
    goto :goto_0

    .line 340
    :cond_2
    const/4 v3, 0x2

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 341
    .local v2, newContext:Ljava/lang/CharSequence;
    if-nez v2, :cond_3

    move v3, v4

    .line 343
    goto :goto_0

    .line 347
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v3, v2}, Lcom/nuance/xt9/input/ChineseInput;->updateContext(Ljava/lang/CharSequence;)Z

    move-result v1

    .local v1, needUpdate:Z
    move v3, v1

    .line 349
    goto :goto_0
.end method

.method private updateInlineString(Z)V
    .locals 7
    .parameter "setEmptyComposingText"

    .prologue
    const/16 v6, 0x121

    const/4 v5, 0x1

    .line 1164
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/ChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 1166
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1169
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mStrikethrough:Landroid/text/style/StrikethroughSpan;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1172
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1173
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1175
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1176
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1177
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1178
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1179
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1181
    :cond_3
    return-void
.end method

.method private updateListViews(ZZ)V
    .locals 3
    .parameter "updateSpells"
    .parameter "setEmptyComposingText"

    .prologue
    const/4 v2, 0x0

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSpellings()V

    .line 1058
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1059
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getSelectionMode()I

    move-result v0

    .line 1060
    .local v0, selectionMode:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1062
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSuggestions()V

    .line 1066
    :goto_0
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInputView;->updateBPMFInlineString(Z)V

    .line 1074
    .end local v0           #selectionMode:I
    :goto_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1075
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/SpellListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1076
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->requestLayout()V

    .line 1077
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->invalidate()V

    .line 1080
    return-void

    .line 1064
    .restart local v0       #selectionMode:I
    :cond_2
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInputView;->updateSuggestionsEmpty(Z)V

    goto :goto_0

    .line 1068
    .end local v0           #selectionMode:I
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSuggestions()V

    .line 1069
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInputView;->updateInlineString(Z)V

    goto :goto_1
.end method

.method private updateMaxKeyTimeout()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "quick_cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 1289
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 1296
    :goto_0
    return-void

    .line 1293
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    goto :goto_0
.end method

.method private updateSpellings()V
    .locals 4

    .prologue
    .line 987
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isAmbigousInput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/ChineseInput;->getSpells(Lcom/nuance/xt9/input/Int;)Ljava/util/List;

    move-result-object v0

    .line 989
    .local v0, spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 990
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/xt9/input/SpellListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 991
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 998
    .end local v0           #spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    return-void

    .line 994
    .restart local v0       #spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/SpellListView;->clear()V

    .line 995
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->postDelayHideSpellViewMsg()V

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1004
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v1, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1010
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isUDBShortcutSubstitutionField()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/xt9/input/ChineseInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;Z)Ljava/util/List;

    move-result-object v0

    .line 1011
    .local v0, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1014
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->isShowingNextCandidatesPrediction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1018
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    .line 1019
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 1020
    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/ChineseInputView;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 1022
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v6

    :goto_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 1027
    iget-boolean v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletionOn:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v6

    :goto_2
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 1028
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->highlightCandidateWord()V

    goto :goto_0

    :cond_4
    move v2, v5

    .line 1022
    goto :goto_1

    :cond_5
    move v1, v5

    .line 1027
    goto :goto_2
.end method

.method private updateSuggestionsEmpty(Z)V
    .locals 3
    .parameter "setEmptyComposingText"

    .prologue
    const/4 v2, 0x0

    .line 1036
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 1037
    if-eqz p1, :cond_1

    .line 1038
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletionOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 1040
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1038
    goto :goto_0
.end method


# virtual methods
.method public allowsMoreKey()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 865
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "quick_cangjie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 870
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    if-eqz v0, :cond_3

    move v0, v2

    .line 877
    :goto_0
    return v0

    .line 874
    :cond_2
    iput-boolean v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 877
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->toggleSymbols()V

    .line 860
    return-void
.end method

.method public clearBPMFSpellBuffer()V
    .locals 1

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    .line 1188
    :cond_0
    return-void
.end method

.method public create(Lcom/nuance/xt9/input/IME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 112
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseInput;->getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/ChineseInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    .line 113
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->create()Z

    .line 116
    new-instance v0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    .line 117
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setInputView(Lcom/nuance/xt9/input/InputView;)V

    .line 118
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->makeKeyboards()V

    .line 119
    new-instance v0, Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-direct {v0, p0, p0}, Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;-><init>(Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;

    .line 122
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->setProximityCorrectionEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->readStyles(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/ChineseInput;->loadConfiguration(Landroid/content/Context;)V

    .line 130
    new-instance v0, Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    .line 131
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->setOnSpellBufferClearedListener(Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "XT9IME.InputView"

    const-string v1, "can not create an instance of ChineseInput"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 173
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    .line 164
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->initViews(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    .line 165
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->getPhraseWordListView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    .line 166
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->getSpellWordListView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/SpellListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 169
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->setGetMoreWordsHandler(Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;)V

    .line 170
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 171
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->setParent(Lcom/nuance/xt9/input/InputView;)V

    .line 173
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 146
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->destroy()V

    .line 149
    :cond_0
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    .line 150
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    .line 151
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 6
    .parameter "completions"

    .prologue
    const/4 v5, 0x0

    .line 481
    iget-boolean v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletionOn:Z

    if-eqz v3, :cond_0

    .line 482
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 483
    if-nez p1, :cond_1

    .line 484
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eqz p1, :cond_3

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_4

    .line 490
    aget-object v0, p1, v1

    .line 491
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    move v3, v5

    goto :goto_2

    .line 493
    :cond_4
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    goto :goto_0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 1320
    const-string v0, "ChineseInputView"

    const-string v1, "ChineseInputView.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void
.end method

.method public finishInput()V
    .locals 3

    .prologue
    .line 281
    const-string v1, "XT9IME.InputView"

    const-string v2, "ChineseInputView::finishInput"

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 287
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->closing()V

    .line 289
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 290
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hideSpellView()V

    .line 291
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/SpellListView;->clear()V

    .line 292
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 297
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->finish()V

    .line 319
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 320
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 355
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 358
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 359
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 369
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapTimeOut()V

    .line 370
    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    .line 371
    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    .line 372
    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    .line 373
    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidTapCount:I

    .line 376
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    .line 379
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateContext()Z

    .line 380
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 381
    return-void
.end method

.method public handleBackspace(I)Z
    .locals 4
    .parameter "repeatedCount"

    .prologue
    const/4 v3, 0x1

    .line 706
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapClearInvalid()V

    .line 728
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 731
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 733
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 734
    const-string v1, ""

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 739
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateMaxKeyTimeout()V

    move v1, v3

    .line 740
    :goto_1
    return v1

    .line 711
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFStringLength()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 713
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleBackspace(Lcom/nuance/xt9/input/ChineseInput;)Z

    .line 714
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 715
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 716
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    .line 717
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 718
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/ChineseInputView;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 721
    :cond_4
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 722
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->clearKey()Z

    goto :goto_0

    .line 725
    :cond_5
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->handleBackspace(I)Z

    move-result v1

    goto :goto_1
.end method

.method public handleCharKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->sendKeyChar(C)V

    .line 702
    :goto_0
    return-void

    .line 669
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 670
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 675
    :cond_2
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 679
    :cond_3
    const/16 v0, 0x31

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v0

    if-nez v0, :cond_6

    .line 683
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_5

    .line 684
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->popupMiniKeyboard()Z

    goto :goto_0

    .line 687
    :cond_5
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 690
    :cond_6
    const/16 v0, 0x30

    if-gt v0, p1, :cond_7

    const/16 v0, 0x39

    if-gt p1, v0, :cond_7

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_7

    .line 693
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handlePrediction(I[I)V

    goto :goto_0

    .line 695
    :cond_7
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseInputView;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 696
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handleSeparator(I[I)V

    goto :goto_0

    .line 699
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handlePrediction(I[I)V

    goto :goto_0
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->finishInput()V

    .line 788
    return-void
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 599
    const/4 v7, 0x0

    .line 601
    .local v7, handled:Z
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_2

    .line 604
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v6

    move-object v0, p0

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/xt9/input/ChineseInputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v7

    .line 608
    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_1

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

    .line 613
    :cond_0
    const/4 v7, 0x1

    .line 617
    :cond_1
    if-nez v7, :cond_2

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handleKeyForPrediction(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 622
    :cond_2
    return v7
.end method

.method protected handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z
    .locals 17
    .parameter "preCandidate"
    .parameter "currCandidate"
    .parameter "nextCandidate"
    .parameter "keyCode"
    .parameter "event"
    .parameter "hasActiveKeySeq"

    .prologue
    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v16

    .line 505
    .local v16, isNumericSelectionEnabled:Z
    invoke-direct/range {p0 .. p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v15

    .line 506
    .local v15, isNumericSelectionBPMF:Z
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/xt9/input/CandidatesListView;->isShowingNextCandidatesPrediction()Z

    move-result v14

    .line 508
    .local v14, isNextCandidatePrediction:Z
    const/4 v12, 0x0

    .line 509
    .local v12, handled:Z
    const/4 v11, 0x0

    .line 511
    .local v11, doNotCallParent:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/ChineseInputView;->isCandidateReady(Lcom/nuance/xt9/input/CandidatesListView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 512
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/xt9/input/CandidatesListView;->isEnableHighlight()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 513
    const/16 v4, 0x42

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 514
    if-eqz v15, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleEnterKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInput;)Z

    move-result v12

    .line 538
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 539
    const/16 v4, 0x8

    move/from16 v0, p4

    move v1, v4

    if-lt v0, v1, :cond_c

    const/16 v4, 0x10

    move/from16 v0, p4

    move v1, v4

    if-gt v0, v1, :cond_c

    .line 540
    if-eqz v15, :cond_9

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    move-object v9, v0

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p0

    invoke-virtual/range {v4 .. v9}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleNumberKey(ILandroid/view/KeyEvent;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInput;)Z

    move-result v12

    .line 587
    :cond_1
    :goto_1
    if-nez v12, :cond_2

    if-nez v11, :cond_2

    .line 588
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v10

    move-object/from16 v4, p0

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-super/range {v4 .. v10}, Lcom/nuance/xt9/input/InputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v12

    .line 592
    :cond_2
    return v12

    .line 517
    :cond_3
    const/16 v4, 0x13

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_5

    .line 518
    if-eqz v15, :cond_4

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleDPadUpKey(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z

    move-result v12

    goto :goto_0

    .line 520
    :cond_4
    if-eqz v16, :cond_0

    .line 521
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToPreviousPageCycle()V

    .line 522
    const/4 v12, 0x1

    goto :goto_0

    .line 524
    :cond_5
    const/16 v4, 0x14

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 525
    if-eqz v15, :cond_6

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleDPadDownKey(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z

    move-result v12

    goto :goto_0

    .line 527
    :cond_6
    if-eqz v16, :cond_0

    .line 528
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToNextPageCycle()V

    .line 529
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 533
    :cond_7
    const/16 v4, 0x13

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_8

    const/16 v4, 0x14

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 534
    :cond_8
    move/from16 v11, v16

    goto/16 :goto_0

    .line 543
    :cond_9
    if-eqz v16, :cond_1

    .line 544
    if-nez v14, :cond_a

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    if-eqz v14, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p5

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 547
    :cond_b
    const/16 v4, 0x8

    sub-int v13, p4, v4

    .line 548
    .local v13, index:I
    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->selecetWord(I)Z

    move-result v12

    .line 549
    goto/16 :goto_1

    .line 551
    .end local v13           #index:I
    :cond_c
    const/16 v4, 0x5c

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_e

    .line 552
    if-eqz v15, :cond_d

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleDPadUpKey(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z

    move-result v12

    goto/16 :goto_1

    .line 554
    :cond_d
    if-eqz v16, :cond_1

    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToPreviousPageCycle()V

    .line 556
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 558
    :cond_e
    const/16 v4, 0x5d

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_10

    .line 559
    if-eqz v15, :cond_f

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleDPadDownKey(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z

    move-result v12

    goto/16 :goto_1

    .line 561
    :cond_f
    if-eqz v16, :cond_1

    .line 562
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToNextPageCycle()V

    .line 563
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 565
    :cond_10
    const/16 v4, 0x3e

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_12

    .line 566
    if-eqz v15, :cond_11

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleSpaceKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z

    move-result v12

    goto/16 :goto_1

    .line 568
    :cond_11
    if-eqz v16, :cond_1

    if-eqz v14, :cond_1

    .line 569
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToPreviousPageCycle()V

    .line 570
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 572
    :cond_12
    const/16 v4, 0x1d

    move/from16 v0, p4

    move v1, v4

    if-lt v0, v1, :cond_13

    const/16 v4, 0x36

    move/from16 v0, p4

    move v1, v4

    if-le v0, v1, :cond_14

    :cond_13
    const/4 v4, 0x7

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_14

    const/16 v4, 0x37

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_14

    const/16 v4, 0x4a

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_14

    const/16 v4, 0x38

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_14

    const/16 v4, 0x4c

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_14

    const/16 v4, 0x45

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_1

    .line 580
    :cond_14
    if-eqz v15, :cond_1

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleOtherKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInput;)Z

    move-result v12

    goto/16 :goto_1
.end method

.method protected handleKeyForPrediction(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isEnabledHardwareKeyboard()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1340
    :goto_0
    return v2

    .line 1331
    :cond_0
    const/4 v1, 0x0

    .line 1332
    .local v1, handled:Z
    invoke-static {p2}, Lcom/nuance/xt9/input/IME;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1334
    .local v0, ctrl:Z
    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handleKeyForKCM(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    move v2, v1

    .line 1340
    goto :goto_0

    .line 1337
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->handleKeyForPrediction(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 630
    :cond_0
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleSelectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 7
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 824
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 827
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-boolean v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletionOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    if-ge p1, v2, :cond_1

    .line 828
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v2, p1

    .line 829
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v1, :cond_0

    .line 830
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 831
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseInput;->setContext(Ljava/lang/CharSequence;)V

    .line 834
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 854
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-ne p3, v2, :cond_3

    .line 840
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, v3}, Lcom/nuance/xt9/input/ChineseInput;->selectWord(ILjava/lang/StringBuilder;)Z

    .line 843
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 844
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 845
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseInput;->setContext(Ljava/lang/CharSequence;)V

    .line 847
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapClearInvalid()V

    .line 848
    invoke-direct {p0, v4, v4}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 851
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2, p1}, Lcom/nuance/xt9/input/ChineseInput;->setActiveSpellIndex(I)Z

    .line 852
    invoke-direct {p0, v5, v4}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0
.end method

.method public handleShift()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->toggleAltSymbolPage()V

    .line 783
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 3
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/4 v2, 0x1

    .line 745
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 746
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeCangjie()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->selectDefault()V

    .line 777
    :goto_0
    return v2

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v1

    if-nez v1, :cond_3

    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, success:Z
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeBPMF()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/ChineseInputView;->handleTone(I)Z

    move-result v0

    .line 762
    :goto_1
    if-eqz v0, :cond_2

    .line 763
    invoke-direct {p0, v2, v2}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 759
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->cycleTone()Z

    move-result v0

    goto :goto_1

    .line 766
    :cond_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 770
    .end local v0           #success:Z
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 775
    :cond_4
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0
.end method

.method protected handleTone(I)Z
    .locals 6
    .parameter "tone"

    .prologue
    const/4 v5, 0x1

    .line 793
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 796
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v0

    .line 798
    .local v0, isNumericSelectionEnabled:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleTone(ILcom/nuance/xt9/input/ChineseInput;I)Z

    move-result v2

    move v1, v2

    .line 802
    .local v1, success:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 803
    invoke-direct {p0, v5, v5}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 811
    .end local v0           #isNumericSelectionEnabled:Z
    .end local v1           #success:Z
    :cond_0
    :goto_1
    return v5

    .line 798
    .restart local v0       #isNumericSelectionEnabled:Z
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2, p1}, Lcom/nuance/xt9/input/ChineseInput;->addTone(I)Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 805
    .restart local v1       #success:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 806
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 808
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_1
.end method

.method public isShowShiftAnnotation()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1191
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getSelectionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 1194
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1192
    goto :goto_0

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->isShowingNextCandidatesPrediction()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateMaxKeyTimeout()V

    .line 1301
    return-void
.end method

.method public onSpellBufferCleared()V
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->setPhoneticSymbols(Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 641
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/ChineseInputView;->isPunctuationOrSymbol(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 646
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    const v3, 0xffff

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v1

    .line 647
    .local v1, success:Z
    if-nez v1, :cond_1

    .line 648
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    .line 650
    :cond_1
    invoke-direct {p0, v6, v6}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 652
    .end local v1           #success:Z
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_4

    .line 653
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 654
    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 655
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 658
    :cond_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0
.end method

.method public postAddMoreSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1121
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1124
    :cond_0
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 2
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    check-cast p3, Lcom/nuance/xt9/input/CandidatesListView;

    .end local p3
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0, p1, p3, p0, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleTouchSelectWord(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInput;)V

    .line 821
    :goto_0
    return-void

    .line 819
    .restart local p3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/xt9/input/ChineseInputView;->handleSelectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 10
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 187
    const-string v3, "XT9IME.InputView"

    const-string v4, "ChineseInputView::startInputView"

    invoke-static {v3, v4}, Lcom/nuance/xt9/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v3, :cond_0

    .line 250
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->finishInput()V

    .line 195
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, enableNameInput:Z
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 198
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "auto_correction_mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mAutoCorrectionMode:I

    .line 203
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isShortMessageField()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    const/4 v4, 0x6

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 214
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 215
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/ChineseInput;->start()Z

    .line 218
    const-string v3, "XT9IME.InputView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChineseInput.setLanguage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v5, v5, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/xt9/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/ChineseInput;->setLanguage(I)Z

    .line 221
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/ChineseInputView;->inputModeName2IntegralValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/ChineseInput;->setInputMode(I)Z

    .line 222
    if-eqz v0, :cond_4

    .line 225
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v3, v9, v8}, Lcom/nuance/xt9/input/ChineseInput;->setAttribute(II)Z

    .line 232
    :goto_2
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    const/16 v4, 0x65

    iget v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mFuzzyPinyin:I

    invoke-virtual {v3, v4, v5}, Lcom/nuance/xt9/input/ChineseInput;->setAttribute(II)Z

    .line 235
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/IME;->isHardwareKeyboardPresented()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeBPMF()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModePinyin()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeCangjie()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v1, v8

    .line 237
    .local v1, numericSelectionEnabled:Z
    :goto_3
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v3, v1}, Lcom/nuance/xt9/input/CandidatesListView;->enableNumericSelection(Z)V

    .line 238
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/IME;->isHardwareKeyboardPresented()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeBPMF()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v8

    :goto_4
    iput-boolean v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mNumericSelectionBPMF:Z

    .line 241
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v3, v7}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->setVisibility(I)V

    .line 242
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v3, v7}, Lcom/nuance/xt9/input/CandidatesListView;->setVisibility(I)V

    .line 245
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iput-boolean v7, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 247
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hideSpellView()V

    .line 248
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/ChineseInput;->updateContext(Ljava/lang/CharSequence;)Z

    goto/16 :goto_0

    .line 206
    .end local v1           #numericSelectionEnabled:Z
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isNameField()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    const/4 v0, 0x1

    .line 208
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3, v8, v4, v5}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    goto/16 :goto_1

    .line 211
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3, v8, v4, v5}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    goto/16 :goto_1

    .line 230
    :cond_4
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v3, v9, v7}, Lcom/nuance/xt9/input/ChineseInput;->setAttribute(II)Z

    goto :goto_2

    :cond_5
    move v1, v7

    .line 235
    goto :goto_3

    .restart local v1       #numericSelectionEnabled:Z
    :cond_6
    move v3, v7

    .line 238
    goto :goto_4
.end method

.method public updateSelection(IIIIII)V
    .locals 12
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newStart"
    .parameter "newEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 389
    invoke-super/range {p0 .. p6}, Lcom/nuance/xt9/input/InputView;->updateSelection(IIIIII)V

    .line 392
    const/4 v7, 0x0

    .line 396
    .local v7, needUpdate:Z
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    .line 397
    .local v4, hasActiveKeySeq:Z
    move v0, p3

    move/from16 v1, p6

    if-ne v0, v1, :cond_0

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_6

    :cond_0
    const/4 v9, 0x1

    move v2, v9

    .line 398
    .local v2, cursorChange:Z
    :goto_0
    const/4 v9, -0x1

    move/from16 v0, p5

    move v1, v9

    if-ne v0, v1, :cond_7

    const/4 v9, -0x1

    move/from16 v0, p6

    move v1, v9

    if-ne v0, v1, :cond_7

    const/4 v9, 0x1

    move v8, v9

    .line 399
    .local v8, noCandidate:Z
    :goto_1
    const/4 v9, -0x1

    move/from16 v0, p5

    move v1, v9

    if-eq v0, v1, :cond_8

    const/4 v9, -0x1

    move/from16 v0, p6

    move v1, v9

    if-eq v0, v1, :cond_8

    const/4 v9, 0x1

    move v5, v9

    .line 401
    .local v5, hasCandidate:Z
    :goto_2
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_9

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v5, :cond_9

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 405
    .local v6, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_2

    .line 406
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 409
    :cond_2
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 410
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 413
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapTimeOut()V

    .line 414
    const/4 v9, -0x1

    iput v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    .line 415
    const/4 v9, -0x1

    iput v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    .line 416
    const/4 v9, -0x1

    iput v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    .line 417
    const/4 v9, -0x1

    iput v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidTapCount:I

    .line 419
    const/4 v7, 0x1

    .line 422
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    .line 463
    .end local v6           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->dismissPopupKeyboard()V

    .line 465
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateContext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 468
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/CandidatesListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 469
    const/4 v7, 0x1

    .line 474
    :cond_4
    if-eqz v7, :cond_5

    .line 475
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 477
    :cond_5
    :goto_4
    return-void

    .line 397
    .end local v2           #cursorChange:Z
    .end local v5           #hasCandidate:Z
    .end local v8           #noCandidate:Z
    :cond_6
    const/4 v9, 0x0

    move v2, v9

    goto :goto_0

    .line 398
    .restart local v2       #cursorChange:Z
    :cond_7
    const/4 v9, 0x0

    move v8, v9

    goto :goto_1

    .line 399
    .restart local v8       #noCandidate:Z
    :cond_8
    const/4 v9, 0x0

    move v5, v9

    goto :goto_2

    .line 424
    .restart local v5       #hasCandidate:Z
    :cond_9
    if-ne p1, p2, :cond_a

    if-ne p1, p3, :cond_a

    move v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_a

    if-eqz v8, :cond_a

    .line 431
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->dismissPopupKeyboard()V

    goto :goto_4

    .line 433
    :cond_a
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v9, :cond_3

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v4, :cond_3

    if-eqz v8, :cond_3

    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, doNotClear:Z
    if-le p3, p1, :cond_b

    move/from16 v0, p4

    move v1, p3

    if-ne v0, v1, :cond_b

    .line 439
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 440
    .restart local v6       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_b

    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 441
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 443
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 447
    .end local v6           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_b
    if-nez v3, :cond_3

    .line 449
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapTimeOut()V

    .line 450
    const/4 v9, -0x1

    iput v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    .line 451
    const/4 v9, -0x1

    iput v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    .line 452
    const/4 v9, -0x1

    iput v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    .line 453
    const/4 v9, -0x1

    iput v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidTapCount:I

    .line 455
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 456
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 457
    iget-object v9, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v9}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    goto/16 :goto_3
.end method
