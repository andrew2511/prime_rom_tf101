.class public Ldalvik/system/BlockGuard$WrappedFileSystem;
.super Ljava/lang/Object;
.source "BlockGuard.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IFileSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedFileSystem"
.end annotation


# instance fields
.field private final mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/platform/IFileSystem;)V
    .registers 2
    .parameter "fileSystem"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 167
    return-void
.end method


# virtual methods
.method public fsync(IZ)V
    .registers 4
    .parameter "fileDescriptor"
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 222
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/luni/platform/IFileSystem;->fsync(IZ)V

    .line 223
    return-void
.end method

.method public getAllocGranularity()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/IFileSystem;->getAllocGranularity()I

    move-result v0

    return v0
.end method

.method public ioctlAvailable(Ljava/io/FileDescriptor;)I
    .registers 3
    .parameter "fileDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1}, Lorg/apache/harmony/luni/platform/IFileSystem;->ioctlAvailable(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public length(I)J
    .registers 4
    .parameter "fd"

    .prologue
    .line 252
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1}, Lorg/apache/harmony/luni/platform/IFileSystem;->length(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public lock(IJJIZ)Z
    .registers 16
    .parameter "fileDescriptor"
    .parameter "start"
    .parameter "length"
    .parameter "type"
    .parameter "waitFlag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->lock(IJJIZ)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;I)I
    .registers 4
    .parameter "path"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 236
    if-eqz p2, :cond_10

    .line 237
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 239
    :cond_10
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/luni/platform/IFileSystem;->open(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public read(I[BII)J
    .registers 7
    .parameter "fileDescriptor"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 172
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public readDirect(IIII)J
    .registers 7
    .parameter "fileDescriptor"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 196
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IFileSystem;->readDirect(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public readv(I[I[I[II)J
    .registers 12
    .parameter "fileDescriptor"
    .parameter "addresses"
    .parameter "offsets"
    .parameter "lengths"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 184
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->readv(I[I[I[II)J

    move-result-wide v0

    return-wide v0
.end method

.method public seek(IJI)J
    .registers 7
    .parameter "fileDescriptor"
    .parameter "offset"
    .parameter "whence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public transfer(ILjava/io/FileDescriptor;JJ)J
    .registers 14
    .parameter "fileHandler"
    .parameter "socketDescriptor"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/IFileSystem;->transfer(ILjava/io/FileDescriptor;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public truncate(IJ)V
    .registers 5
    .parameter "fileDescriptor"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 227
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->truncate(IJ)V

    .line 228
    return-void
.end method

.method public unlock(IJJ)V
    .registers 12
    .parameter "fileDescriptor"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->unlock(IJJ)V

    .line 213
    return-void
.end method

.method public write(I[BII)J
    .registers 7
    .parameter "fileDescriptor"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 178
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public writeDirect(IIII)J
    .registers 7
    .parameter "fileDescriptor"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 202
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IFileSystem;->writeDirect(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public writev(I[I[I[II)J
    .registers 12
    .parameter "fileDescriptor"
    .parameter "addresses"
    .parameter "offsets"
    .parameter "lengths"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 190
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedFileSystem;->mFileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->writev(I[I[I[II)J

    move-result-wide v0

    return-wide v0
.end method
