.class public Lcom/google/android/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AudioPreview$PreviewPlayer;,
        Lcom/google/android/music/AudioPreview$ProgressRefresher;
    }
.end annotation


# static fields
.field private static final OPEN_IN_MUSIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPreview"


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDuration:I

.field private mLoadingText:Landroid/widget/TextView;

.field private mMediaId:J

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AudioPreview;->mSeeking:Z

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/AudioPreview;->mMediaId:J

    .line 244
    new-instance v0, Lcom/google/android/music/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/AudioPreview$2;-><init>(Lcom/google/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/google/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 317
    new-instance v0, Lcom/google/android/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/AudioPreview$3;-><init>(Lcom/google/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/google/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 404
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/music/AudioPreview;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/google/android/music/AudioPreview;->mMediaId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/AudioPreview;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/AudioPreview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/AudioPreview;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->start()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/music/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/music/AudioPreview;->mSeeking:Z

    return p1
.end method

.method private showPostPrepareUI()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 227
    const v2, 0x7f0f002e

    invoke-virtual {p0, v2}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 228
    .local v0, pb:Landroid/widget/ProgressBar;
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    .line 230
    iget v2, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 232
    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/google/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 235
    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    const v2, 0x7f0f0031

    invoke-virtual {p0, v2}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/google/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 240
    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v3, p0}, Lcom/google/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/google/android/music/AudioPreview;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    .line 242
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 278
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->start()V

    .line 279
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/google/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/google/android/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->release()V

    .line 206
    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 207
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 209
    :cond_1
    return-void
.end method

.method private updatePlayPause()V
    .locals 3

    .prologue
    .line 306
    const v1, 0x7f0f0034

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 307
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 312
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 340
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    .line 341
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 67
    .local v9, intent:Landroid/content/Intent;
    if-nez v9, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    .line 185
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local p1
    :cond_1
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    .line 72
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, scheme:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->setVolumeControlStream(I)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->requestWindowFeature(I)Z

    .line 80
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->setContentView(I)V

    .line 82
    const v1, 0x7f0f0032

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0f0033

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0f002f

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    .line 85
    const-string v1, "http"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    const v1, 0x7f0c0089

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/AudioPreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v10           #msg:Ljava/lang/String;
    :goto_1
    const v1, 0x7f0f0030

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 93
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 96
    .local v12, player:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    if-nez v12, :cond_5

    .line 97
    new-instance v1, Lcom/google/android/music/AudioPreview$PreviewPlayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/AudioPreview$PreviewPlayer;-><init>(Lcom/google/android/music/AudioPreview$1;)V

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 98
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1, p0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/google/android/music/AudioPreview;)V

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_3
    :goto_2
    new-instance v0, Lcom/google/android/music/AudioPreview$1;

    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/AudioPreview$1;-><init>(Lcom/google/android/music/AudioPreview;Landroid/content/ContentResolver;)V

    .line 158
    .local v0, mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    const-string v1, "content"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    if-ne v1, v2, :cond_6

    .line 161
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "artist"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    .end local v0           #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    .end local v12           #player:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    :cond_4
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 101
    .restart local v12       #player:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 106
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "AudioPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const v1, 0x7f0c0086

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    goto/16 :goto_0

    .line 112
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_5
    iput-object v12, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 113
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1, p0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/google/android/music/AudioPreview;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_2

    .line 168
    .restart local v0       #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_7
    const-string v1, "file"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, path:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "artist"

    aput-object v6, v4, v5

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v11           #path:Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->setNames()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 359
    const-string v0, "open in music"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 360
    return v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->stopPlayback()V

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 333
    const v0, 0x7f0c0086

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 376
    sparse-switch p1, :sswitch_data_0

    .line 397
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 379
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 384
    :goto_1
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    move v0, v1

    .line 385
    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->start()V

    goto :goto_1

    :sswitch_1
    move v0, v1

    .line 390
    goto :goto_0

    .line 393
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->stopPlayback()V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    move v0, v1

    .line 395
    goto :goto_0

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_2
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 365
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 366
    .local v0, item:Landroid/view/MenuItem;
    iget-wide v1, p0, Lcom/google/android/music/AudioPreview;->mMediaId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 367
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v1, v5

    .line 371
    :goto_0
    return v1

    .line 370
    :cond_0
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v1, v6

    .line 371
    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    .end local p1
    :goto_0
    return-void

    .line 220
    .restart local p1
    :cond_0
    check-cast p1, Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .end local p1
    iput-object p1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 221
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->setNames()V

    .line 222
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->start()V

    .line 223
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 190
    .local v0, player:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 191
    return-object v0
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->stopPlayback()V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 216
    return-void
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 349
    :goto_0
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    .line 350
    return-void

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->start()V

    goto :goto_0
.end method

.method public setNames()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
