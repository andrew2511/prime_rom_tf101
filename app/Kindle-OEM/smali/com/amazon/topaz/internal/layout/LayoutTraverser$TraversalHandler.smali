.class public interface abstract Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;
.super Ljava/lang/Object;
.source "LayoutTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/layout/LayoutTraverser;
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
.method public abstract endBlock(Lcom/amazon/topaz/internal/layout/Block;)I
.end method

.method public abstract startBlock(Lcom/amazon/topaz/internal/layout/Block;)I
.end method

.method public abstract visitLine(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/internal/layout/LayoutLine;)I
.end method
