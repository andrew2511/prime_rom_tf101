.class Lorg/apache/harmony/luni/platform/OSFileSystem;
.super Ljava/lang/Object;
.source "OSFileSystem.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IFileSystem;


# static fields
.field private static final singleton:Lorg/apache/harmony/luni/platform/OSFileSystem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lorg/apache/harmony/luni/platform/OSFileSystem;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSFileSystem;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/OSFileSystem;->singleton:Lorg/apache/harmony/luni/platform/OSFileSystem;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getOSFileSystem()Lorg/apache/harmony/luni/platform/OSFileSystem;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lorg/apache/harmony/luni/platform/OSFileSystem;->singleton:Lorg/apache/harmony/luni/platform/OSFileSystem;

    return-object v0
.end method

.method private native lockImpl(IJJIZ)I
.end method

.method private native unlockImpl(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final validateLockArgs(IJJ)V
    .registers 9
    .parameter "type"
    .parameter "start"
    .parameter "length"

    .prologue
    const-wide/16 v1, 0x0

    .line 40
    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal lock type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_10
    cmp-long v0, p2, v1

    if-gez v0, :cond_1c

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1c
    cmp-long v0, p4, v1

    if-gez v0, :cond_28

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_28
    return-void
.end method


# virtual methods
.method public native fsync(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native getAllocGranularity()I
.end method

.method public native ioctlAvailable(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native length(I)J
.end method

.method public lock(IJJIZ)Z
    .registers 15
    .parameter "fd"
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
    .line 70
    move-object v0, p0

    move v1, p6

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->validateLockArgs(IJJ)V

    .line 71
    invoke-direct/range {p0 .. p7}, Lorg/apache/harmony/luni/platform/OSFileSystem;->lockImpl(IJJIZ)I

    move-result v6

    .line 72
    .local v6, result:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public native open(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public native read(I[BII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native readDirect(IIII)J
.end method

.method public native readv(I[I[I[II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native seek(IJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native transfer(ILjava/io/FileDescriptor;JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native truncate(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public unlock(IJJ)V
    .registers 12
    .parameter "fd"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->validateLockArgs(IJJ)V

    .line 80
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->unlockImpl(IJJ)V

    .line 81
    return-void
.end method

.method public native write(I[BII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native writeDirect(IIII)J
.end method

.method public native writev(I[I[I[II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
