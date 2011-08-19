.class interface abstract Lcom/amazon/topaz/internal/layout/LayoutBehavior;
.super Ljava/lang/Object;
.source "LayoutBehavior.java"


# virtual methods
.method public abstract canReflowPos(Lcom/amazon/topaz/internal/Anchor;)Z
.end method

.method public abstract cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I
.end method

.method public abstract endContainer(Lcom/amazon/topaz/internal/book/Container;)I
.end method

.method public abstract layoutDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startContainer(Lcom/amazon/topaz/internal/book/Container;)I
.end method
