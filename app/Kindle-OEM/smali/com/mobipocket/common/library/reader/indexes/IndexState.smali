.class public Lcom/mobipocket/common/library/reader/indexes/IndexState;
.super Ljava/lang/Object;
.source "IndexState.java"


# instance fields
.field public entryIndex:I

.field public recordIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "recordIndex"
    .parameter "entryIndex"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    .line 13
    iput p1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 14
    iput p2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    .line 15
    return-void
.end method


# virtual methods
.method public cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 28
    .local v0, obj:Lcom/mobipocket/common/library/reader/indexes/IndexState;
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    iput v1, v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 29
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iput v1, v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    .line 31
    return-object v0
.end method

.method public equals(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 48
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    iget v1, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iget v1, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    .line 21
    return-void
.end method

.method public final set(II)V
    .locals 0
    .parameter "recordIndex"
    .parameter "entryIndex"

    .prologue
    .line 36
    iput p1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 37
    iput p2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    .line 38
    return-void
.end method

.method public final set(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 42
    iget v0, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 43
    iget v0, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    .line 44
    return-void
.end method
