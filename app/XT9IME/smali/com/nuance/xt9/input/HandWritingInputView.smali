.class public Lcom/nuance/xt9/input/HandWritingInputView;
.super Lcom/nuance/xt9/input/InputView;
.source "HandWritingInputView.java"

# interfaces
.implements Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;
.implements Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;
.implements Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;


# instance fields
.field private final MSG_DELAY_SHOWING_FULLSCREEN:I

.field mCandidateShown:Z

.field protected mComposition:Lcom/nuance/xt9/input/Composition;

.field protected mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

.field private mDelayShowingFullScreenHandler:Landroid/os/Handler;

.field protected mFullScreenHandWriting:Z

.field mIsHalfSize:Z

.field mIsWriting:Z

.field protected mStarted:Z

.field protected mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

.field protected mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/HandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mCandidateShown:Z

    .line 30
    iput-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsWriting:Z

    .line 31
    iput-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsHalfSize:Z

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->MSG_DELAY_SHOWING_FULLSCREEN:I

    .line 35
    new-instance v0, Lcom/nuance/xt9/input/HandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/HandWritingInputView$1;-><init>(Lcom/nuance/xt9/input/HandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/nuance/xt9/input/Composition;

    invoke-direct {v0, p1}, Lcom/nuance/xt9/input/Composition;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/HandWritingInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->showDelayFullScreen()V

    return-void
.end method

.method private showDelayFullScreen()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/HandWritingInputView;->showHandWritingView(Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_0
.end method


# virtual methods
.method public createCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/WordListViewContainer;

    iput-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    .line 98
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->initViews()V

    .line 99
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/CandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/xt9/input/CandidatesListView$OnWordSelectActionListener;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/HandWritingInputView;->setCandidatesViewShown(Z)V

    .line 107
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    return-object v0
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->finishInput()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mStarted:Z

    .line 88
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->dismissPopupKeyboard()V

    .line 89
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->hideFullScreenHandWritingView()V

    .line 90
    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    return-object v0
.end method

.method protected getFullScreenHeight()I
    .locals 7

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 311
    .local v2, screen_height:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getHeight()I

    move-result v1

    .line 312
    .local v1, keyboard_height:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 313
    .local v3, status_bar_height:I
    iget-object v5, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/WordListViewContainer;->getHeight()I

    move-result v4

    .line 315
    .local v4, word_list_height:I
    sub-int v5, v2, v1

    sub-int v0, v5, v3

    .line 316
    .local v0, fullScreenHeight:I
    iget-boolean v5, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsHalfSize:Z

    if-eqz v5, :cond_0

    .line 317
    div-int/lit8 v5, v0, 0x2

    add-int v0, v5, v4

    .line 319
    :cond_0
    iget-boolean v5, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mCandidateShown:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsWriting:Z

    if-nez v5, :cond_1

    .line 320
    sub-int/2addr v0, v4

    .line 322
    :cond_1
    iget-boolean v5, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsWriting:Z

    if-eqz v5, :cond_2

    .line 323
    add-int/2addr v0, v1

    .line 325
    :cond_2
    return v0
.end method

.method protected getFullScreenOffset(I)I
    .locals 4
    .parameter "screenHeight"

    .prologue
    .line 329
    iget-object v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/WordListViewContainer;->getHeight()I

    move-result v2

    .line 330
    .local v2, word_list_height:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getHeight()I

    move-result v1

    .line 332
    .local v1, keyboard_height:I
    neg-int v0, p1

    .line 333
    .local v0, fullScreenOffset:I
    iget-boolean v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mCandidateShown:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsWriting:Z

    if-eqz v3, :cond_1

    .line 334
    :cond_0
    add-int/2addr v0, v2

    .line 336
    :cond_1
    iget-boolean v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsWriting:Z

    if-eqz v3, :cond_2

    .line 337
    add-int/2addr v0, v1

    .line 339
    :cond_2
    return v0
.end method

.method getFullScreenSettingKey(I)Ljava/lang/String;
    .locals 3
    .parameter "language"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullscreen.enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getIsHalfSize()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsHalfSize:Z

    return v0
.end method

.method getLastFullScreenState(I)Z
    .locals 3
    .parameter "language"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/HandWritingInputView;->getFullScreenSettingKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/nuance/xt9/input/InputView;->handleClose()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mStarted:Z

    .line 79
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->dismissPopupKeyboard()V

    .line 80
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->hideFullScreenHandWritingView()V

    .line 81
    return-void
.end method

.method protected hideFullScreenHandWritingView()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mFullScreenHandWriting:Z

    .line 187
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/HandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 188
    return-void
.end method

.method public isFullScreenHandWritingView()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mFullScreenHandWriting:Z

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onHandleWriteEvent(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 269
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 254
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .locals 0
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
    .line 259
    .local p1, arc:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    return-void
.end method

.method public penUp([Lcom/nuance/xt9/input/Stroke$Arc;Landroid/view/View;)V
    .locals 1
    .parameter "arcs"
    .parameter "Src"

    .prologue
    .line 273
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/xt9/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/nuance/xt9/input/HandWritingInputView;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 274
    return-void
.end method

.method protected postDelayShowingFullScreenMsg()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 206
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    :cond_0
    return-void
.end method

.method protected removeDelayShowingFullScreenMsg()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 0
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    .line 264
    return-void
.end method

.method protected setCandidatesViewShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/InputView;->setCandidatesViewShown(Z)V

    .line 302
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->isCandidateCanBeShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/HandWritingInputView;->updateHandWritingView(Z)V

    .line 305
    :cond_1
    return-void
.end method

.method public setContainerView(Lcom/nuance/xt9/input/HandWritingContainerView;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    .line 112
    return-void
.end method

.method public setFullScreenHandWritingFrame()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mFullScreenHandWriting:Z

    .line 120
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/HandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/HandWritingInputView;->setIsWriting(Z)V

    .line 124
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/xt9/input/HandWritingView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 249
    return-void
.end method

.method protected setIsHalfSize(Z)V
    .locals 5
    .parameter "isHalfSize"

    .prologue
    .line 358
    iget-boolean v2, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsHalfSize:Z

    if-eq v2, p1, :cond_0

    .line 359
    iput-boolean p1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsHalfSize:Z

    .line 360
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getFullScreenHeight()I

    move-result v0

    .line 361
    .local v0, fullScreenHeight:I
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/HandWritingInputView;->getFullScreenOffset(I)I

    move-result v1

    .line 362
    .local v1, fullScreenY:I
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/nuance/xt9/input/HandWritingContainerView;->updateFullScreenHandWritingFrame(IIII)V

    .line 364
    .end local v0           #fullScreenHeight:I
    .end local v1           #fullScreenY:I
    :cond_0
    return-void
.end method

.method protected setIsWriting(Z)V
    .locals 4
    .parameter "isWriting"

    .prologue
    .line 343
    iget-boolean v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsWriting:Z

    if-eq v1, p1, :cond_0

    .line 344
    iput-boolean p1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsWriting:Z

    .line 345
    iget-boolean v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mIsWriting:Z

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/xt9/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/HandWritingInputView;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 348
    .local v0, frameHeight:I
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/xt9/input/HandWritingContainerView;->updateNormalHandWritingFrame(II)V

    .line 355
    .end local v0           #frameHeight:I
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/xt9/input/HandWritingContainerView;->mKeyboardInputView:Lcom/nuance/xt9/input/HandWritingInputView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/HandWritingInputView;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 352
    .restart local v0       #frameHeight:I
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/xt9/input/HandWritingContainerView;->updateNormalHandWritingFrame(II)V

    goto :goto_0
.end method

.method setLastFullScreenState(Z)V
    .locals 2
    .parameter "fullscreen"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/HandWritingInputView;->getFullScreenSettingKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 236
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mFullScreenHandWriting:Z

    .line 128
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/HandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 129
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/HandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 131
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/HandWritingInputView;->setIsWriting(Z)V

    .line 133
    return-void
.end method

.method public showHandWritingView(Z)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, animate:Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #animate:Landroid/view/animation/AlphaAnimation;
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 160
    .restart local v0       #animate:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 163
    :cond_0
    iget-boolean v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getFullScreenHeight()I

    move-result v1

    .line 166
    .local v1, fullScreenHeight:I
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/HandWritingInputView;->getFullScreenOffset(I)I

    move-result v2

    .line 167
    .local v2, fullScreenY:I
    if-eqz v0, :cond_1

    .line 168
    iget-object v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v3, v3, Lcom/nuance/xt9/input/HandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/xt9/input/HandWritingView;

    invoke-virtual {v3, v0}, Lcom/nuance/xt9/input/HandWritingView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getWidth()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v1}, Lcom/nuance/xt9/input/HandWritingContainerView;->showFullScreenHandWritingFrame(IIII)V

    .line 179
    .end local v1           #fullScreenHeight:I
    .end local v2           #fullScreenY:I
    :goto_0
    return-void

    .line 174
    :cond_2
    if-eqz v0, :cond_3

    .line 175
    iget-object v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    iget-object v3, v3, Lcom/nuance/xt9/input/HandWritingContainerView;->mHandwritingPadView:Lcom/nuance/xt9/input/HandWritingView;

    invoke-virtual {v3, v0}, Lcom/nuance/xt9/input/HandWritingView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 177
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/HandWritingContainerView;->setNormalHandScreenWritingFrame()V

    goto :goto_0
.end method

.method protected showLastSavedHandWritingScreen()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/HandWritingInputView;->getLastFullScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->setFullScreenHandWritingFrame()V

    .line 221
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->setNormalHandScreenWritingFrame()V

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/HandWritingInputView;->showHandWritingView(Z)V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 1
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mStarted:Z

    .line 66
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/InputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 68
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->dismissPopupKeyboard()V

    .line 69
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->removeDelayShowingFullScreenMsg()V

    .line 70
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->hideFullScreenHandWritingView()V

    .line 71
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 72
    return-void
.end method

.method public toggleFullScreenHandWritingView()Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->dismissPopupKeyboard()V

    .line 139
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->setFullScreenHandWritingFrame()V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v0

    .line 150
    .local v0, fullscreenMode:Z
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/HandWritingInputView;->setLastFullScreenState(Z)V

    .line 152
    return v0

    .line 145
    .end local v0           #fullscreenMode:Z
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->setNormalHandScreenWritingFrame()V

    goto :goto_0
.end method

.method public updateHandWritingView(Z)V
    .locals 5
    .parameter "candidateShown"

    .prologue
    .line 278
    iget-boolean v2, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mCandidateShown:Z

    if-ne v2, p1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iput-boolean p1, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mCandidateShown:Z

    .line 283
    iget-boolean v2, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/HandWritingContainerView;->isFullScreenHandWritingFrameShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getFullScreenHeight()I

    move-result v0

    .line 287
    .local v0, fullScreenHeight:I
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/HandWritingInputView;->getFullScreenOffset(I)I

    move-result v1

    .line 288
    .local v1, fullScreenY:I
    iget-object v2, p0, Lcom/nuance/xt9/input/HandWritingInputView;->mContainer:Lcom/nuance/xt9/input/HandWritingContainerView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/nuance/xt9/input/HandWritingContainerView;->updateFullScreenHandWritingFrame(IIII)V

    goto :goto_0

    .line 291
    .end local v0           #fullScreenHeight:I
    .end local v1           #fullScreenY:I
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_0
.end method
