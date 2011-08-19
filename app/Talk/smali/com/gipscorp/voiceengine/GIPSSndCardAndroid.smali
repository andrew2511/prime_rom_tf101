.class Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;
.super Ljava/lang/Object;
.source "GIPSSndCardAndroid.java"


# instance fields
.field private _audioManager:Landroid/media/AudioManager;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _tempBufPlay:[B

.field private _tempBufRec:[B

.field final logTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x3c0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    .line 27
    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    iput-boolean v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 41
    iput-boolean v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 42
    iput-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    .line 43
    iput-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    .line 45
    iput v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedRecSamples:I

    .line 46
    iput v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    .line 47
    iput v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    .line 542
    const-string v0, "GIPS Snd Card"

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->logTag:Ljava/lang/String;

    .line 52
    const/16 v0, 0x3c0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 54
    const/16 v0, 0x3c0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufPlay:[B

    .line 61
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufRec:[B

    .line 62
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private GIPSLog(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 545
    const-string v0, "GIPS Snd Card"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method private GIPSLogErr(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 549
    const-string v0, "GIPS Snd Card"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void
.end method

.method private GetPlayoutVolume()I
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 504
    :cond_0
    const/4 v0, -0x1

    .line 506
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 510
    :cond_1
    return v0
.end method

.method private InitPlayback(I)I
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v0, 0x2

    const/4 v7, 0x0

    .line 137
    invoke-static {p1, v0, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 144
    const/16 v1, 0x1770

    if-ge v0, v1, :cond_4

    .line 145
    mul-int/lit8 v0, v0, 0x2

    move v5, v0

    .line 147
    :goto_0
    iput v7, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    .line 151
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    .line 158
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v9, :cond_1

    move v0, v8

    .line 188
    :goto_1
    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V

    move v0, v8

    .line 164
    goto :goto_1

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_3

    move v0, v7

    .line 186
    goto :goto_1

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_1

    :cond_4
    move v5, v0

    goto :goto_0
.end method

.method private InitRecording(II)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x2

    .line 69
    invoke-static {p2, v0, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 76
    mul-int/lit8 v5, v0, 0x2

    .line 77
    mul-int/lit8 v0, p2, 0x5

    div-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedRecSamples:I

    .line 81
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    .line 88
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v3, 0x2

    const/4 v4, 0x2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    move v0, v6

    .line 106
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V

    move v0, v6

    .line 94
    goto :goto_0

    .line 106
    :cond_1
    iget v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedRecSamples:I

    goto :goto_0
.end method

.method private PlayAudio(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 297
    .line 299
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 305
    const/4 v0, -0x2

    .line 359
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 362
    :goto_0
    return v0

    .line 309
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 311
    const/16 v0, -0x13

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 316
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufPlay:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 326
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufPlay:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 333
    iget v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    .line 336
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    .line 337
    iget v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    if-ge v1, v2, :cond_2

    .line 338
    const/4 v2, 0x0

    iput v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    .line 340
    :cond_2
    iget v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    iget v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    sub-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    .line 341
    iput v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playPosition:I

    .line 343
    iget-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    if-nez v1, :cond_4

    .line 344
    iget v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    :goto_2
    if-eq v0, p1, :cond_3

    .line 353
    const/4 v0, -0x1

    .line 359
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set play thread priority failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    .line 362
    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_2
.end method

.method private RecordAudio(I)I
    .locals 3
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 374
    const/4 v0, -0x2

    .line 412
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 415
    :goto_0
    return v0

    .line 378
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 380
    const/16 v0, -0x13

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 385
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 395
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufRec:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_tempBufRec:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 400
    if-eq v0, p1, :cond_2

    .line 403
    const/4 v0, -0x1

    .line 412
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set rec thread priority failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 406
    :catch_1
    move-exception v0

    .line 407
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordAudio try failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLogErr(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 412
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 415
    :goto_2
    iget v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_bufferedPlaySamples:I

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private SetAudioMode(Z)V
    .locals 3
    .parameter

    .prologue
    .line 514
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 516
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 523
    const-string v0, "Could not set audio mode - no audio manager"

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLogErr(Ljava/lang/String;)V

    .line 540
    :cond_1
    :goto_0
    return-void

    .line 529
    :cond_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "Samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    const/16 v0, 0x8

    if-ne v0, v1, :cond_1

    .line 533
    if-eqz p1, :cond_4

    const/4 v0, 0x4

    .line 534
    :goto_1
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 535
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 537
    const-string v0, "Could not set audio mode for Samsung device"

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLogErr(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 421
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 428
    const-string v0, "Could not change audio routing - no audio manager"

    invoke-direct {p0, v0}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->GIPSLogErr(Ljava/lang/String;)V

    .line 429
    const/4 v0, -0x1

    .line 475
    :goto_0
    return v0

    .line 432
    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 434
    const/4 v1, 0x3

    if-eq v1, v0, :cond_2

    const/4 v1, 0x4

    if-ne v1, v0, :cond_4

    .line 437
    :cond_2
    if-eqz p1, :cond_3

    .line 440
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    :goto_1
    move v0, v3

    .line 475
    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    .line 451
    :cond_4
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "Samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const/4 v1, 0x5

    if-eq v1, v0, :cond_6

    const/4 v1, 0x6

    if-eq v1, v0, :cond_6

    const/4 v1, 0x7

    if-ne v1, v0, :cond_8

    .line 455
    :cond_6
    if-eqz p1, :cond_7

    .line 458
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 459
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 464
    :cond_7
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 465
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    .line 471
    :cond_8
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1
.end method

.method private SetPlayoutVolume(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    .line 486
    :cond_0
    const/4 v0, -0x1

    .line 488
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 489
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move v0, v2

    .line 493
    :cond_1
    return v0
.end method

.method private StartPlayback()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-boolean v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0, v1}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->SetAudioMode(Z)V

    .line 202
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    iput-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    .line 211
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 207
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private StartRecording()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-boolean v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0, v1}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->SetAudioMode(Z)V

    .line 120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iput-boolean v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    .line 129
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 125
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private StopPlayback()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :try_start_2
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    iput-boolean v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 282
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 285
    iget-boolean v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    if-nez v0, :cond_1

    .line 287
    invoke-direct {p0, v2}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->SetAudioMode(Z)V

    .line 290
    :cond_1
    iput-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    move v0, v2

    .line 291
    :goto_0
    return v0

    .line 265
    :catch_0
    move-exception v0

    .line 267
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    const/4 v0, -0x1

    .line 281
    iput-boolean v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 282
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doPlayInit:Z

    .line 282
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private StopRecording()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    iput-boolean v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 241
    iget-object v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 244
    iget-boolean v0, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isPlaying:Z

    if-nez v0, :cond_1

    .line 246
    invoke-direct {p0, v2}, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->SetAudioMode(Z)V

    .line 249
    :cond_1
    iput-boolean v2, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_isRecording:Z

    move v0, v2

    .line 250
    :goto_0
    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    const/4 v0, -0x1

    .line 240
    iput-boolean v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 241
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_doRecInit:Z

    .line 241
    iget-object v1, p0, Lcom/gipscorp/voiceengine/GIPSSndCardAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
