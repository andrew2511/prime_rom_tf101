.class Ljava/nio/MemoryBlock$NonMovableHeapBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonMovableHeapBlock"
.end annotation


# instance fields
.field private array:[B


# direct methods
.method private constructor <init>([BIJ)V
    .registers 6
    .parameter "array"
    .parameter "address"
    .parameter "byteCount"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/nio/MemoryBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    .line 58
    iput-object p1, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    .line 59
    return-void
.end method

.method synthetic constructor <init>([BIJLjava/nio/MemoryBlock$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BIJ)V

    return-void
.end method


# virtual methods
.method public free()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->address:I

    .line 64
    return-void
.end method
