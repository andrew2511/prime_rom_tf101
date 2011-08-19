.class public interface abstract Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;
.super Ljava/lang/Object;
.source "BookTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/BookTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TraversalHandler"
.end annotation


# static fields
.field public static final RESULT_CONTINUE:I = 0x0

.field public static final RESULT_SKIP:I = 0x1

.field public static final RESULT_STOP:I = 0x2


# virtual methods
.method public abstract cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I
.end method

.method public abstract endContainer(Lcom/amazon/topaz/internal/book/Container;)I
.end method

.method public abstract endDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
.end method

.method public abstract endPage(Lcom/amazon/topaz/internal/book/Page;)I
.end method

.method public abstract startContainer(Lcom/amazon/topaz/internal/book/Container;)I
.end method

.method public abstract startContainerDrawables(Lcom/amazon/topaz/internal/book/Container;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startPage(Lcom/amazon/topaz/internal/book/Page;)I
.end method
