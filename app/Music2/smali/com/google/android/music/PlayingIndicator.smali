.class public Lcom/google/android/music/PlayingIndicator;
.super Landroid/widget/LinearLayout;
.source "PlayingIndicator.java"


# static fields
.field public static final PLAY_STATE_NOT_PLAYING:I = 0x0

.field public static final PLAY_STATE_PAUSED:I = 0x1

.field public static final PLAY_STATE_PLAYING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PlayingIndicator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mLeftImage:Landroid/widget/ImageView;

.field private mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRightImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    .line 36
    iput-boolean v0, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z

    .line 93
    new-instance v0, Lcom/google/android/music/PlayingIndicator$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlayingIndicator$1;-><init>(Lcom/google/android/music/PlayingIndicator;)V

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/google/android/music/PlayingIndicator;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayingIndicator;->addView(Landroid/view/View;)V

    .line 45
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayingIndicator;->addView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/PlayingIndicator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/PlayingIndicator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V

    return-void
.end method

.method private declared-synchronized registerReceiver()V
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/PlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setPlayState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 113
    iput p1, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 128
    const-string v0, "PlayingIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayState: unexpected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->unregisterReceiver()V

    .line 117
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->stopAnimation()V

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->registerReceiver()V

    .line 121
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->stopAnimation()V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->registerReceiver()V

    .line 125
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->startAnimation()V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 141
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 142
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 143
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 144
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    const v1, 0x7f020196

    .line 147
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 148
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 150
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    return-void
.end method

.method private declared-synchronized unregisterReceiver()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 55
    iget v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->registerReceiver()V

    .line 63
    iget v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->stopAnimation()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->startAnimation()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->unregisterReceiver()V

    .line 91
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    if-nez p1, :cond_2

    .line 159
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V

    goto :goto_0

    .line 164
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V

    goto :goto_0
.end method
