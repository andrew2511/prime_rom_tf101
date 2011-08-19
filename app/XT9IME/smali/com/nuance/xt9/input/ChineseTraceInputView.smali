.class public Lcom/nuance/xt9/input/ChineseTraceInputView;
.super Lcom/nuance/xt9/input/InputView;
.source "ChineseTraceInputView.java"

# interfaces
.implements Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;


# static fields
.field private static final INPUT_MODE_PINYIN:I


# instance fields
.field private mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

.field private mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

.field private mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

.field private mContinuousTrace:Z

.field mHandler:Landroid/os/Handler;

.field protected mInlineWord:Landroid/text/SpannableStringBuilder;

.field private mJustTapSelectionList:Z

.field protected mLastestTracedPY:Ljava/lang/String;

.field private mPYDelimiter:C

.field private mPYListView:Lcom/nuance/xt9/input/SpellListView;

.field private mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

.field private mTappingPY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mWarningRing:Lcom/nuance/xt9/input/SoundEffects;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContinuousTrace:Z

    .line 33
    iput-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mJustTapSelectionList:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mTappingPY:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/nuance/xt9/input/ChineseTraceInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/ChineseTraceInputView$1;-><init>(Lcom/nuance/xt9/input/ChineseTraceInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContinuousTrace:Z

    .line 33
    iput-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mJustTapSelectionList:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mTappingPY:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/nuance/xt9/input/ChineseTraceInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/ChineseTraceInputView$1;-><init>(Lcom/nuance/xt9/input/ChineseTraceInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/ChineseTraceInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/ChineseTraceInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hideSpellView()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/ChineseTraceInputView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateContext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/ChineseTraceInputView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    return-void
.end method

.method private flushInlineWord()V
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 390
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 394
    return-void
.end method

.method private handlePrediction(I[I)V
    .locals 3
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v2, 0x1

    .line 408
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->handleSpellPrefix(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0, v2, v2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 410
    return-void
.end method

.method private handleSeparator(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->flushInlineWord()V

    .line 572
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->sendKeyChar(C)V

    .line 574
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 576
    return-void
.end method

.method private hasActiveKeySeq()Z
    .locals 2

    .prologue
    .line 525
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->getPYList()Ljava/util/List;

    move-result-object v0

    .line 526
    .local v0, spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 527
    const/4 v1, 0x1

    .line 529
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideSpellView()V
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->removeDelayHideSpellViewMsg()V

    .line 536
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getPYList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->hideSpellLayout()V

    .line 541
    :cond_0
    return-void
.end method

.method private isPrediction()Z
    .locals 3

    .prologue
    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, isPrediction:Z
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->getPYList()Ljava/util/List;

    move-result-object v1

    .line 876
    .local v1, spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    iget-object v2, v2, Lcom/nuance/xt9/input/SpellListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 877
    :goto_0
    return v0

    .line 876
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private isTypingInput()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 854
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->getPYList()Ljava/util/List;

    move-result-object v1

    .line 855
    .local v1, spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    move v2, v4

    .line 865
    :goto_0
    return v2

    .line 859
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 861
    .local v0, first_candidate:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 863
    goto :goto_0

    :cond_1
    move v2, v4

    .line 865
    goto :goto_0
.end method

.method private postDelayHideSpellViewMsg()V
    .locals 4

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->removeDelayHideSpellViewMsg()V

    .line 514
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 517
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 581
    const v4, 0x7f0e0002

    sget-object v5, Lcom/nuance/xt9/input/R$styleable;->InlineStringChinese:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 584
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 586
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 587
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 589
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 586
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 599
    return-void

    .line 589
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeDelayHideSpellViewMsg()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    return-void
.end method

.method private sendText(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 620
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 621
    return-void
.end method

.method private updateContext()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 549
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 561
    :goto_0
    return v2

    .line 552
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 553
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_2

    move v2, v3

    .line 554
    goto :goto_0

    .line 557
    :cond_2
    const/4 v2, 0x2

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 558
    .local v1, newContext:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 559
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseTraceInput;->updateContext(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 561
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v2, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->updateContext(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private updateInLineText(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x1

    .line 607
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 608
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 609
    if-nez p1, :cond_0

    .line 610
    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 616
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 615
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method private updateListViews(ZZ)V
    .locals 2
    .parameter "updateSpells"
    .parameter "setEmptyComposingText"

    .prologue
    const/4 v1, 0x0

    .line 425
    if-eqz p1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateSpellings()V

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateSuggestions()V

    .line 431
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 432
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/SpellListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 433
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->requestLayout()V

    .line 434
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->invalidate()V

    .line 435
    return-void
.end method

.method private updateSpellings()V
    .locals 8

    .prologue
    const/16 v6, 0x27

    const/4 v7, 0x0

    .line 478
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->getPYList()Ljava/util/List;

    move-result-object v1

    .line 480
    .local v1, spellList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 481
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mTappingPY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 484
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, temp:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    iget-char v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYDelimiter:C

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, temp2:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mTappingPY:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 483
    .end local v3           #temp2:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 490
    .end local v2           #temp:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 491
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mTappingPY:Ljava/util/List;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/xt9/input/SpellListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 492
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mTappingPY:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 493
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    .line 498
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/SpellListView;->disableHighlight()V

    .line 505
    :goto_3
    return-void

    :cond_3
    move v6, v7

    .line 491
    goto :goto_2

    .line 501
    :cond_4
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/SpellListView;->clear()V

    .line 502
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->postDelayHideSpellViewMsg()V

    .line 503
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/CandidatesListView;->disableHighlight()V

    goto :goto_3
.end method

.method private updateSuggestions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 441
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-nez v2, :cond_0

    .line 472
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 447
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->isPrediction()Z

    move-result v2

    if-nez v2, :cond_4

    .line 448
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateList()Ljava/util/List;

    move-result-object v1

    .line 449
    .local v1, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 450
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateInLineText(Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v2, v1, v3, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 470
    .end local v1           #wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    :goto_2
    iget-boolean v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mCompletionOn:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    move v2, v5

    :goto_3
    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->setCandidatesViewShown(Z)V

    goto :goto_0

    .restart local v1       #wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    move v3, v4

    .line 452
    goto :goto_1

    .line 456
    .end local v1           #wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateContext()Z

    move-result v0

    .line 457
    .local v0, needupdate:Z
    if-eqz v0, :cond_1

    .line 458
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->getPhrases()Ljava/util/List;

    move-result-object v1

    .line 459
    .restart local v1       #wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 460
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->breakContext()Z

    .line 461
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/ChineseTraceInput;->updateContext(Ljava/lang/CharSequence;)Z

    .line 462
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->getPhrases()Ljava/util/List;

    move-result-object v1

    .line 464
    :cond_5
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v5

    :goto_4
    invoke-virtual {v2, v1, v3, v4}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_4

    .end local v0           #needupdate:Z
    .end local v1           #wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_7
    move v2, v4

    .line 470
    goto :goto_3
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->toggleSymbols()V

    .line 329
    return-void
.end method

.method public create(Lcom/nuance/xt9/input/IME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 80
    invoke-virtual {p1}, Lcom/nuance/xt9/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/xt9/input/ChineseTraceInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    .line 81
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->create()Z

    .line 83
    new-instance v0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-direct {v0, p1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    .line 84
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setInputView(Lcom/nuance/xt9/input/InputView;)V

    .line 85
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->makeKeyboards()V

    .line 86
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYDelimiter:C

    .line 87
    new-instance v0, Lcom/nuance/xt9/input/SoundEffects;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/nuance/xt9/input/SoundEffects;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mWarningRing:Lcom/nuance/xt9/input/SoundEffects;

    .line 88
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mWarningRing:Lcom/nuance/xt9/input/SoundEffects;

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/SoundEffects;->addSound(I)V

    .line 94
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 95
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->readStyles(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public createCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    .line 350
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->initViews(Lcom/nuance/xt9/input/KeyboardViewEx;)V

    .line 351
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->getPhraseWordListView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    .line 353
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->getSpellWordListView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/SpellListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 362
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 366
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/SpellPhraseViewContainer;->setParent(Lcom/nuance/xt9/input/InputView;)V

    .line 368
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mSpellPhraseViewContainer:Lcom/nuance/xt9/input/SpellPhraseViewContainer;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->destroy()V

    .line 104
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->destroyXT9JNIModule()V

    .line 105
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mWarningRing:Lcom/nuance/xt9/input/SoundEffects;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SoundEffects;->release()V

    .line 106
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mWarningRing:Lcom/nuance/xt9/input/SoundEffects;

    .line 107
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mTappingPY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mTappingPY:Ljava/util/List;

    .line 109
    return-void
.end method

.method public finishInput()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 188
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->closing()V

    .line 190
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->removeDelayHideSpellViewMsg()V

    .line 191
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hideSpellView()V

    .line 192
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellListView;->clear()V

    .line 193
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 198
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->finish()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 0

    .prologue
    .line 373
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 386
    return-void
.end method

.method public handleBackspace(I)Z
    .locals 8
    .parameter "repeatedCount"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 722
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->getSelectedPY()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, currentPY:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    .line 725
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->getSelectStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 726
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4, v7}, Lcom/nuance/xt9/input/ChineseTraceInput;->setSaveStatus(Z)V

    .line 728
    :cond_0
    const-string v4, ""

    if-ne v0, v4, :cond_1

    .line 729
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 730
    invoke-direct {p0, v6, v6}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 731
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->handleBackspace(I)Z

    move-result v4

    .line 760
    :goto_0
    return v4

    .line 734
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->isTypingInput()Z

    move-result v1

    .line 735
    .local v1, isTyping:Z
    if-nez v1, :cond_2

    .line 736
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 737
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateInLineText(Ljava/lang/String;)V

    .line 738
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 739
    invoke-direct {p0, v6, v6}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    move v4, v6

    .line 740
    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 743
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 744
    invoke-direct {p0, v6, v6}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 745
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->handleBackspace(I)Z

    move-result v4

    goto :goto_0

    .line 747
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 750
    .local v2, last:C
    const/16 v4, 0x41

    if-lt v2, v4, :cond_4

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_4

    .line 751
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 752
    .local v3, temp:[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    add-int/lit8 v5, v2, 0x20

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 753
    new-instance v0, Ljava/lang/String;

    .end local v0           #currentPY:Ljava/lang/String;
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 756
    .end local v3           #temp:[C
    .restart local v0       #currentPY:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4, v7}, Lcom/nuance/xt9/input/ChineseTraceInput;->setSelectedPYIndex(I)V

    .line 757
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v4, v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->createPY(Ljava/lang/String;)V

    .line 758
    invoke-direct {p0, v6, v6}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 759
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateInLineText(Ljava/lang/String;)V

    move v4, v6

    .line 760
    goto :goto_0
.end method

.method public handleCharKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->sendKeyChar(C)V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 209
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->flushInlineWord()V

    .line 210
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 211
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    .line 213
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->handleSeparator(I[I)V

    goto :goto_0

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->isTypingInput()Z

    move-result v0

    if-nez v0, :cond_5

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContinuousTrace:Z

    .line 217
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->flushInlineWord()V

    .line 218
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 219
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    .line 222
    :cond_5
    const/16 v0, 0x30

    if-gt v0, p1, :cond_6

    const/16 v0, 0x39

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_6

    .line 227
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 228
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->handlePrediction(I[I)V

    goto :goto_0

    .line 230
    :cond_6
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseTraceInputView;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->handleSeparator(I[I)V

    .line 233
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    goto :goto_0

    .line 234
    :cond_8
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->handlePrediction(I[I)V

    .line 236
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getSelectStatus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->setSaveStatus(Z)V

    .line 239
    :cond_9
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    goto/16 :goto_0
.end method

.method public handleKey(IZI)Z
    .locals 1
    .parameter "primaryCode"
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputView;->handleKey(IZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v11, 0x16

    const/16 v10, 0x15

    const/4 v1, 0x0

    .line 792
    const/4 v9, 0x0

    .line 794
    .local v9, handled:Z
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-eqz v0, :cond_4

    .line 796
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 799
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v6

    move-object v0, p0

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/xt9/input/ChineseTraceInputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v9

    .line 813
    :cond_0
    :goto_0
    if-nez v9, :cond_2

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, v10, :cond_1

    if-eq p1, v11, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    .line 818
    :cond_1
    const/4 v9, 0x1

    .line 822
    :cond_2
    if-nez v9, :cond_3

    .line 823
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->handleKeyForPrediction(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 827
    :cond_3
    if-eqz v9, :cond_4

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContinuousTrace:Z

    .line 832
    :cond_4
    return v9

    .line 800
    :cond_5
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->isEnableHighlight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 801
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v8

    move-object v2, p0

    move-object v5, v1

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/nuance/xt9/input/ChineseTraceInputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v9

    goto :goto_0

    .line 803
    :cond_6
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v6

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/xt9/input/ChineseTraceInputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v9

    .line 806
    if-eqz v9, :cond_0

    if-eq p1, v10, :cond_7

    if-ne p1, v11, :cond_0

    .line 807
    :cond_7
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYListView:Lcom/nuance/xt9/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/SpellListView;->selectActiveWord()V

    goto :goto_0
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

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

    .line 843
    :cond_0
    const/4 v0, 0x1

    .line 845
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleShift()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->toggleAltSymbolPage()V

    .line 334
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 3
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/4 v2, 0x1

    .line 768
    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    .line 770
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->isTypingInput()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->handleSpellPrefix(Ljava/lang/String;)V

    .line 773
    invoke-direct {p0, v2, v2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 785
    :cond_0
    :goto_0
    return v2

    .line 776
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 777
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->flushInlineWord()V

    .line 781
    :goto_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 783
    invoke-direct {p0, v2, v2}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 779
    :cond_2
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/ChineseTraceInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method public handleTrace(Ljava/util/ArrayList;)V
    .locals 4
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
    .local p1, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 259
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1, p1}, Lcom/nuance/xt9/input/ChineseTraceInput;->recognize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    .local v0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_1

    .line 262
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->flushInlineWord()V

    .line 264
    iput-boolean v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContinuousTrace:Z

    .line 267
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 269
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->setPYList(Ljava/util/List;)V

    .line 270
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->setSelectedPYIndex(I)V

    .line 271
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/ChineseTraceInput;->addHZResult(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mWarningRing:Lcom/nuance/xt9/input/SoundEffects;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/SoundEffects;->play(I)V

    goto :goto_0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x1

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->flushInlineWord()V

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->sendText(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 289
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->clearChineseCandidateIDList()V

    .line 290
    invoke-direct {p0, v1, v1}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 292
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 6
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 297
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 298
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseCandidateListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-ne p3, v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->isPrediction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/ChineseTraceInput;->setSelectedChineseCandidateIndex(I)V

    .line 301
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->handleSpellingList(ILjava/lang/String;)V

    .line 303
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->sendText(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, v4, v4}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 305
    iput-boolean v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mJustTapSelectionList:Z

    .line 324
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/ChineseTraceInput;->setSelectedPYIndex(I)V

    .line 308
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->addActivePY(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYDelimiter:C

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-char v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mPYDelimiter:C

    const/16 v3, 0x27

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->addHZResult(Ljava/lang/String;)V

    .line 315
    :goto_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->isTypingInput()Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseTraceInput;->getChineseCandidateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateInLineText(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mLastestTracedPY:Ljava/lang/String;

    .line 320
    :cond_2
    invoke-direct {p0, v5, v4}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->addHZResult(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 10
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, enableNameInput:Z
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->finishInput()V

    .line 128
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 134
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isShortMessageField()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    const/4 v4, 0x6

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 150
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 159
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 160
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardEx;->getKeyWidth()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->remapRCO(Ljava/util/List;I)V

    .line 163
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/ChineseTraceInput;->start()Z

    .line 165
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/ChineseTraceInput;->setLanguage(I)Z

    .line 166
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v3, v8}, Lcom/nuance/xt9/input/ChineseTraceInput;->setInputMode(I)Z

    .line 168
    if-eqz v0, :cond_4

    .line 169
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v3, v9, v7}, Lcom/nuance/xt9/input/ChineseTraceInput;->setAttribute(II)Z

    .line 175
    :goto_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    return-void

    .line 137
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v2           #keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isNameField()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    const/4 v0, 0x1

    .line 139
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3, v7, v4, v5}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseKeyboardSwitcher:Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3, v7, v4, v5}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    goto :goto_0

    .line 171
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v2       #keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    :cond_4
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v3, v9, v8}, Lcom/nuance/xt9/input/ChineseTraceInput;->setAttribute(II)Z

    goto :goto_1
.end method

.method public updateSelection(IIIIII)V
    .locals 5
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newStart"
    .parameter "newEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 626
    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    :cond_0
    if-ne p6, v2, :cond_2

    :cond_1
    if-ne p6, v2, :cond_5

    if-nez p4, :cond_5

    :cond_2
    move v0, v3

    .line 629
    .local v0, cursorChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    if-eqz v0, :cond_6

    .line 632
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->flushInlineWord()V

    .line 633
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 635
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getCandidatesHiddenVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 636
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    .line 639
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->multitapTimeOut()V

    .line 640
    iput v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mCurrentIndex:I

    .line 641
    iput v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInvalidIndex:I

    .line 642
    iput v2, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInvalidTapCount:I

    .line 717
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseTraceInputView;->dismissPopupKeyboard()V

    .line 718
    return-void

    .end local v0           #cursorChanged:Z
    :cond_5
    move v0, v4

    .line 626
    goto :goto_0

    .line 643
    .restart local v0       #cursorChanged:Z
    :cond_6
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 646
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 648
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getCandidatesHiddenVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 649
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    goto :goto_1

    .line 658
    :cond_7
    if-ne p1, p2, :cond_9

    if-ne p1, p3, :cond_9

    if-ne p1, p4, :cond_9

    if-ne p5, v2, :cond_9

    if-ne p6, v2, :cond_9

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->getPYList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_9

    .line 661
    iget-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContinuousTrace:Z

    if-eqz v1, :cond_8

    .line 662
    iput-boolean v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mContinuousTrace:Z

    goto :goto_1

    .line 664
    :cond_8
    iget-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mJustTapSelectionList:Z

    if-nez v1, :cond_4

    .line 665
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 667
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getCandidatesHiddenVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 668
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    goto :goto_1

    .line 674
    :cond_9
    if-ne p1, p2, :cond_a

    if-ne p1, p3, :cond_a

    if-ne p1, p4, :cond_a

    if-ne p5, v2, :cond_a

    if-ne p6, v2, :cond_a

    .line 677
    iget-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mJustTapSelectionList:Z

    if-eqz v1, :cond_4

    .line 678
    iput-boolean v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mJustTapSelectionList:Z

    goto :goto_1

    .line 686
    :cond_a
    if-ne p1, p2, :cond_c

    if-ne p3, p4, :cond_c

    if-eq p1, p3, :cond_c

    if-ne p5, v2, :cond_c

    if-ne p6, v2, :cond_c

    .line 689
    iget-boolean v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mJustTapSelectionList:Z

    if-eqz v1, :cond_b

    .line 690
    iput-boolean v4, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mJustTapSelectionList:Z

    goto :goto_1

    .line 693
    :cond_b
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 695
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getCandidatesHiddenVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 696
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    goto/16 :goto_1

    .line 707
    :cond_c
    if-ne p3, p4, :cond_4

    if-ne p5, v2, :cond_4

    if-ne p6, v2, :cond_4

    .line 709
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mChineseTraceInput:Lcom/nuance/xt9/input/ChineseTraceInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/ChineseTraceInput;->resetStatus()V

    .line 711
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseTraceInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getCandidatesHiddenVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 712
    invoke-direct {p0, v3, v3}, Lcom/nuance/xt9/input/ChineseTraceInputView;->updateListViews(ZZ)V

    goto/16 :goto_1
.end method
