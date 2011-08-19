.class public Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;
.super Ljava/io/InputStream;
.source "EndpointerInputStream.java"

# interfaces
.implements Lcom/google/android/voicesearch/endpointer/AsyncClosableInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DENOISE_MODE_ALWAYS:I = 0x1

.field public static final DENOISE_MODE_JUDGING:I = 0x3

.field public static final DENOISE_MODE_JUDGING_FOR_SERVER:I = 0x4

.field public static final DENOISE_MODE_NEVER:I = 0x2

.field private static final FRAME_LENGTH_MS:I = 0x14

.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final SAMPLE_RATE_HZ:I = 0x1f40

.field private static final STATE_ENVIRONMENT_ESTIMATION:I = -0x2

.field private static final STATE_NOISE_JUDGED_ABSENT:I = -0x4

.field private static final STATE_NOISE_JUDGED_PRESENT:I = -0x5

.field private static final STATE_NOISE_JUDGING:I = -0x6

.field private static final STATE_NOISE_JUDGING_COMPLETE:I = -0x3

.field private static final STATE_NOISE_JUDGING_FOR_SERVER:I = -0x7

.field private static final STATE_POSSIBLE_OFFSET:I = 0xd

.field private static final STATE_POSSIBLE_ONSET:I = 0xb

.field private static final STATE_POST_SPEECH:I = 0xe

.field private static final STATE_PRE_SPEECH:I = 0xa

.field private static final STATE_SIGNAL_NOT_AVAILABLE:I = 0xf

.field private static final STATE_SPEECH_COMPLETE:I = -0x1

.field private static final STATE_SPEECH_PRESENT:I = 0xc

.field private static final TAG:Ljava/lang/String; = "EndpointerInputStream"


# instance fields
.field private mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field private volatile mCloseRequested:Z

.field private volatile mDiscardRequested:Z

.field private volatile mEndListening:Z

.field private mEnvironmentEstimationFramesRemaining:I

.field private mInputStream:Ljava/io/InputStream;

.field private mIsDiscarding:Z

.field private mIsSpeechDetected:Z

.field private mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

.field private mNativeHandle:I

.field private mNoiseJudgingBuffer:[B

.field private mNoiseJudgingBufferConsumed:I

.field private mNoiseJudgingBufferDenoised:[B

.field private mProcessorNativeInstance:I

.field private volatile mRestartRequested:Z

.field private mRms:[F

.field private mState:I

.field private mUseDenoiser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    :try_start_0
    const-string v0, "voicesearch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    const-string v0, "speech"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;IJJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 116
    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRms:[F

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsSpeechDetected:Z

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndListening:Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRestartRequested:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mDiscardRequested:Z

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mCloseRequested:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsDiscarding:Z

    .line 180
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move-wide v5, p7

    .line 181
    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->endpointerNew(JJJ)I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    .line 186
    packed-switch p2, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    .line 189
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 192
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    goto :goto_0

    .line 197
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    .line 198
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 202
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    goto :goto_0

    .line 209
    :pswitch_2
    const/16 v0, 0xc80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    .line 210
    const/16 v0, 0xc80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferDenoised:[B

    .line 211
    const/4 v0, -0x6

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 216
    const/16 v0, 0x28

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    goto :goto_0

    .line 223
    :pswitch_3
    const/16 v0, 0xc80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    .line 224
    const/4 v0, -0x7

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private native endpointerDelete(I)V
.end method

.method private native endpointerNew(JJJ)I
.end method

.method private native getNoiseLevel(I)F
.end method

.method private judgeNoise([BII)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    array-length v6, v0

    .line 420
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_1

    .line 422
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 424
    const/4 v0, 0x1

    new-array v3, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 427
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->processAudio(I[B[FZZ)I

    .line 433
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->getNoiseLevel(I)F

    move-result v0

    .line 434
    const/high16 v1, 0x4316

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    .line 436
    :goto_0
    if-eqz v1, :cond_5

    .line 437
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x6

    if-ne v0, v1, :cond_4

    .line 439
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferDenoised:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferDenoised:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->processAudio(I[B[FZZ)I

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    .line 446
    const/4 v0, -0x5

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 460
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x5

    if-ne v0, v1, :cond_6

    .line 461
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferDenoised:[B

    .line 469
    :goto_2
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    .line 470
    sub-int v2, v6, v1

    if-le p3, v2, :cond_8

    .line 471
    sub-int v2, v6, v1

    .line 473
    :goto_3
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    .line 478
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    if-ne v0, v6, :cond_2

    .line 479
    const/4 v0, -0x3

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 482
    :cond_2
    return v2

    .line 434
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 449
    :cond_4
    const/4 v0, -0x4

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    goto :goto_1

    .line 452
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    .line 453
    const/4 v1, -0x4

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 454
    const/4 v1, 0x0

    aget v1, v3, v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->promptForSpeech(FF)V

    goto :goto_1

    .line 462
    :cond_6
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_7

    .line 463
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    goto :goto_2

    .line 465
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, p3

    goto :goto_3
.end method

.method private native processAudio(I[B[FZZ)I
.end method

.method private promptForSpeech(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 412
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->startUserInput(I)V

    .line 413
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onReadyForSpeech(FF)V

    .line 416
    :cond_0
    return-void
.end method

.method private native restart(I)V
.end method

.method private restartStreamInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->restart(I)V

    .line 294
    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsSpeechDetected:Z

    .line 295
    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 296
    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 297
    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    .line 298
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    .line 299
    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsDiscarding:Z

    .line 300
    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mDiscardRequested:Z

    .line 301
    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRestartRequested:Z

    .line 302
    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndListening:Z

    .line 303
    return-void
.end method

.method private native startUserInput(I)V
.end method

.method private stateString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 256
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    const-string v0, "STATE_PRE_SPEECH"

    goto :goto_0

    .line 246
    :pswitch_1
    const-string v0, "STATE_POSSIBLE_ONSET"

    goto :goto_0

    .line 248
    :pswitch_2
    const-string v0, "STATE_SPEECH_PRESENT"

    goto :goto_0

    .line 250
    :pswitch_3
    const-string v0, "STATE_POSSIBLE_OFFSET"

    goto :goto_0

    .line 252
    :pswitch_4
    const-string v0, "STATE_POST_SPEECH"

    goto :goto_0

    .line 254
    :pswitch_5
    const-string v0, "STATE_SIGNAL_NOT_AVAILABLE"

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    if-eqz v0, :cond_0

    .line 498
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->endpointerDelete(I)V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    .line 501
    :cond_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v1, "EndpointerInputStream"

    const-string v2, "close() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "someone forgot to close EndpointerInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    return-void
.end method

.method public isSpeechDetected()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsSpeechDetected:Z

    return v0
.end method

.method public pauseStream()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mDiscardRequested:Z

    .line 286
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 262
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
    .line 267
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 307
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 308
    :cond_0
    const-string v0, "EndpointerInputStream"

    const-string v1, "Reading from a closed EndpointerInputStream"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "The EndpointerInputStream is already closed."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mCloseRequested:Z

    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->close()V

    move v0, v7

    .line 407
    :goto_0
    return v0

    .line 317
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mDiscardRequested:Z

    if-eqz v0, :cond_3

    .line 318
    iput-boolean v6, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mDiscardRequested:Z

    .line 319
    iput-boolean v4, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsDiscarding:Z

    move v0, v7

    .line 320
    goto :goto_0

    .line 323
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRestartRequested:Z

    if-eqz v0, :cond_4

    .line 324
    invoke-direct {p0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->restartStreamInternal()V

    .line 327
    :cond_4
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x7

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_6

    .line 331
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->judgeNoise([BII)I

    move-result v0

    goto :goto_0

    .line 335
    :cond_6
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    if-lt v0, v1, :cond_10

    .line 337
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    array-length v0, v0

    .line 338
    iput v6, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 339
    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    move v1, v6

    .line 342
    :goto_1
    if-ge v1, v0, :cond_b

    .line 343
    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    sub-int v5, v0, v1

    invoke-virtual {v2, v3, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 344
    iget-boolean v3, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsDiscarding:Z

    if-eqz v3, :cond_7

    .line 346
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    move v0, v6

    .line 347
    goto :goto_0

    .line 349
    :cond_7
    if-eq v2, v7, :cond_8

    iget-boolean v3, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndListening:Z

    if-eqz v3, :cond_a

    .line 351
    :cond_8
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onEndOfSpeech()V

    .line 354
    :cond_9
    iput-boolean v4, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsDiscarding:Z

    move v0, v7

    .line 356
    goto :goto_0

    .line 358
    :cond_a
    add-int/2addr v1, v2

    .line 359
    goto :goto_1

    .line 362
    :cond_b
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    if-nez v0, :cond_11

    .line 364
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    iget-object v3, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRms:[F

    iget-boolean v5, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->processAudio(I[B[FZZ)I

    move-result v0

    .line 365
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    if-eq v0, v1, :cond_f

    .line 368
    if-ne v0, v7, :cond_d

    .line 369
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    if-eqz v0, :cond_c

    .line 370
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onEndOfSpeech()V

    .line 372
    :cond_c
    iput-boolean v4, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsDiscarding:Z

    move v0, v7

    .line 374
    goto/16 :goto_0

    .line 375
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsSpeechDetected:Z

    if-nez v1, :cond_e

    const/16 v1, 0xc

    if-ne v0, v1, :cond_e

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    if-eqz v1, :cond_e

    .line 377
    iput-boolean v4, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsSpeechDetected:Z

    .line 378
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    invoke-interface {v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onBeginningOfSpeech()V

    .line 380
    :cond_e
    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mState:I

    .line 382
    :cond_f
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onBufferReceived([B)V

    .line 383
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRms:[F

    aget v1, v1, v6

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onRmsChanged(F)V

    .line 397
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mIsDiscarding:Z

    if-eqz v0, :cond_14

    .line 399
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    move v0, v6

    .line 400
    goto/16 :goto_0

    .line 386
    :cond_11
    new-array v3, v4, [F

    const/4 v0, 0x0

    aput v0, v3, v6

    .line 387
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    iget-boolean v5, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->processAudio(I[B[FZZ)I

    .line 388
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    if-nez v0, :cond_13

    move v0, v4

    .line 389
    :goto_2
    if-eqz v0, :cond_12

    .line 390
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->getNoiseLevel(I)F

    move-result v0

    aget v1, v3, v6

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->promptForSpeech(FF)V

    .line 393
    :cond_12
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    move v0, v6

    .line 394
    goto/16 :goto_0

    :cond_13
    move v0, v6

    .line 388
    goto :goto_2

    .line 403
    :cond_14
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_15

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    sub-int/2addr v0, v1

    .line 404
    :goto_3
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    iget v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    goto/16 :goto_0

    :cond_15
    move v0, p3

    goto :goto_3
.end method

.method public requestClose()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mCloseRequested:Z

    .line 505
    return-void
.end method

.method public restartStream()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRestartRequested:Z

    .line 277
    return-void
.end method

.method public setListener(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    .line 239
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndListening:Z

    .line 235
    return-void
.end method
