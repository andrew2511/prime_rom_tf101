.class public Lcom/google/android/voicesearch/speechservice/AudioBuffer;
.super Ljava/lang/Object;
.source "AudioBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer; = null

.field private static final TAG:Ljava/lang/String; = "AudioBuffer"


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private mAudioException:Ljava/lang/Exception;

.field private final mAudioPacketSize:I

.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureThread:Ljava/lang/Thread;

.field private final mIn:Ljava/io/InputStream;

.field private final mStopAfterEndpointing:Z

.field private volatile mStopRecording:Z

.field private volatile mStopped:Z

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private readPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(ILjava/io/InputStream;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 74
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    .line 82
    iput-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    .line 90
    iput-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopped:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 101
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    .line 102
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    .line 103
    iput-boolean p3, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopAfterEndpointing:Z

    .line 104
    new-instance v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;-><init>(Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->captureLoop()V

    return-void
.end method

.method private addPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private captureLoop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    :try_start_0
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    new-array v0, v0, [B

    move-object v1, v0

    move v0, v4

    .line 134
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    if-nez v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 138
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 140
    if-lez v0, :cond_1

    .line 141
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V

    move v0, v4

    .line 145
    :cond_1
    sget-object v2, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V

    .line 148
    iget-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopAfterEndpointing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    .line 169
    iput-boolean v5, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopped:Z

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :goto_1
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "AudioBuffer"

    const-string v2, "Closing input stream failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 154
    :cond_2
    add-int/2addr v0, v2

    .line 155
    :try_start_2
    iget v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    if-ne v0, v2, :cond_0

    .line 157
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V

    .line 158
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    new-array v0, v0, [B

    move-object v1, v0

    move v0, v4

    .line 159
    goto :goto_0

    .line 163
    :cond_3
    sget-object v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    iput-boolean v5, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopped:Z

    .line 172
    :try_start_3
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    .line 174
    const-string v1, "AudioBuffer"

    const-string v2, "Closing input stream failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 164
    :catch_2
    move-exception v0

    .line 165
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    if-nez v1, :cond_4

    .line 166
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->setAudioException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    :cond_4
    iput-boolean v5, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopped:Z

    .line 172
    :try_start_5
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 173
    :catch_3
    move-exception v0

    .line 174
    const-string v1, "AudioBuffer"

    const-string v2, "Closing input stream failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 169
    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopped:Z

    .line 172
    :try_start_6
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 175
    :goto_2
    throw v0

    .line 173
    :catch_4
    move-exception v1

    .line 174
    const-string v2, "AudioBuffer"

    const-string v3, "Closing input stream failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setAudioException(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 192
    :try_start_0
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 197
    return-void

    .line 195
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public getAudio()[B
    .locals 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 208
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 214
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 212
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 268
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 272
    new-instance v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;

    const-string v1, "Audio capture threw exception"

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopped:Z

    return v0
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public restartBuffersToBackup()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 252
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopped:Z

    .line 226
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    .line 124
    return-void
.end method
