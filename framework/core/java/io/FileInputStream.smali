.class public Ljava/io/FileInputStream;
.super Ljava/io/InputStream;
.source "FileInputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final repositioningLock:Ljava/lang/Object;

.field private final shouldCloseFd:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 78
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/io/FileInputStream;->repositioningLock:Ljava/lang/Object;

    .line 65
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 79
    if-nez p1, :cond_1b

    .line 80
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "file == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_1b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 83
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_28

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 86
    :cond_28
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 87
    iget-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iput-boolean v5, v1, Ljava/io/FileDescriptor;->readOnly:Z

    .line 88
    iget-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->open(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Ljava/io/FileDescriptor;->descriptor:I

    .line 89
    iput-boolean v5, p0, Ljava/io/FileInputStream;->shouldCloseFd:Z

    .line 90
    iget-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 5
    .parameter "fd"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/io/FileInputStream;->repositioningLock:Ljava/lang/Object;

    .line 65
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 105
    if-nez p1, :cond_1a

    .line 106
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "fd == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 109
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_23

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V

    .line 112
    :cond_23
    iput-object p1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/FileInputStream;->shouldCloseFd:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 123
    return-void
.end method

.method private declared-synchronized checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_14

    .line 237
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 236
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_14
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/io/FileInputStream;->checkOpen()V

    .line 128
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->ioctlAvailable(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 134
    monitor-enter p0

    .line 135
    :try_start_6
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_f

    .line 136
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 138
    :cond_f
    iget-boolean v0, p0, Ljava/io/FileInputStream;->shouldCloseFd:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 139
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 141
    :cond_20
    monitor-exit p0

    .line 142
    return-void

    .line 141
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_9

    .line 154
    iget-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 156
    :cond_9
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_17

    .line 159
    :try_start_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10

    .line 166
    return-void

    .line 160
    :catch_10
    move-exception v0

    .line 163
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 158
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_17
    move-exception v1

    .line 159
    :try_start_18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 163
    throw v1

    .line 160
    :catch_1c
    move-exception v0

    .line 163
    .restart local v0       #t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .registers 3

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_10

    .line 175
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 177
    :cond_10
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    .line 178
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 190
    new-array v0, v4, [B

    .line 191
    .local v0, buffer:[B
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 192
    .local v1, result:I
    if-ne v1, v2, :cond_c

    :goto_b
    return v2

    :cond_c
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_b
.end method

.method public read([B)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 203
    if-nez p3, :cond_8

    .line 204
    const/4 v0, 0x0

    .line 208
    :goto_7
    return v0

    .line 206
    :cond_8
    invoke-direct {p0}, Ljava/io/FileInputStream;->checkOpen()V

    .line 207
    iget-object v0, p0, Ljava/io/FileInputStream;->repositioningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_e
    sget-object v1, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v2, v2, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J

    move-result-wide v1

    long-to-int v1, v1

    monitor-exit v0

    move v0, v1

    goto :goto_7

    .line 209
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public skip(J)J
    .registers 8
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 214
    invoke-direct {p0}, Ljava/io/FileInputStream;->checkOpen()V

    .line 216
    cmp-long v1, p1, v2

    if-nez v1, :cond_b

    move-wide v1, v2

    .line 231
    :goto_a
    return-wide v1

    .line 219
    :cond_b
    cmp-long v1, p1, v2

    if-gez v1, :cond_28

    .line 220
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_28
    :try_start_28
    iget-object v1, p0, Ljava/io/FileInputStream;->repositioningLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2b
    .catch Lorg/apache/harmony/luni/platform/IFileSystem$SeekPipeException; {:try_start_28 .. :try_end_2b} :catch_3b

    .line 227
    :try_start_2b
    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v3, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v3, v3, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v4, 0x2

    invoke-interface {v2, v3, p1, p2, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    .line 228
    monitor-exit v1

    move-wide v1, p1

    goto :goto_a

    .line 229
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v2
    :try_end_3b
    .catch Lorg/apache/harmony/luni/platform/IFileSystem$SeekPipeException; {:try_start_3a .. :try_end_3b} :catch_3b

    .line 230
    :catch_3b
    move-exception v1

    move-object v0, v1

    .line 231
    .local v0, e:Lorg/apache/harmony/luni/platform/IFileSystem$SeekPipeException;
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    goto :goto_a
.end method
