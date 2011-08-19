.class final Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;
.super Ljava/lang/Object;
.source "LayoutEngine.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/layout/LayoutEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LayoutEngineTraversalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;


# direct methods
.method private constructor <init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;Lcom/amazon/topaz/internal/layout/LayoutEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;-><init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;)V

    return-void
.end method


# virtual methods
.method public cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "root"
    .parameter "stem"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->access$000(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x2

    .line 270
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->access$100(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/topaz/internal/layout/LayoutBehavior;->cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    goto :goto_0
.end method

.method public endContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 2
    .parameter "c"

    .prologue
    .line 295
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->access$100(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/topaz/internal/layout/LayoutBehavior;->endContainer(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    .line 297
    .local v0, retval:I
    return v0
.end method

.method public endDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "parent"
    .parameter "d"

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public endPage(Lcom/amazon/topaz/internal/book/Page;)I
    .locals 1
    .parameter "p"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->endContainer(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    return v0
.end method

.method public startContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 2
    .parameter "c"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->access$000(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, 0x2

    .line 252
    :goto_0
    return v1

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->access$100(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/topaz/internal/layout/LayoutBehavior;->startContainer(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    .local v0, retval:I
    move v1, v0

    .line 252
    goto :goto_0
.end method

.method public startContainerDrawables(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "c"

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public startDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "parent"
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->access$000(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x2

    .line 282
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->access$100(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/topaz/internal/layout/LayoutBehavior;->layoutDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    goto :goto_0
.end method

.method public startPage(Lcom/amazon/topaz/internal/book/Page;)I
    .locals 1
    .parameter "p"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->this$0:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->access$000(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x2

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;->startContainer(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    goto :goto_0
.end method
