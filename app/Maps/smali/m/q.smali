.class public Lm/q;
.super Lm/p;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:F

.field private final c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lm/p;-><init>()V

    iput-object p1, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lm/q;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lm/q;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lm/q;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Handler;)Lm/p;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v1, Lm/q;

    invoke-direct {v1, v0, p2}, Lm/q;-><init>(Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Landroid/os/Handler;)Lm/p;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Lm/q;

    invoke-direct {v1, v0, p1}, Lm/q;-><init>(Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lm/q;Lm/I;)V
    .locals 0

    invoke-direct {p0, p1}, Lm/q;->b(Lm/I;)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lm/I;)V
    .locals 0

    invoke-direct {p0}, Lm/q;->b()V

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lm/I;->a(Lm/p;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    if-gtz p1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lm/q;->b:F

    :goto_0
    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    iget v1, p0, Lm/q;->b:F

    iget v2, p0, Lm/q;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x7

    :try_start_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4300

    div-float/2addr v0, v1

    iput v0, p0, Lm/q;->b:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lm/I;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lm/I;->a(Lm/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    iget v1, p0, Lm/q;->b:F

    iget v2, p0, Lm/q;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lm/g;

    invoke-direct {v1, p0, p1}, Lm/g;-><init>(Lm/q;Lm/I;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lm/q;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
