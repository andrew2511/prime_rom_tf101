.class public Lcom/nuance/xt9/input/KoreanInputView;
.super Lcom/nuance/xt9/input/InputView;
.source "KoreanInputView.java"

# interfaces
.implements Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;


# instance fields
.field private mAutoCorrectionMode:I

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field protected mDefaultWord:Landroid/text/SpannableStringBuilder;

.field private mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

.field mHandler:Landroid/os/Handler;

.field public mInsertText:Ljava/lang/StringBuilder;

.field private mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

.field private mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

.field private mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

.field private mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

.field private mMutitapMaxKeyTimeout:Z

.field private mStrikethrough:Landroid/text/style/StrikethroughSpan;

.field private mUnderline:Landroid/text/style/UnderlineSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 632
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 47
    new-instance v0, Lcom/nuance/xt9/input/KoreanInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/KoreanInputView$1;-><init>(Lcom/nuance/xt9/input/KoreanInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mHandler:Landroid/os/Handler;

    .line 633
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 636
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Lcom/nuance/xt9/input/Int;

    invoke-direct {v0}, Lcom/nuance/xt9/input/Int;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 47
    new-instance v0, Lcom/nuance/xt9/input/KoreanInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/KoreanInputView$1;-><init>(Lcom/nuance/xt9/input/KoreanInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mHandler:Landroid/os/Handler;

    .line 637
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/KoreanInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/KoreanInputView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/KoreanInputView;->updateListViews(Z)V

    return-void
.end method

.method private flashError()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 680
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mStrikethrough:Landroid/text/style/StrikethroughSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 682
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 683
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 684
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 686
    :cond_0
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/KoreanInputView;->updateInlineString(Z)V

    .line 688
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    return-void
.end method

.method private getShiftState()I
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x2

    .line 429
    .end local p0
    :goto_0
    return v0

    .line 425
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    const/4 v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handlePrediction(I[I)V
    .locals 10
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 522
    const/4 v3, 0x0

    .line 523
    .local v3, success:Z
    const/4 v4, 0x0

    .line 526
    .local v4, triedMT:Z
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapIsInvalid()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidIndex:I

    iget v6, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCurrentIndex:I

    if-eq v5, v6, :cond_4

    .line 527
    :cond_0
    const/4 v3, 0x0

    .line 562
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 563
    int-to-char v5, p1

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/KoreanInputView;->sendBackCharOnFailProcess(C)V

    .line 565
    :cond_2
    invoke-direct {p0, v9}, Lcom/nuance/xt9/input/KoreanInputView;->updateListViews(Z)V

    .line 568
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 569
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    .line 571
    :cond_3
    return-void

    .line 528
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 529
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v6

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/nuance/xt9/input/KoreanInput;->processKey(III)Z

    move-result v3

    .line 530
    if-nez v3, :cond_5

    .line 532
    iput p1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidKey:I

    .line 533
    iget v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCurrentIndex:I

    iput v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidIndex:I

    .line 534
    iget v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mTapCount:I

    iput v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidTapCount:I

    .line 535
    const/4 v4, 0x1

    goto :goto_0

    .line 537
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapClearInvalid()V

    goto :goto_0

    .line 541
    :cond_6
    const/4 v1, 0x1

    .line 542
    .local v1, len:I
    iget v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mAutoCorrectionMode:I

    if-eqz v5, :cond_7

    .line 543
    array-length v1, p2

    .line 547
    :cond_7
    const/4 v2, 0x0

    .line 548
    .local v2, shiftState:I
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v5, :cond_9

    .line 549
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v5}, Lcom/nuance/xt9/input/IME;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v2, v9

    .line 555
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_1

    aget v5, p2, v0

    if-lez v5, :cond_1

    .line 556
    iget-object v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/xt9/input/KeyboardEx;->getKdbId()I

    move-result v6

    aget v7, p2, v0

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/nuance/xt9/input/KoreanInput;->processKey(III)Z

    move-result v3

    .line 557
    if-nez v3, :cond_1

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    :cond_8
    move v2, v8

    .line 549
    goto :goto_1

    .line 552
    :cond_9
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getShiftState()I

    move-result v2

    goto :goto_1
.end method

.method private hasActiveKeySeq()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanInput;->getKeyCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 692
    const v4, 0x7f0e0003

    sget-object v5, Lcom/nuance/xt9/input/R$styleable;->InlineStringKorean:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 696
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 697
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 698
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 699
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 697
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/KoreanInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    goto :goto_1

    .line 707
    .end local v1           #attr:I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 709
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/KoreanInputView;->mStrikethrough:Landroid/text/style/StrikethroughSpan;

    .line 710
    return-void

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private selectDefault()V
    .locals 3

    .prologue
    .line 643
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/xt9/input/KoreanInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanInput;->clearAllKeys()Z

    .line 645
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapClearInvalid()V

    .line 646
    return-void
.end method

.method private sendBackCharOnFailProcess(C)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->flushCurrentActiveWord()V

    .line 575
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/KoreanInputView;->sendKeyChar(C)V

    .line 576
    return-void
.end method

.method private updateInlineString(Z)V
    .locals 7
    .parameter "setEmptyComposingText"

    .prologue
    const/16 v6, 0x121

    const/4 v5, 0x1

    .line 654
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/KoreanInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 656
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidKey:I

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 658
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mStrikethrough:Landroid/text/style/StrikethroughSpan;

    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 663
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 664
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 665
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 666
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 667
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 672
    :goto_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 674
    :cond_3
    return-void

    .line 669
    :cond_4
    const-string v1, ""

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 670
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method private updateListViews(Z)V
    .locals 2
    .parameter "setEmptyComposingText"

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateSuggestions()V

    .line 610
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/KoreanInputView;->updateInlineString(Z)V

    .line 613
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 614
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->requestLayout()V

    .line 615
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->invalidate()V

    .line 618
    return-void
.end method

.method private updateMaxKeyTimeout()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mMutitapMaxKeyTimeout:Z

    .line 718
    return-void
.end method

.method private updateShiftKeyState()V
    .locals 3

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 622
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 623
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->getCurrentShiftState()I

    move-result v0

    .line 624
    .local v0, curretShiftState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v2, v0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->setShiftState(I)V

    .line 629
    .end local v0           #curretShiftState:I
    :cond_1
    return-void
.end method

.method private updateSuggestions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 582
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-nez v1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 588
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/xt9/input/KoreanInput;->getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;)Ljava/util/List;

    move-result-object v0

    .line 589
    .local v0, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 590
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v5

    :goto_1
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWordIndex:Lcom/nuance/xt9/input/Int;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 593
    iget-boolean v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCompletionOn:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v5

    :goto_2
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/KoreanInputView;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 590
    goto :goto_1

    :cond_3
    move v1, v4

    .line 593
    goto :goto_2

    .line 595
    :cond_4
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    goto :goto_0
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->toggleSymbols()V

    .line 477
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateShiftKeyState()V

    .line 478
    return-void
.end method

.method public create(Lcom/nuance/xt9/input/IME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 70
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/KoreanInput;->getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/KoreanInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    .line 71
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanInput;->create()Z

    .line 74
    new-instance v0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;-><init>(Lcom/nuance/xt9/input/IME;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    .line 75
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->setInputView(Lcom/nuance/xt9/input/InputView;)V

    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->makeKeyboards()V

    .line 79
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/KoreanInputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 81
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/KoreanInputView;->readStyles(Landroid/content/Context;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "XT9IME.InputView"

    const-string v1, "can not create an instance of KoreanInput"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 118
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/WordListViewContainer;

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    .line 112
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->initViews()V

    .line 113
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->requestLayout()V

    .line 114
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 118
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanInput;->clearAllKeys()Z

    .line 94
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanInput;->destroy()V

    .line 97
    :cond_0
    iput-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    .line 98
    iput-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    .line 99
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 6
    .parameter "completions"

    .prologue
    const/4 v5, 0x0

    .line 264
    iget-boolean v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCompletionOn:Z

    if-eqz v3, :cond_0

    .line 265
    iput-object p1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 266
    if-nez p1, :cond_1

    .line 267
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eqz p1, :cond_3

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_4

    .line 273
    aget-object v0, p1, v1

    .line 274
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    move v3, v5

    goto :goto_2

    .line 276
    :cond_4
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    goto :goto_0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 737
    const-string v0, "KoreanInputView"

    const-string v1, "KoreanInputView.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void
.end method

.method public finishInput()V
    .locals 3

    .prologue
    .line 168
    const-string v1, "XT9IME.InputView"

    const-string v2, "KoreanInputView::finishInput"

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 174
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->closing()V

    .line 176
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 180
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KoreanInput;->finish()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 189
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->flushCurrentActiveWord()V

    .line 191
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 192
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KoreanInput;->clearAllKeys()Z

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 202
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapTimeOut()V

    .line 203
    iput v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidKey:I

    .line 204
    iput v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCurrentIndex:I

    .line 205
    iput v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidIndex:I

    .line 206
    iput v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidTapCount:I

    .line 208
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/KoreanInputView;->updateListViews(Z)V

    .line 209
    return-void
.end method

.method public handleBackspace(I)Z
    .locals 3
    .parameter "repeatedCount"

    .prologue
    const/4 v2, 0x1

    .line 379
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapClearInvalid()V

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/KoreanInputView;->updateListViews(Z)V

    .line 391
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 393
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 395
    const-string v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 396
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 397
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 398
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateShiftKeyState()V

    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    move v1, v2

    .line 403
    :goto_1
    return v1

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KoreanInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KoreanInput;->clearKey()Z

    goto :goto_0

    .line 385
    :cond_2
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->handleBackspace(I)Z

    move-result v1

    goto :goto_1
.end method

.method public handleCharKey(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/KoreanInputView;->sendKeyChar(C)V

    .line 375
    :goto_0
    return-void

    .line 358
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->flashError()V

    goto :goto_0

    .line 363
    :cond_2
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/KoreanInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 366
    :cond_3
    const/16 v0, 0x30

    if-lt p1, v0, :cond_4

    const/16 v0, 0x39

    if-le p1, v0, :cond_5

    :cond_4
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/KoreanInputView;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->isSymbolKeyboard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 370
    :cond_5
    int-to-char v0, p1

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/KoreanInputView;->sendBackCharOnFailProcess(C)V

    goto :goto_0

    .line 372
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/KoreanInputView;->handlePrediction(I[I)V

    goto :goto_0
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->finishInput()V

    .line 435
    return-void
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 283
    const/4 v7, 0x0

    .line 285
    .local v7, handled:Z
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v0, :cond_3

    .line 288
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->hasActiveKeySeq()Z

    move-result v6

    move-object v0, p0

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/xt9/input/KoreanInputView;->handleKeyForCandidate(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/CandidatesListView;ILandroid/view/KeyEvent;Z)Z

    move-result v7

    .line 291
    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->hasActiveKeySeq()Z

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

    .line 298
    :cond_0
    const/4 v7, 0x1

    .line 302
    :cond_1
    if-nez v7, :cond_2

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/KoreanInputView;->handleKeyForPrediction(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 307
    :cond_2
    if-nez v7, :cond_3

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/nuance/xt9/input/KoreanInputView;->handleKeyForKCM(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 312
    :cond_3
    return v7
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    move v0, v3

    :goto_0
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    move v1, v3

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_3

    :cond_0
    move v0, v3

    .line 324
    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 317
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    .line 324
    goto :goto_2
.end method

.method public handleShift()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->toggleShiftState()V

    .line 420
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 2
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/16 v1, 0x20

    .line 408
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/KoreanInputView;->sendBackCharOnFailProcess(C)V

    .line 413
    :goto_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateShiftKeyState()V

    .line 414
    const/4 v0, 0x1

    return v0

    .line 411
    :cond_0
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/KoreanInputView;->sendKeyChar(C)V

    goto :goto_0
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateMaxKeyTimeout()V

    .line 723
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateShiftKeyState()V

    .line 724
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 332
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

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

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/KoreanInputView;->isPunctuationOrSymbol(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapIsInvalid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    const v3, 0xffff

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/xt9/input/KoreanInput;->processKey(III)Z

    move-result v1

    .line 338
    .local v1, success:Z
    if-nez v1, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->flashError()V

    .line 341
    :cond_1
    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/KoreanInputView;->updateListViews(Z)V

    .line 350
    .end local v1           #success:Z
    :goto_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateShiftKeyState()V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_4

    .line 343
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 344
    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 345
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_1

    .line 347
    :cond_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->flashError()V

    goto :goto_1
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 4
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    const/4 v3, 0x1

    .line 439
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 442
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-boolean v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCompletionOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v2, :cond_2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v2, p1

    .line 444
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v1, :cond_0

    .line 445
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->clear()V

    .line 449
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateShiftKeyState()V

    .line 472
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_1
    :goto_0
    return-void

    .line 454
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-ne p3, v2, :cond_4

    .line 456
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz v1, :cond_3

    .line 457
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 458
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KoreanInput;->clearAllKeys()Z

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapClearInvalid()V

    .line 461
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/KoreanInputView;->updateListViews(Z)V

    .line 466
    :goto_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateShiftKeyState()V

    .line 469
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/CandidatesListView;->enableHighlight()V

    goto :goto_0

    .line 463
    :cond_4
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/KoreanInputView;->updateListViews(Z)V

    goto :goto_1
.end method

.method protected sendKeyChar(C)V
    .locals 4
    .parameter "character"

    .prologue
    .line 482
    const/4 v2, 0x0

    .line 483
    .local v2, shiftState:I
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v3, :cond_3

    .line 484
    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v3}, Lcom/nuance/xt9/input/IME;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v2, v3

    .line 490
    :goto_0
    if-eqz v2, :cond_4

    sget-object v3, Lcom/nuance/xt9/input/KoreanInput;->JAMO_SHIFT_LIST:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    move v1, v3

    .line 492
    .local v1, shiftCharacter:I
    :goto_1
    if-nez v1, :cond_0

    .line 493
    move v1, p1

    .line 496
    :cond_0
    sget-object v3, Lcom/nuance/xt9/input/KoreanInput;->HANGUL_JAMO_COMPATIBILITY_LIST:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 497
    .local v0, compatibilityCharacter:I
    if-nez v0, :cond_1

    .line 498
    move v0, v1

    .line 501
    :cond_1
    int-to-char v3, v0

    invoke-super {p0, v3}, Lcom/nuance/xt9/input/InputView;->sendKeyChar(C)V

    .line 502
    return-void

    .line 484
    .end local v0           #compatibilityCharacter:I
    .end local v1           #shiftCharacter:I
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 487
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getShiftState()I

    move-result v2

    goto :goto_0

    :cond_4
    move v1, p1

    .line 490
    goto :goto_1
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 6
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    const/4 v5, 0x0

    .line 132
    const-string v1, "XT9IME.InputView"

    const-string v2, "KoreanInputView::startInputView"

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/Debug;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-nez v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->finishInput()V

    .line 141
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 142
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "auto_correction_mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mAutoCorrectionMode:I

    .line 148
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isShortMessageField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 155
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 156
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/KoreanInput;->start()Z

    .line 158
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/CandidatesListView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iput-boolean v5, p0, Lcom/nuance/xt9/input/KoreanInputView;->mMutitapMaxKeyTimeout:Z

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 152
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->setShiftState(I)V

    goto :goto_1
.end method

.method public updateSelection(IIIIII)V
    .locals 4
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newStart"
    .parameter "newEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v3, -0x1

    .line 216
    invoke-super/range {p0 .. p6}, Lcom/nuance/xt9/input/InputView;->updateSelection(IIIIII)V

    .line 218
    const/4 v1, 0x0

    .line 221
    .local v1, needUpdate:Z
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_5

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 227
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mKoreanInput:Lcom/nuance/xt9/input/KoreanInput;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KoreanInput;->clearAllKeys()Z

    .line 232
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 235
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->multitapTimeOut()V

    .line 236
    iput v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidKey:I

    .line 237
    iput v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mCurrentIndex:I

    .line 238
    iput v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidIndex:I

    .line 239
    iput v3, p0, Lcom/nuance/xt9/input/KoreanInputView;->mInvalidTapCount:I

    .line 241
    const/4 v1, 0x1

    .line 251
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->dismissPopupKeyboard()V

    .line 253
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->isMultitapping()Z

    move-result v2

    if-nez v2, :cond_3

    .line 254
    invoke-direct {p0}, Lcom/nuance/xt9/input/KoreanInputView;->updateShiftKeyState()V

    .line 257
    :cond_3
    if-eqz v1, :cond_4

    .line 258
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/KoreanInputView;->updateListViews(Z)V

    .line 260
    :cond_4
    :goto_0
    return-void

    .line 242
    :cond_5
    if-ne p1, p2, :cond_2

    if-ne p1, p3, :cond_2

    if-ne p1, p4, :cond_2

    if-ne p5, v3, :cond_2

    if-ne p6, v3, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanInputView;->dismissPopupKeyboard()V

    goto :goto_0
.end method
