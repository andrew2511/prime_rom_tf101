.class public Lcom/asus/vibe2/Utils_PanelController;
.super Ljava/lang/Object;
.source "Utils_PanelController.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mFavoriteButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLive:Z

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mService:Lcom/asus/vibe2/Srv_Playback;

.field private mStopButton:Landroid/widget/ImageButton;

.field private mTotalTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    .line 23
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    .line 25
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    .line 26
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mStopButton:Landroid/widget/ImageButton;

    .line 27
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mFavoriteButton:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mCurrentTime:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mTotalTime:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mProgress:Landroid/widget/ProgressBar;

    .line 34
    new-instance v0, Lcom/asus/vibe2/Utils_PanelController$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Utils_PanelController$1;-><init>(Lcom/asus/vibe2/Utils_PanelController;)V

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/asus/vibe2/Utils_PanelController$2;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Utils_PanelController$2;-><init>(Lcom/asus/vibe2/Utils_PanelController;)V

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mClickListener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/asus/vibe2/Utils_PanelController$3;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Utils_PanelController$3;-><init>(Lcom/asus/vibe2/Utils_PanelController;)V

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Utils_PanelController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/asus/vibe2/Utils_PanelController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/asus/vibe2/Utils_PanelController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mDragging:Z

    return v0
.end method

.method static synthetic access$202(Lcom/asus/vibe2/Utils_PanelController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/asus/vibe2/Utils_PanelController;->mDragging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/asus/vibe2/Utils_PanelController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mIsLive:Z

    return v0
.end method

.method static synthetic access$400(Lcom/asus/vibe2/Utils_PanelController;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/vibe2/Utils_PanelController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/vibe2/Utils_PanelController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/asus/vibe2/Utils_PanelController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$700(Lcom/asus/vibe2/Utils_PanelController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/vibe2/Utils_PanelController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/asus/vibe2/Utils_PanelController;->updateFavorite()V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/vibe2/Utils_PanelController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "durationMs"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 224
    div-int/lit16 v0, p1, 0x3e8

    .line 225
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 226
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 227
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 229
    .local v4, s:I
    if-nez v2, :cond_0

    .line 230
    const v5, 0x7f04003d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, durationValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 232
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_0
    const v5, 0x7f04003e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private resetViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 239
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 240
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mTotalTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method private setProgress()I
    .locals 8

    .prologue
    .line 174
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mDragging:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v4}, Lcom/asus/vibe2/Srv_Playback;->getPlayerState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 175
    :cond_0
    const/4 v4, 0x0

    .line 196
    :goto_0
    return v4

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v4}, Lcom/asus/vibe2/Srv_Playback;->getCurrentPosition()I

    move-result v3

    .line 178
    .local v3, position:I
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v4}, Lcom/asus/vibe2/Srv_Playback;->getDuration()I

    move-result v0

    .line 179
    .local v0, duration:I
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_2

    .line 180
    if-lez v0, :cond_2

    .line 182
    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v1, v4, v6

    .line 183
    .local v1, pos:J
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 189
    .end local v1           #pos:J
    :cond_2
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mTotalTime:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mIsLive:Z

    if-nez v4, :cond_3

    .line 190
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mTotalTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/asus/vibe2/Utils_PanelController;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/asus/vibe2/Utils_PanelController;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_3
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 193
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController;->mCurrentTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/asus/vibe2/Utils_PanelController;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/asus/vibe2/Utils_PanelController;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_4
    invoke-direct {p0}, Lcom/asus/vibe2/Utils_PanelController;->updatePausePlay()V

    move v4, v3

    .line 196
    goto :goto_0
.end method

.method private updateFavorite()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v1}, Lcom/asus/vibe2/Srv_Playback;->getPlayingParam()Lcom/asus/vibe/item/VibeParam;

    move-result-object v0

    .line 202
    .local v0, param:Lcom/asus/vibe/item/VibeParam;
    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->isFavorite(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mFavoriteButton:Landroid/widget/Button;

    const v2, 0x7f040013

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 211
    .end local v0           #param:Lcom/asus/vibe/item/VibeParam;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v0       #param:Lcom/asus/vibe/item/VibeParam;
    :cond_1
    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mFavoriteButton:Landroid/widget/Button;

    const v2, 0x7f040012

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v0}, Lcom/asus/vibe2/Srv_Playback;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Landroid/view/View;Lcom/asus/vibe2/Srv_Playback;Z)V
    .locals 6
    .parameter "context"
    .parameter "root"
    .parameter "service"
    .parameter "isLive"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    iput-object p3, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    .line 64
    iput-object p1, p0, Lcom/asus/vibe2/Utils_PanelController;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean p4, p0, Lcom/asus/vibe2/Utils_PanelController;->mIsLive:Z

    .line 66
    const v0, 0x7f080016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    .line 67
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 71
    const v0, 0x7f080010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mProgress:Landroid/widget/ProgressBar;

    .line 72
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    const v0, 0x7f080013

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    .line 75
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f080012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mStopButton:Landroid/widget/ImageButton;

    .line 78
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mStopButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f080014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mFavoriteButton:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mFavoriteButton:Landroid/widget/Button;

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 82
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mFavoriteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f080015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mCurrentTime:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f080017

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mTotalTime:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f080011

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v1}, Lcom/asus/vibe2/Srv_Playback;->getPlayingContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-boolean v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mIsLive:Z

    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/asus/vibe2/Utils_SrvPlayback;->getPlayerState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 91
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mTotalTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 104
    :goto_0
    invoke-static {}, Lcom/asus/vibe2/Utils_SrvPlayback;->getPlayerState()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 105
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/asus/vibe2/Utils_PanelController;->updateFavorite()V

    .line 112
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-direct {p0}, Lcom/asus/vibe2/Utils_PanelController;->resetViews()V

    .line 246
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mService:Lcom/asus/vibe2/Srv_Playback;

    .line 249
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mContext:Landroid/content/Context;

    .line 250
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mSeekBar:Landroid/widget/SeekBar;

    .line 251
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mPauseButton:Landroid/widget/ImageButton;

    .line 252
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mStopButton:Landroid/widget/ImageButton;

    .line 253
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mFavoriteButton:Landroid/widget/Button;

    .line 254
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mCurrentTime:Landroid/widget/TextView;

    .line 255
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mTotalTime:Landroid/widget/TextView;

    .line 256
    iput-object v2, p0, Lcom/asus/vibe2/Utils_PanelController;->mProgress:Landroid/widget/ProgressBar;

    .line 257
    return-void
.end method
