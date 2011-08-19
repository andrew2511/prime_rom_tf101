.class public abstract Lcom/ecareme/pixwe/media/VirtualFeed;
.super Ljava/lang/Object;
.source "VirtualFeed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/VirtualFeed$RangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mElements:Lcom/ecareme/pixwe/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Deque",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected mLoadableBegin:I

.field protected mLoadableEnd:I

.field protected mLoadedBegin:I

.field protected mLoadedEnd:I

.field protected mLoadingBegin:I

.field protected mLoadingEnd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/VirtualFeed;,"Lcom/ecareme/pixwe/media/VirtualFeed<TE;>;"
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadedBegin:I

    .line 21
    iput v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadedEnd:I

    .line 22
    iput v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadingBegin:I

    .line 23
    iput v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadingEnd:I

    .line 24
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadableBegin:I

    .line 25
    const v0, 0x7fffffff

    iput v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadableEnd:I

    .line 26
    new-instance v0, Lcom/ecareme/pixwe/media/Deque;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Deque;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mElements:Lcom/ecareme/pixwe/media/Deque;

    .line 29
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/ecareme/pixwe/media/VirtualFeed;,"Lcom/ecareme/pixwe/media/VirtualFeed<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLoadableBegin()I
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lcom/ecareme/pixwe/media/VirtualFeed;,"Lcom/ecareme/pixwe/media/VirtualFeed<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadableBegin:I

    return v0
.end method

.method public final getLoadableEnd()I
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lcom/ecareme/pixwe/media/VirtualFeed;,"Lcom/ecareme/pixwe/media/VirtualFeed<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadableEnd:I

    return v0
.end method

.method public final getLoadedBegin()I
    .locals 1

    .prologue
    .line 40
    .local p0, this:Lcom/ecareme/pixwe/media/VirtualFeed;,"Lcom/ecareme/pixwe/media/VirtualFeed<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadedBegin:I

    return v0
.end method

.method public final getLoadedEnd()I
    .locals 1

    .prologue
    .line 44
    .local p0, this:Lcom/ecareme/pixwe/media/VirtualFeed;,"Lcom/ecareme/pixwe/media/VirtualFeed<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadedEnd:I

    return v0
.end method

.method public final getLoadingBegin()I
    .locals 1

    .prologue
    .line 48
    .local p0, this:Lcom/ecareme/pixwe/media/VirtualFeed;,"Lcom/ecareme/pixwe/media/VirtualFeed<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadingBegin:I

    return v0
.end method

.method public final getLoadingEnd()I
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/ecareme/pixwe/media/VirtualFeed;,"Lcom/ecareme/pixwe/media/VirtualFeed<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/VirtualFeed;->mLoadingEnd:I

    return v0
.end method

.method public abstract setLoadingRange(II)V
.end method
