.class public interface abstract Lorg/apache/harmony/luni/platform/IFileSystem;
.super Ljava/lang/Object;
.source "IFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/platform/IFileSystem$SeekPipeException;
    }
.end annotation


# static fields
.field public static final EXCLUSIVE_LOCK_TYPE:I = 0x2

.field public static final O_APPEND:I = 0x100

.field public static final O_CREAT:I = 0x1000

.field public static final O_EXCL:I = 0x10000

.field public static final O_NOCTTY:I = 0x100000

.field public static final O_NONBLOCK:I = 0x1000000

.field public static final O_RDONLY:I = 0x0

.field public static final O_RDWR:I = 0x10

.field public static final O_RDWRSYNC:I = 0x20

.field public static final O_TRUNC:I = 0x10000000

.field public static final O_WRONLY:I = 0x1

.field public static final SEEK_CUR:I = 0x2

.field public static final SEEK_END:I = 0x4

.field public static final SEEK_SET:I = 0x1

.field public static final SHARED_LOCK_TYPE:I = 0x1


# virtual methods
.method public abstract fsync(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAllocGranularity()I
.end method

.method public abstract ioctlAvailable(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract length(I)J
.end method

.method public abstract lock(IJJIZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract read(I[BII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readDirect(IIII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readv(I[I[I[II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(IJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract transfer(ILjava/io/FileDescriptor;JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract truncate(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unlock(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(I[BII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeDirect(IIII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writev(I[I[I[II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
