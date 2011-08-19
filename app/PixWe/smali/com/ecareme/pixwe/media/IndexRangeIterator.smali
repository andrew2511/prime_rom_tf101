.class public Lcom/ecareme/pixwe/media/IndexRangeIterator;
.super Ljava/lang/Object;
.source "IndexRangeIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final mList:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mPos:I

.field private mRange:Lcom/ecareme/pixwe/media/IndexRange;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mList:[Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/ecareme/pixwe/media/IndexRange;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/IndexRange;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 31
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mPos:I

    .line 32
    return-void
.end method


# virtual methods
.method public getBegin()I
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mPos:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 49
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 53
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    iget v1, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mPos:I

    add-int/lit8 v0, v1, 0x1

    .line 54
    .local v0, pos:I
    iget-object v1, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mList:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v1, v1, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    iget v1, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mPos:I

    add-int/lit8 v0, v1, 0x1

    .line 64
    .local v0, pos:I
    iget v1, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mPos:I

    .line 65
    iget-object v1, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mList:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 70
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 35
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mPos:I

    .line 36
    return-void
.end method

.method public setRange(II)V
    .locals 1
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 39
    .local p0, this:Lcom/ecareme/pixwe/media/IndexRangeIterator;,"Lcom/ecareme/pixwe/media/IndexRangeIterator<TE;>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mRange:Lcom/ecareme/pixwe/media/IndexRange;

    iput p1, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 40
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mRange:Lcom/ecareme/pixwe/media/IndexRange;

    iput p2, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 41
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iput v0, p0, Lcom/ecareme/pixwe/media/IndexRangeIterator;->mPos:I

    .line 42
    return-void
.end method
