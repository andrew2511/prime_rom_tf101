.class public Lcom/nuance/xt9/input/ChineseInputView;
.super Lcom/nuance/xt9/input/InputView;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;


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
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1073
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    .line 37
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 41
    new-instance v0, Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    .line 76
    new-instance v0, Lcom/nuance/xt9/input/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/ChineseInputView$1;-><init>(Lcom/nuance/xt9/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    .line 1074
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1077
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    .line 37
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 41
    new-instance v0, Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    .line 76
    new-instance v0, Lcom/nuance/xt9/input/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/ChineseInputView$1;-><init>(Lcom/nuance/xt9/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    .line 1078
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/ChineseInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/ChineseInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->addMoreSuggestions()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/ChineseInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hideSpellView()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/ChineseInputView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
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
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    return-void
.end method

.method private addMoreSuggestions()V
    .locals 2

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v1, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->getMoreWords()Ljava/util/List;

    move-result-object v0

    .line 1056
    .local v0, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/CandidatesListView;->setMoreSuggestions(Ljava/util/List;)V

    goto :goto_0
.end method

.method private flashError()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1198
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1200
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mStrikethrough:Landroid/text/style/StrikethroughSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1202
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1203
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1208
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1209
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateBPMFInlineString()V

    .line 1215
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    return-void

    .line 1211
    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/ChineseInputView;->updateInlineString(Z)V

    goto :goto_0
.end method

.method private handlePrediction(I[I)V
    .locals 10
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 840
    const/4 v3, 0x0

    .line 841
    .local v3, success:Z
    const/4 v4, 0x0

    .line 844
    .local v4, triedMT:Z
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    iget v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    if-eq v5, v6, :cond_4

    .line 845
    :cond_0
    const/4 v3, 0x0

    .line 900
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 901
    if-nez v4, :cond_2

    .line 902
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    .line 906
    :cond_2
    invoke-direct {p0, v9, v9}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 909
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 910
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    .line 913
    :cond_3
    return-void

    .line 848
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 849
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v6

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v3

    .line 850
    if-nez v3, :cond_8

    .line 851
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    iget-object v5, v5, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v6, "cangjie"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    iget-object v5, v5, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v6, "quick_cangjie"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_7

    .line 857
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapTimeOut()V

    goto :goto_0

    .line 862
    :cond_7
    iput p1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    .line 863
    iget v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    iput v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    .line 864
    iget v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mTapCount:I

    iput v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidTapCount:I

    .line 865
    const/4 v4, 0x1

    goto :goto_0

    .line 869
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapClearInvalid()V

    goto :goto_0

    .line 873
    :cond_9
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    iget-object v5, v5, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v6, "stroke"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a

    .line 874
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v6

    invoke-virtual {v5, v6, p1, v8}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v3

    goto/16 :goto_0

    .line 877
    :cond_a
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 879
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handlePrediction()Z

    .line 880
    aget v5, p2, v8

    int-to-char v1, v5

    .line 882
    .local v1, keycode:C
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v5, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->addBPMFChar(C)V

    .line 883
    const/4 v3, 0x1

    .line 884
    goto/16 :goto_0

    .line 888
    .end local v1           #keycode:C
    :cond_b
    const/4 v2, 0x1

    .line 889
    .local v2, len:I
    iget v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mAutoCorrectionMode:I

    if-eqz v5, :cond_c

    .line 890
    array-length v2, p2

    .line 893
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    aget v5, p2, v0

    if-lez v5, :cond_1

    .line 894
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v6

    aget v7, p2, v0

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v3

    .line 895
    if-nez v3, :cond_1

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleSeparator(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v1, 0x1

    .line 920
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    .line 931
    :goto_0
    return-void

    .line 927
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->sendKeyChar(C)V

    .line 930
    invoke-direct {p0, v1, v1}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0
.end method

.method private hasActiveKeySeq()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1274
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFStringLength()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    .line 1277
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1275
    goto :goto_0

    .line 1277
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
    .line 1029
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 1030
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->hideSpellLayout()V

    .line 1031
    return-void
.end method

.method private inputModeName2IntegralValue(Ljava/lang/String;)I
    .locals 2
    .parameter "inputModeName"

    .prologue
    .line 250
    const/4 v0, -0x1

    .line 252
    .local v0, inputMode:I
    const-string v1, "pinyin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 253
    const/4 v0, 0x0

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    const-string v1, "bpmf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 256
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :cond_2
    const-string v1, "stroke"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 259
    const/4 v0, 0x2

    goto :goto_0

    .line 261
    :cond_3
    const-string v1, "cangjie"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 262
    const/4 v0, 0x3

    goto :goto_0

    .line 264
    :cond_4
    const-string v1, "quick_cangjie"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private isModeBPMF()Z
    .locals 2

    .prologue
    .line 1091
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
    .line 1081
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
    .line 1086
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
    .line 1190
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mNumericSelectionBPMF:Z

    return v0
.end method

.method private postDelayHideSpellViewMsg()V
    .locals 4

    .prologue
    .line 1033
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 1034
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1036
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1219
    const v4, 0x7f0e0002

    sget-object v5, Lcom/nuance/xt9/input/R$styleable;->InlineStringChinese:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1223
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 1225
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1226
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1228
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 1225
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1230
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1231
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    goto :goto_1

    .line 1236
    .end local v1           #attr:I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1239
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mStrikethrough:Landroid/text/style/StrikethroughSpan;

    .line 1241
    return-void

    .line 1228
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private removeDelayHideSpellViewMsg()V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1039
    return-void
.end method

.method private selectDefault()V
    .locals 3

    .prologue
    .line 1099
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/xt9/input/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1100
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 1101
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapClearInvalid()V

    .line 1102
    return-void
.end method

.method private updateBPMFInlineString()V
    .locals 8

    .prologue
    const/16 v7, 0x121

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1142
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getSelectionMode()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1144
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->getCurrentHighlighted()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1145
    .local v0, hightlight:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1146
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1148
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1149
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1152
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 1153
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1154
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v2, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1155
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1171
    .end local v0           #hightlight:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 1158
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1159
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1161
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1162
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1164
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1165
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 1166
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1167
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v2, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1168
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method private updateBPMFInlineString(C)V
    .locals 6
    .parameter "bpmfchar"

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1, p1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->addBPMFChar(C)V

    .line 1175
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1176
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1178
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1182
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1183
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1184
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1185
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1187
    :cond_1
    return-void
.end method

.method private updateContext()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 321
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 340
    :goto_0
    return v3

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 326
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_2

    move v3, v4

    .line 328
    goto :goto_0

    .line 331
    :cond_2
    const/4 v3, 0x2

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 332
    .local v2, newContext:Ljava/lang/CharSequence;
    if-nez v2, :cond_3

    move v3, v4

    .line 334
    goto :goto_0

    .line 338
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v3, v2}, Lcom/nuance/xt9/input/ChineseInput;->updateContext(Ljava/lang/CharSequence;)Z

    move-result v1

    .local v1, needUpdate:Z
    move v3, v1

    .line 340
    goto :goto_0
.end method

.method private updateInlineString(Z)V
    .locals 7
    .parameter "setEmptyComposingText"

    .prologue
    const/16 v6, 0x121

    const/4 v5, 0x1

    .line 1110
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/ChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 1112
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1115
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

    .line 1118
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1121
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1122
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1123
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1124
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1125
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1127
    :cond_3
    return-void
.end method

.method private updateListViews(ZZ)V
    .locals 3
    .parameter "updateSpells"
    .parameter "setEmptyComposingText"

    .prologue
    const/4 v2, 0x0

    .line 999
    if-eqz p1, :cond_0

    .line 1000
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSpellings()V

    .line 1004
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1005
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getSelectionMode()I

    move-result v0

    .line 1006
    .local v0, selectionMode:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1008
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSuggestions()V

    .line 1012
    :goto_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateBPMFInlineString()V

    .line 1020
    .end local v0           #selectionMode:I
    :goto_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1021
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/SpellListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1022
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->requestLayout()V

    .line 1023
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->invalidate()V

    .line 1026
    return-void

    .line 1010
    .restart local v0       #selectionMode:I
    :cond_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSuggestionsEmpty()V

    goto :goto_0

    .line 1014
    .end local v0           #selectionMode:I
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateSuggestions()V

    .line 1015
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInputView;->updateInlineString(Z)V

    goto :goto_1
.end method

.method private updateMaxKeyTimeout()V
    .locals 2

    .prologue
    .line 1248
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

    .line 1253
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 1260
    :goto_0
    return-void

    .line 1257
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    goto :goto_0
.end method

.method private updateSpellings()V
    .locals 4

    .prologue
    .line 937
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isAmbigousInput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/ChineseInput;->getSpells(Lcom/nuance/xt9/input/Int;)Ljava/util/List;

    move-result-object v0

    .line 939
    .local v0, spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultSpellIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/xt9/input/SpellListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 941
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 948
    .end local v0           #spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    return-void

    .line 944
    .restart local v0       #spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/SpellListView;->clear()V

    .line 945
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->postDelayHideSpellViewMsg()V

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 954
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 960
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isUDBShortcutSubstitutionField()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/xt9/input/ChineseInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;Z)Ljava/util/List;

    move-result-object v0

    .line 961
    .local v0, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 962
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v6

    :goto_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 965
    iget-boolean v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletionOn:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    move v1, v6

    :goto_2
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/ChineseInputView;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_3
    move v2, v5

    .line 962
    goto :goto_1

    :cond_4
    move v1, v5

    .line 965
    goto :goto_2
.end method

.method private updateSuggestionsEmpty()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 972
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 974
    .local v4, strBPMF:[C
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7, v7}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 975
    invoke-virtual {p0, v7}, Lcom/nuance/xt9/input/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 979
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFStringLength()I

    move-result v5

    if-nez v5, :cond_0

    .line 982
    move-object v0, v4

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 983
    .local v1, ch:C
    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v5, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->addBPMFChar(C)V

    .line 982
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 986
    .end local v0           #arr$:[C
    .end local v1           #ch:C
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method


# virtual methods
.method public allowsMoreKey()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 807
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

    .line 812
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    if-eqz v0, :cond_3

    move v0, v2

    .line 819
    :goto_0
    return v0

    .line 816
    :cond_2
    iput-boolean v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 819
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->toggleSymbols()V

    .line 802
    return-void
.end method

.method public clearBPMFSpellBuffer()V
    .locals 1

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    .line 1134
    :cond_0
    return-void
.end method

.method public create(Lcom/nuance/xt9/input/IME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 106
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/ChineseInput;->getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/ChineseInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    .line 107
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->create()Z

    .line 110
    new-instance v0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    .line 111
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setInputView(Lcom/nuance/xt9/input/InputView;)V

    .line 112
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->makeKeyboards()V

    .line 113
    new-instance v0, Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-direct {v0, p0, p0}, Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;-><init>(Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;

    .line 116
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->setProximityCorrectionEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->readStyles(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/ChineseInput;->loadConfiguration(Landroid/content/Context;)V

    .line 126
    :goto_0
    return-void

    .line 124
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

    .line 147
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 163
    :goto_0
    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    .line 153
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->initViews(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    .line 154
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->getPhraseWordListView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    .line 155
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->getSpellWordListView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/SpellListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 158
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->setGetMoreWordsHandler(Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;)V

    .line 160
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 161
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->setParent(Lcom/nuance/xt9/input/InputView;)V

    .line 163
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 135
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->destroy()V

    .line 138
    :cond_0
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    .line 139
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    .line 140
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 6
    .parameter "completions"

    .prologue
    const/4 v5, 0x0

    .line 457
    iget-boolean v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletionOn:Z

    if-eqz v3, :cond_0

    .line 458
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 459
    if-nez p1, :cond_1

    .line 460
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eqz p1, :cond_3

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_4

    .line 466
    aget-object v0, p1, v1

    .line 467
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    move v3, v5

    goto :goto_2

    .line 469
    :cond_4
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    goto :goto_0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 1284
    const-string v0, "ChineseInputView"

    const-string v1, "ChineseInputView.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-void
.end method

.method public finishInput()V
    .locals 3

    .prologue
    .line 273
    const-string v1, "XT9IME.InputView"

    const-string v2, "ChineseInputView::finishInput"

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 279
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->closing()V

    .line 281
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->removeDelayHideSpellViewMsg()V

    .line 282
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hideSpellView()V

    .line 283
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellWordListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/SpellListView;->clear()V

    .line 284
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 289
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 290
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->finish()V

    .line 311
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 346
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 349
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 350
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 360
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapTimeOut()V

    .line 361
    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    .line 362
    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    .line 363
    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    .line 364
    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidTapCount:I

    .line 367
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    .line 370
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateContext()Z

    .line 371
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 372
    return-void
.end method

.method public handleBackspace(I)Z
    .locals 5
    .parameter "repeatedCount"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 645
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapClearInvalid()V

    .line 663
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 666
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 668
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 669
    const-string v1, ""

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 674
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateMaxKeyTimeout()V

    move v1, v3

    .line 675
    :goto_1
    return v1

    .line 650
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

    .line 652
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleBackspace(Lcom/nuance/xt9/input/ChineseInput;)Z

    .line 653
    invoke-direct {p0, v4, v4}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 656
    :cond_3
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 657
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->clearKey()Z

    goto :goto_0

    .line 660
    :cond_4
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->handleBackspace(I)Z

    move-result v1

    goto :goto_1
.end method

.method public handleCharKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->sendKeyChar(C)V

    .line 641
    :goto_0
    return-void

    .line 608
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 609
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 614
    :cond_2
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 618
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

    .line 622
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_5

    .line 623
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->popupMiniKeyboard()Z

    goto :goto_0

    .line 626
    :cond_5
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 629
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

    .line 632
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handlePrediction(I[I)V

    goto :goto_0

    .line 634
    :cond_7
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseInputView;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 635
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handleSeparator(I[I)V

    goto :goto_0

    .line 638
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handlePrediction(I[I)V

    goto :goto_0
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->finishInput()V

    .line 747
    return-void
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 538
    const/4 v7, 0x0

    .line 540
    .local v7, handled:Z
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_2

    .line 543
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v6

    move-object v0, p0

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/xt9/input/ChineseInputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v7

    .line 547
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

    .line 552
    :cond_0
    const/4 v7, 0x1

    .line 556
    :cond_1
    if-nez v7, :cond_2

    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handleKeyForPrediction(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 561
    :cond_2
    return v7
.end method

.method protected handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "preCandidate"
    .parameter "currCandidate"
    .parameter "nextCandidate"
    .parameter "keyCode"
    .parameter "event"
    .parameter "hasActiveKeySeq"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v10

    .line 481
    .local v10, isNumericSelectionEnabled:Z
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v9

    .line 483
    .local v9, isNumericSelectionBPMF:Z
    const/4 v7, 0x0

    .line 484
    .local v7, handled:Z
    invoke-virtual {p0, p2}, Lcom/nuance/xt9/input/ChineseInputView;->isCandidateReady(Lcom/nuance/xt9/input/CandidatesListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/16 v0, 0x8

    if-lt p4, v0, :cond_3

    const/16 v0, 0x10

    if-gt p4, v0, :cond_3

    .line 486
    if-eqz v9, :cond_2

    .line 487
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    move v1, p4

    move-object/from16 v2, p5

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleNumberKey(ILandroid/view/KeyEvent;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInput;)Z

    move-result v7

    .line 526
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 527
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v6

    move-object v0, p0

    move v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v6}, Lcom/nuance/xt9/input/InputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v7

    .line 531
    :cond_1
    return v7

    .line 489
    :cond_2
    if-eqz v10, :cond_0

    .line 490
    const/16 v0, 0x8

    sub-int v8, p4, v0

    .line 491
    .local v8, index:I
    invoke-virtual {p2, v8}, Lcom/nuance/xt9/input/CandidatesListView;->selecetWord(I)Z

    move-result v7

    .line 492
    goto :goto_0

    .line 493
    .end local v8           #index:I
    :cond_3
    const/16 v0, 0x42

    if-ne p4, v0, :cond_4

    .line 494
    if-eqz v9, :cond_0

    .line 495
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0, p2, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleEnterKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInput;)Z

    move-result v7

    goto :goto_0

    .line 497
    :cond_4
    const/16 v0, 0x13

    if-eq p4, v0, :cond_5

    const/16 v0, 0x14

    if-ne p4, v0, :cond_8

    .line 498
    :cond_5
    if-eqz v9, :cond_6

    .line 499
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0, p4, p2, p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleDPadUpDownKey(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z

    move-result v7

    goto :goto_0

    .line 500
    :cond_6
    if-eqz v10, :cond_0

    .line 501
    const/16 v0, 0x13

    if-ne p4, v0, :cond_7

    .line 502
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToPreviousPageCycle()V

    .line 506
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 504
    :cond_7
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToNextPageCycle()V

    goto :goto_1

    .line 508
    :cond_8
    const/16 v0, 0x3e

    if-ne p4, v0, :cond_9

    .line 509
    if-eqz v9, :cond_0

    .line 510
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0, p2, p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleSpaceKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z

    move-result v7

    goto :goto_0

    .line 512
    :cond_9
    const/16 v0, 0x1d

    if-lt p4, v0, :cond_a

    const/16 v0, 0x36

    if-le p4, v0, :cond_b

    :cond_a
    const/4 v0, 0x7

    if-eq p4, v0, :cond_b

    const/16 v0, 0x37

    if-eq p4, v0, :cond_b

    const/16 v0, 0x4a

    if-eq p4, v0, :cond_b

    const/16 v0, 0x38

    if-eq p4, v0, :cond_b

    const/16 v0, 0x4c

    if-eq p4, v0, :cond_b

    const/16 v0, 0x45

    if-ne p4, v0, :cond_0

    .line 520
    :cond_b
    if-eqz v9, :cond_0

    .line 521
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0, p2, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleOtherKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInput;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method protected handleKeyForPrediction(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isEnabledHardwareKeyboard()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1303
    :goto_0
    return v2

    .line 1294
    :cond_0
    const/4 v1, 0x0

    .line 1295
    .local v1, handled:Z
    invoke-static {p2}, Lcom/nuance/xt9/input/IME;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1297
    .local v0, ctrl:Z
    if-eqz v0, :cond_1

    .line 1298
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handleKeyForKCM(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    move v2, v1

    .line 1303
    goto :goto_0

    .line 1300
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
    .line 567
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

    .line 569
    :cond_0
    const/4 v0, 0x1

    .line 571
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

    .line 760
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 763
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-boolean v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletionOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v2, :cond_2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 764
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v2, p1

    .line 765
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v1, :cond_0

    .line 766
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 767
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseInput;->setContext(Ljava/lang/CharSequence;)V

    .line 770
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 796
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_1
    :goto_0
    return-void

    .line 774
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-ne p3, v2, :cond_4

    .line 776
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, v3}, Lcom/nuance/xt9/input/ChineseInput;->selectWord(ILjava/lang/StringBuilder;)Z

    .line 779
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz v1, :cond_3

    .line 780
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 781
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseInput;->setContext(Ljava/lang/CharSequence;)V

    .line 783
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapClearInvalid()V

    .line 784
    invoke-direct {p0, v4, v4}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 792
    :goto_1
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 793
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    goto :goto_0

    .line 787
    :cond_4
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2, p1}, Lcom/nuance/xt9/input/ChineseInput;->setActiveSpellIndex(I)Z

    .line 788
    invoke-direct {p0, v5, v4}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_1
.end method

.method public handleShift()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->toggleAltSymbolPage()V

    .line 742
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 3
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/4 v2, 0x1

    .line 680
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 681
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeCangjie()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->selectDefault()V

    .line 712
    :goto_0
    return v2

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v1

    if-nez v1, :cond_3

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, success:Z
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isModeBPMF()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/ChineseInputView;->handleTone(I)Z

    move-result v0

    .line 697
    :goto_1
    if-eqz v0, :cond_2

    .line 698
    invoke-direct {p0, v2, v2}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseInput;->cycleTone()Z

    move-result v0

    goto :goto_1

    .line 701
    :cond_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 705
    .end local v0           #success:Z
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0

    .line 710
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

    .line 718
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

    .line 721
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->isNumericSelectionEnabled()Z

    move-result v0

    .line 723
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

    .line 727
    .local v1, success:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 728
    invoke-direct {p0, v5, v5}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 736
    .end local v0           #isNumericSelectionEnabled:Z
    .end local v1           #success:Z
    :cond_0
    :goto_1
    return v5

    .line 723
    .restart local v0       #isNumericSelectionEnabled:Z
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2, p1}, Lcom/nuance/xt9/input/ChineseInput;->addTone(I)Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 730
    .restart local v1       #success:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 731
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 733
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_1
.end method

.method public isShowShiftAnnotation()Z
    .locals 2

    .prologue
    .line 1137
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getSelectionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 1264
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateMaxKeyTimeout()V

    .line 1265
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 580
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 582
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

    .line 585
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    const v3, 0xffff

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v1

    .line 586
    .local v1, success:Z
    if-nez v1, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    .line 589
    :cond_1
    invoke-direct {p0, v6, v6}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 591
    .end local v1           #success:Z
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_4

    .line 592
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 593
    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 594
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 597
    :cond_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->flashError()V

    goto :goto_0
.end method

.method public postAddMoreSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1067
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1070
    :cond_0
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 2
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    check-cast p3, Lcom/nuance/xt9/input/CandidatesListView;

    .end local p3
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0, p1, p3, p0, v1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->handleTouchSelectWord(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInput;)V

    .line 757
    :goto_0
    return-void

    .line 755
    .restart local p3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/xt9/input/ChineseInputView;->handleSelectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 9
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 177
    const-string v2, "XT9IME.InputView"

    const-string v3, "ChineseInputView::startInputView"

    invoke-static {v2, v3}, Lcom/nuance/xt9/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v2, :cond_0

    .line 242
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->finishInput()V

    .line 185
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, enableNameInput:Z
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 188
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "auto_correction_mode"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mAutoCorrectionMode:I

    .line 193
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isShortMessageField()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    const/4 v3, 0x6

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 204
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 205
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseInput;->start()Z

    .line 210
    const-string v2, "XT9IME.InputView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mChineseInput.setLanguage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/xt9/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseInput;->setLanguage(I)Z

    .line 213
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/ChineseInputView;->inputModeName2IntegralValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseInput;->setInputMode(I)Z

    .line 214
    if-eqz v0, :cond_3

    .line 217
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2, v8, v7}, Lcom/nuance/xt9/input/ChineseInput;->setAttribute(II)Z

    .line 224
    :goto_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    const/16 v3, 0x65

    iget v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mFuzzyPinyin:I

    invoke-virtual {v2, v3, v4}, Lcom/nuance/xt9/input/ChineseInput;->setAttribute(II)Z

    .line 233
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v2, v6}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2, v6}, Lcom/nuance/xt9/input/CandidatesListView;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    iput-boolean v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 239
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hideSpellView()V

    .line 240
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseInput;->updateContext(Ljava/lang/CharSequence;)Z

    goto/16 :goto_0

    .line 196
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isNameField()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    const/4 v0, 0x1

    .line 198
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2, v7, v3, v4}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    goto/16 :goto_1

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2, v7, v3, v4}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    goto/16 :goto_1

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v2, v8, v6}, Lcom/nuance/xt9/input/ChineseInput;->setAttribute(II)Z

    goto :goto_2
.end method

.method public updateSelection(IIIIII)V
    .locals 8
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newStart"
    .parameter "newEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 380
    invoke-super/range {p0 .. p6}, Lcom/nuance/xt9/input/InputView;->updateSelection(IIIIII)V

    .line 383
    const/4 v4, 0x0

    .line 387
    .local v4, needUpdate:Z
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    .line 388
    .local v1, hasActiveKeySeq:Z
    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_6

    :cond_0
    const/4 v6, 0x1

    move v0, v6

    .line 389
    .local v0, cursorChange:Z
    :goto_0
    const/4 v6, -0x1

    if-ne p5, v6, :cond_7

    const/4 v6, -0x1

    if-ne p6, v6, :cond_7

    const/4 v6, 0x1

    move v5, v6

    .line 390
    .local v5, noCandidate:Z
    :goto_1
    const/4 v6, -0x1

    if-eq p5, v6, :cond_8

    const/4 v6, -0x1

    if-eq p6, v6, :cond_8

    const/4 v6, 0x1

    move v2, v6

    .line 392
    .local v2, hasCandidate:Z
    :goto_2
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_9

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v2, :cond_9

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 396
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_2

    .line 397
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 400
    :cond_2
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 401
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 404
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapTimeOut()V

    .line 405
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    .line 406
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    .line 407
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    .line 408
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidTapCount:I

    .line 410
    const/4 v4, 0x1

    .line 413
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    .line 442
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->dismissPopupKeyboard()V

    .line 444
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->updateContext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 450
    :cond_4
    if-eqz v4, :cond_5

    .line 451
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/nuance/xt9/input/ChineseInputView;->updateListViews(ZZ)V

    .line 453
    :cond_5
    :goto_4
    return-void

    .line 388
    .end local v0           #cursorChange:Z
    .end local v2           #hasCandidate:Z
    .end local v5           #noCandidate:Z
    :cond_6
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 389
    .restart local v0       #cursorChange:Z
    :cond_7
    const/4 v6, 0x0

    move v5, v6

    goto :goto_1

    .line 390
    .restart local v5       #noCandidate:Z
    :cond_8
    const/4 v6, 0x0

    move v2, v6

    goto :goto_2

    .line 415
    .restart local v2       #hasCandidate:Z
    :cond_9
    if-ne p1, p2, :cond_a

    if-ne p1, p3, :cond_a

    if-ne p1, p4, :cond_a

    if-eqz v5, :cond_a

    .line 422
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->dismissPopupKeyboard()V

    goto :goto_4

    .line 424
    :cond_a
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInputView;->isNumericSelectionBPMF()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    .line 429
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInputView;->multitapTimeOut()V

    .line 430
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidKey:I

    .line 431
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mCurrentIndex:I

    .line 432
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidIndex:I

    .line 433
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mInvalidTapCount:I

    .line 435
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 436
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 437
    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInputView;->mBPMFSpellBuffer:Lcom/nuance/xt9/input/BPMFSpellBuffer;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->reset()V

    goto :goto_3
.end method
