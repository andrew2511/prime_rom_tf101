.class final Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;
.super Ljava/lang/Object;
.source "LayoutEngine.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/layout/LayoutEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimingTraversalHandler"
.end annotation


# instance fields
.field private final inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;)V
    .locals 1
    .parameter "inner"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    .line 80
    return-void
.end method


# virtual methods
.method public cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "root"
    .parameter "stem"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    return v0
.end method

.method public endContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 2
    .parameter "container"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v1, p1}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->endContainer(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    .line 126
    .local v0, retval:I
    return v0
.end method

.method public endDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "parent"
    .parameter "drawable"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->endDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    return v0
.end method

.method public endPage(Lcom/amazon/topaz/internal/book/Page;)I
    .locals 2
    .parameter "page"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v1, p1}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->endPage(Lcom/amazon/topaz/internal/book/Page;)I

    move-result v0

    .line 133
    .local v0, retval:I
    return v0
.end method

.method public startContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 2
    .parameter "container"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v1, p1}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->startContainer(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    .line 95
    .local v0, retval:I
    return v0
.end method

.method public startContainerDrawables(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "container"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v0, p1}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->startContainerDrawables(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    return v0
.end method

.method public startDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "parent"
    .parameter "drawable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->startDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    return v0
.end method

.method public startPage(Lcom/amazon/topaz/internal/book/Page;)I
    .locals 2
    .parameter "page"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;->inner:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v1, p1}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->startPage(Lcom/amazon/topaz/internal/book/Page;)I

    move-result v0

    .line 87
    .local v0, retval:I
    return v0
.end method
