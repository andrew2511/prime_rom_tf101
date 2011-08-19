.class public final Lcom/ecareme/pixwe/media/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFreeList:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mFreeListIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeList:[Ljava/lang/Object;

    .line 25
    array-length v0, p1

    iput v0, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeListIndex:I

    .line 26
    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<TE;>;"
    const/4 v4, 0x0

    .line 29
    iget v2, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeListIndex:I

    const/4 v3, 0x1

    sub-int v0, v2, v3

    iput v0, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeListIndex:I

    .line 30
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeList:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeList:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 32
    .local v1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeList:[Ljava/lang/Object;

    aput-object v4, v2, v0

    move-object v2, v1

    .line 35
    .end local v1           #object:Ljava/lang/Object;,"TE;"
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v4

    goto :goto_0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget v0, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeListIndex:I

    .line 40
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeList:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeList:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 42
    iget v1, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ecareme/pixwe/media/Pool;->mFreeListIndex:I

    .line 44
    :cond_0
    return-void
.end method
