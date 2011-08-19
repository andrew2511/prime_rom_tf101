.class public final Lcom/ecareme/pixwe/media/IndexRange;
.super Ljava/lang/Object;
.source "IndexRange.java"


# instance fields
.field public begin:I

.field public end:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 28
    iput v0, p0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "beginRange"
    .parameter "endRange"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 23
    iput p2, p0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 24
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    iget v1, p0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(II)V
    .locals 0
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 32
    iput p1, p0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 33
    iput p2, p0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 34
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    iget v1, p0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    sub-int/2addr v0, v1

    return v0
.end method
