.class public Lcom/android/gallery3d/app/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mHandler:Landroid/os/Handler;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Lcom/android/gallery3d/app/MediaController$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$1;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 355
    new-instance v0, Lcom/android/gallery3d/app/MediaController$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$2;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mHandler:Landroid/os/Handler;

    .line 472
    new-instance v0, Lcom/android/gallery3d/app/MediaController$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$3;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 510
    new-instance v0, Lcom/android/gallery3d/app/MediaController$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$4;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 575
    new-instance v0, Lcom/android/gallery3d/app/MediaController$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$5;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 586
    new-instance v0, Lcom/android/gallery3d/app/MediaController$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$6;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 127
    iput-object p1, p0, Lcom/android/gallery3d/app/MediaController;->mContext:Landroid/content/Context;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MediaController;->mUseFastForward:Z

    .line 129
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->initFloatingWindow()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    new-instance v0, Lcom/android/gallery3d/app/MediaController$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$1;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 355
    new-instance v0, Lcom/android/gallery3d/app/MediaController$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$2;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mHandler:Landroid/os/Handler;

    .line 472
    new-instance v0, Lcom/android/gallery3d/app/MediaController$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$3;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 510
    new-instance v0, Lcom/android/gallery3d/app/MediaController$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$4;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 575
    new-instance v0, Lcom/android/gallery3d/app/MediaController$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$5;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 586
    new-instance v0, Lcom/android/gallery3d/app/MediaController$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MediaController$6;-><init>(Lcom/android/gallery3d/app/MediaController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 106
    iput-object p0, p0, Lcom/android/gallery3d/app/MediaController;->mRoot:Landroid/view/View;

    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/app/MediaController;->mContext:Landroid/content/Context;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MediaController;->mUseFastForward:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MediaController;->mFromXml:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/app/MediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MediaController;)Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MediaController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MediaController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MediaController;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->updatePausePlay()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_2
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->pause()V

    .line 496
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->updatePausePlay()V

    .line 497
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 202
    const v1, 0x7f070007

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 203
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_0
    const v1, 0x7f070008

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 209
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MediaController;->mFromXml:Z

    if-nez v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MediaController;->mUseFastForward:Z

    if-eqz v2, :cond_7

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    :cond_1
    const v1, 0x7f070006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 217
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MediaController;->mFromXml:Z

    if-nez v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MediaController;->mUseFastForward:Z

    if-eqz v2, :cond_8

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    :cond_2
    const v1, 0x7f070009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 226
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MediaController;->mFromXml:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MediaController;->mListenersSet:Z

    if-nez v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 229
    :cond_3
    const v1, 0x7f070005

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 230
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MediaController;->mFromXml:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MediaController;->mListenersSet:Z

    if-nez v1, :cond_4

    .line 231
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 234
    :cond_4
    const v1, 0x7f07000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 235
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_6

    .line 236
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 238
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 240
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 243
    :cond_6
    const v1, 0x7f07000c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 244
    const v1, 0x7f07000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 246
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 248
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->installPrevNextListeners()V

    .line 249
    return-void

    :cond_7
    move v2, v3

    .line 212
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 220
    goto/16 :goto_1
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mWindow:Landroid/view/Window;

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mDecor:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MediaController;->setFocusable(Z)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MediaController;->setFocusableInTouchMode(Z)V

    .line 148
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MediaController;->setDescendantFocusability(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MediaController;->requestFocus()Z

    .line 150
    return-void
.end method

.method private installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 607
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 600
    goto :goto_0

    :cond_3
    move v1, v2

    .line 605
    goto :goto_1
.end method

.method private setProgress()I
    .locals 9

    .prologue
    .line 390
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/gallery3d/app/MediaController;->mDragging:Z

    if-eqz v5, :cond_1

    .line 391
    :cond_0
    const/4 v5, 0x0

    .line 410
    :goto_0
    return v5

    .line 393
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 394
    .local v4, position:I
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 395
    .local v0, duration:I
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_3

    .line 396
    if-lez v0, :cond_2

    .line 398
    const-wide/16 v5, 0x3e8

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v0

    div-long v2, v5, v7

    .line 399
    .local v2, pos:J
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 401
    .end local v2           #pos:J
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 402
    .local v1, percent:I
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 405
    .end local v1           #percent:I
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 406
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 408
    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move v5, v4

    .line 410
    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 375
    div-int/lit16 v3, p1, 0x3e8

    .line 377
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 378
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 379
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 381
    .local v0, hours:I
    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 382
    if-lez v0, :cond_0

    .line 383
    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 385
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x1

    .line 427
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 428
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    .line 430
    .local v1, uniqueDown:Z
    :goto_0
    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3

    .line 433
    :cond_0
    if-eqz v1, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->doPauseResume()V

    .line 435
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 436
    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    move v2, v3

    .line 469
    :goto_1
    return v2

    .line 428
    .end local v1           #uniqueDown:Z
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 441
    .restart local v1       #uniqueDown:Z
    :cond_3
    const/16 v2, 0x7e

    if-ne v0, v2, :cond_5

    .line 442
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_4

    .line 443
    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->start()V

    .line 444
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->updatePausePlay()V

    .line 445
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    :cond_4
    move v2, v3

    .line 447
    goto :goto_1

    .line 448
    :cond_5
    const/16 v2, 0x56

    if-eq v0, v2, :cond_6

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_8

    .line 450
    :cond_6
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 451
    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->pause()V

    .line 452
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->updatePausePlay()V

    .line 453
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    :cond_7
    move v2, v3

    .line 455
    goto :goto_1

    .line 456
    :cond_8
    const/16 v2, 0x19

    if-eq v0, v2, :cond_9

    const/16 v2, 0x18

    if-eq v0, v2, :cond_9

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_a

    .line 460
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 461
    :cond_a
    const/16 v2, 0x52

    if-ne v0, v2, :cond_c

    .line 462
    if-eqz v1, :cond_b

    .line 463
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MediaController;->hide()V

    :cond_b
    move v2, v3

    .line 465
    goto :goto_1

    .line 468
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 469
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mAnchor:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MediaController;->mShowing:Z

    goto :goto_0

    .line 348
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 349
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 194
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mRoot:Landroid/view/View;

    .line 196
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MediaController;->initControllerView(Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MediaController;->initControllerView(Landroid/view/View;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 415
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 421
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 174
    iput-object p1, p0, Lcom/android/gallery3d/app/MediaController;->mAnchor:Landroid/view/View;

    .line 176
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MediaController;->removeAllViews()V

    .line 182
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_6

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 565
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_7

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 569
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 571
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->disableUnsupportedButtons()V

    .line 572
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 573
    return-void

    :cond_6
    move v1, v2

    .line 563
    goto :goto_0

    :cond_7
    move v1, v2

    .line 566
    goto :goto_1
.end method

.method public setMediaPlayer(Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/gallery3d/app/MediaController;->mPlayer:Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    .line 165
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->updatePausePlay()V

    .line 166
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 257
    return-void
.end method

.method public show(I)V
    .locals 8
    .parameter "timeout"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 290
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MediaController;->mShowing:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 293
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->setProgress()I

    .line 294
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->disableUnsupportedButtons()V

    .line 299
    new-array v0, v7, [I

    .line 300
    .local v0, anchorpos:[I
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 302
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 303
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 304
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 305
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 306
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 307
    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 308
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 309
    const/16 v3, 0x3e8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 310
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x82

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 312
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 313
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 314
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MediaController;->mShowing:Z

    .line 317
    .end local v0           #anchorpos:[I
    .end local v2           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MediaController;->updatePausePlay()V

    .line 322
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 325
    .local v1, msg:Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 326
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v3, p0, Lcom/android/gallery3d/app/MediaController;->mHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 329
    :cond_2
    return-void
.end method
