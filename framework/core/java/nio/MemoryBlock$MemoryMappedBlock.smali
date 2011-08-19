.class Ljava/nio/MemoryBlock$MemoryMappedBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryMappedBlock"
.end annotation


# direct methods
.method private constructor <init>(IJ)V
    .registers 5
    .parameter "address"
    .parameter "byteCount"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/MemoryBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(IJLjava/nio/MemoryBlock$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/nio/MemoryBlock$MemoryMappedBlock;->free()V

    .line 43
    return-void
.end method

.method public free()V
    .registers 4

    .prologue
    .line 35
    iget v0, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->address:I

    if-eqz v0, :cond_e

    .line 36
    iget v0, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->address:I

    iget-wide v1, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->size:J

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->munmap(IJ)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->address:I

    .line 39
    :cond_e
    return-void
.end method
