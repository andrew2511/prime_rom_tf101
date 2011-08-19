.class public final Lcom/ecareme/pixwe/media/Deque;
.super Ljava/lang/Object;
.source "Deque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10


# instance fields
.field private mArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    .line 24
    iput v0, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    .line 24
    iput v0, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    .line 34
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private expand()V
    .locals 7

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    const/4 v6, 0x0

    .line 118
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 119
    .local v0, array:[Ljava/lang/Object;
    iget v2, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    .line 120
    .local v2, head:I
    array-length v1, v0

    .line 121
    .local v1, capacity:I
    sub-int v5, v1, v2

    .line 122
    .local v5, rightSize:I
    shl-int/lit8 v4, v1, 0x1

    .line 123
    .local v4, newCapacity:I
    new-array v3, v4, [Ljava/lang/Object;

    .line 124
    .local v3, newArray:[Ljava/lang/Object;
    invoke-static {v0, v2, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-static {v0, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iput-object v3, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 127
    iput v6, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    .line 128
    iput v1, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    .line 129
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    const/4 v4, 0x1

    .line 71
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 72
    .local v0, array:[Ljava/lang/Object;
    iget v2, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    sub-int/2addr v2, v4

    array-length v3, v0

    sub-int/2addr v3, v4

    and-int v1, v2, v3

    .line 73
    .local v1, head:I
    iput v1, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    .line 74
    aput-object p1, v0, v1

    .line 75
    iget v2, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    if-ne v1, v2, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Deque;->expand()V

    .line 78
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 82
    .local v0, array:[Ljava/lang/Object;
    iget v1, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    .line 83
    .local v1, tail:I
    aput-object p1, v0, v1

    .line 84
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int v1, v2, v3

    .line 85
    iput v1, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    .line 86
    iget v2, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    if-ne v2, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Deque;->expand()V

    .line 89
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 7

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    const/4 v6, 0x0

    .line 48
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 49
    .local v0, array:[Ljava/lang/Object;
    iget v1, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    .line 50
    .local v1, head:I
    iget v3, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    .line 51
    .local v3, tail:I
    if-eq v1, v3, :cond_1

    .line 52
    array-length v4, v0

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .line 54
    .local v2, mask:I
    :cond_0
    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 55
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 56
    if-ne v1, v3, :cond_0

    .line 57
    iput v6, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    .line 58
    iput v6, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    .line 60
    .end local v2           #mask:I
    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 64
    .local v0, array:[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Deque;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 67
    :cond_0
    iget v1, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    add-int/2addr v1, p1

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v1, v2

    aget-object v1, v0, v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 38
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    iget v1, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 93
    .local v0, array:[Ljava/lang/Object;
    iget v1, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    .line 94
    .local v1, head:I
    aget-object v2, v0, v1

    .line 95
    .local v2, result:Ljava/lang/Object;,"TE;"
    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-object v3

    .line 98
    :cond_0
    aput-object v3, v0, v1

    .line 99
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v3, v4

    iput v3, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    move-object v3, v2

    .line 100
    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 104
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    .line 105
    .local v0, array:[Ljava/lang/Object;
    iget v3, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    sub-int/2addr v3, v5

    array-length v4, v0

    sub-int/2addr v4, v5

    and-int v2, v3, v4

    .line 106
    .local v2, tail:I
    aget-object v1, v0, v2

    .line 107
    .local v1, result:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_0

    move-object v3, v6

    .line 112
    :goto_0
    return-object v3

    .line 110
    :cond_0
    aput-object v6, v0, v2

    .line 111
    iput v2, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    move-object v3, v1

    .line 112
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 42
    .local p0, this:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/Deque;->mTail:I

    iget v1, p0, Lcom/ecareme/pixwe/media/Deque;->mHead:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ecareme/pixwe/media/Deque;->mArray:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method
