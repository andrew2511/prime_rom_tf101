.class public final Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mStarted:Z


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mStarted:Z

    .line 52
    invoke-static {p1, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 54
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 59
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 62
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 65
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    return-void
.end method

.method private ensureStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mStarted:Z

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "couldn\'t start recording"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mStarted:Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    iput-object v2, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 130
    :cond_0
    return-void

    .line 126
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    throw v0

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    :try_start_2
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    iput-object v2, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v2, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MicrophoneInputStream leaked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Single-byte read not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->ensureStarted()V

    .line 101
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 103
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 104
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad offset/length arguments for buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    return v0
.end method
