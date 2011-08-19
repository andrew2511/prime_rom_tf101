.class public abstract Lcom/ecareme/pixwe/media/PagedFeed;
.super Lcom/ecareme/pixwe/media/VirtualFeed;
.source "PagedFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ecareme/pixwe/media/VirtualFeed",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, this:Lcom/ecareme/pixwe/media/PagedFeed;,"Lcom/ecareme/pixwe/media/PagedFeed<TE;>;"
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/VirtualFeed;-><init>()V

    return-void
.end method


# virtual methods
.method public setLoadingRange(II)V
    .locals 0
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 23
    .local p0, this:Lcom/ecareme/pixwe/media/PagedFeed;,"Lcom/ecareme/pixwe/media/PagedFeed<TE;>;"
    return-void
.end method
