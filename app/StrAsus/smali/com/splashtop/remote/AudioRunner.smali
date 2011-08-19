.class public Lcom/splashtop/remote/AudioRunner;
.super Ljava/lang/Thread;
.source "AudioRunner.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IRISAudio"

.field private static mChannels:I

.field private static mFrameSize:J

.field private static m_track:Landroid/media/AudioTrack;


# instance fields
.field private bHalt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/splashtop/remote/AudioRunner;->bHalt:Z

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/splashtop/remote/AudioRunner;->bHalt:Z

    .line 95
    invoke-virtual {p0}, Lcom/splashtop/remote/AudioRunner;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "IRISAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JAudioRunner::close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x2

    .line 32
    invoke-static {}, Lcom/splashtop/remote/JNILib;->nativeInitAudio()Lcom/splashtop/remote/bean/AudioFormatBean;

    move-result-object v7

    .line 33
    .local v7, afb:Lcom/splashtop/remote/bean/AudioFormatBean;
    invoke-virtual {v7}, Lcom/splashtop/remote/bean/AudioFormatBean;->getFrameSize()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/splashtop/remote/AudioRunner;->mFrameSize:J

    .line 34
    invoke-virtual {v7}, Lcom/splashtop/remote/bean/AudioFormatBean;->getChannels()I

    move-result v0

    sput v0, Lcom/splashtop/remote/AudioRunner;->mChannels:I

    .line 35
    invoke-virtual {v7}, Lcom/splashtop/remote/bean/AudioFormatBean;->getSampleRate()I

    move-result v2

    .line 36
    .local v2, sampleRateInHz:I
    invoke-virtual {v7}, Lcom/splashtop/remote/bean/AudioFormatBean;->getChannels()I

    move-result v0

    if-ne v0, v6, :cond_0

    move v3, v9

    .line 39
    .local v3, channelConfig:I
    :goto_0
    const/4 v4, 0x2

    .line 44
    .local v4, audioFormat:I
    :try_start_0
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 45
    .local v5, bufferSize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    .line 51
    sget-object v0, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v5           #bufferSize:I
    :goto_1
    return-void

    .end local v3           #channelConfig:I
    .end local v4           #audioFormat:I
    :cond_0
    move v3, v6

    .line 36
    goto :goto_0

    .line 52
    .restart local v3       #channelConfig:I
    .restart local v4       #audioFormat:I
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 53
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "IRISAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JAudioRunner::init "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public run()V
    .locals 10

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/splashtop/remote/AudioRunner;->init()V

    .line 65
    :try_start_0
    sget-wide v6, Lcom/splashtop/remote/AudioRunner;->mFrameSize:J

    sget v8, Lcom/splashtop/remote/AudioRunner;->mChannels:I

    int-to-long v8, v8

    mul-long v0, v6, v8

    .line 66
    .local v0, bufferSize:J
    long-to-int v6, v0

    new-array v4, v6, [S

    .line 67
    .local v4, shortBuffer:[S
    const/4 v5, 0x0

    .line 68
    .local v5, succ:Z
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/splashtop/remote/AudioRunner;->bHalt:Z

    if-nez v6, :cond_1

    .line 69
    invoke-static {v4, v0, v1}, Lcom/splashtop/remote/JNILib;->nativeGetAudioBuffer([SJ)Z

    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    sget-object v6, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    const/4 v7, 0x0

    array-length v8, v4

    invoke-virtual {v6, v4, v7, v8}, Landroid/media/AudioTrack;->write([SII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0           #bufferSize:J
    .end local v4           #shortBuffer:[S
    .end local v5           #succ:Z
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 78
    .local v3, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "IRISAudio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JAudioRunner::run "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    sget-object v6, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->stop()V

    .line 82
    sget-object v6, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    .end local v3           #ex:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 81
    .restart local v0       #bufferSize:J
    .restart local v4       #shortBuffer:[S
    .restart local v5       #succ:Z
    :cond_1
    :try_start_3
    sget-object v6, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->stop()V

    .line 82
    sget-object v6, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 83
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 84
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "IRISAudio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JAudioRunner::run "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    .end local v0           #bufferSize:J
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #shortBuffer:[S
    .end local v5           #succ:Z
    .restart local v3       #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 84
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "IRISAudio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JAudioRunner::run "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 81
    :try_start_4
    sget-object v7, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->stop()V

    .line 82
    sget-object v7, Lcom/splashtop/remote/AudioRunner;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 85
    :goto_2
    throw v6

    .line 83
    :catch_3
    move-exception v7

    move-object v2, v7

    .line 84
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v7, "IRISAudio"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JAudioRunner::run "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
