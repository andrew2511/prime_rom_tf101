.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final mode:I

.field private final shouldCloseFd:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 9
    .parameter "file"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 94
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 65
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 95
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 96
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_17

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 99
    :cond_17
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 100
    if-eqz p2, :cond_3e

    const/16 v1, 0x100

    :goto_22
    iput v1, p0, Ljava/io/FileOutputStream;->mode:I

    .line 101
    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljava/io/FileOutputStream;->mode:I

    invoke-interface {v2, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->open(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Ljava/io/FileDescriptor;->descriptor:I

    .line 102
    iput-boolean v5, p0, Ljava/io/FileOutputStream;->shouldCloseFd:Z

    .line 103
    iget-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 104
    return-void

    :cond_3e
    move v1, v5

    .line 100
    goto :goto_22
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 5
    .parameter "fd"

    .prologue
    const/4 v2, 0x1

    .line 115
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 65
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 116
    if-nez p1, :cond_12

    .line 117
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 119
    :cond_12
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 120
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1b

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V

    .line 123
    :cond_1b
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/FileOutputStream;->shouldCloseFd:Z

    .line 125
    iget v1, p1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-static {p0, v1, v2}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 126
    iput v2, p0, Ljava/io/FileOutputStream;->mode:I

    .line 129
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
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "path"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 143
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
    .line 225
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_14

    .line 226
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 225
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :cond_14
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 148
    monitor-enter p0

    .line 149
    :try_start_6
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_f

    .line 150
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 152
    :cond_f
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->shouldCloseFd:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 153
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 155
    :cond_20
    monitor-exit p0

    .line 156
    return-void

    .line 155
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
    .line 167
    :try_start_0
    iget-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_9

    .line 168
    iget-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 170
    :cond_9
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_17

    .line 173
    :try_start_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10

    .line 180
    return-void

    .line 174
    :catch_10
    move-exception v0

    .line 177
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 172
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_17
    move-exception v1

    .line 173
    :try_start_18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 177
    throw v1

    .line 174
    :catch_1c
    move-exception v0

    .line 177
    .restart local v0       #t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .registers 3

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_11

    .line 189
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    iget v1, p0, Ljava/io/FileOutputStream;->mode:I

    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 191
    :cond_11
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    .line 192
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

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
    .line 199
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public write(I)V
    .registers 7
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Ljava/io/FileOutputStream;->checkOpen()V

    .line 220
    new-array v0, v4, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 221
    .local v0, buffer:[B
    sget-object v1, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v2, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v2, v2, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    .line 222
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 205
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 210
    if-nez p3, :cond_7

    .line 215
    :goto_6
    return-void

    .line 213
    :cond_7
    invoke-direct {p0}, Ljava/io/FileOutputStream;->checkOpen()V

    .line 214
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    goto :goto_6
.end method
