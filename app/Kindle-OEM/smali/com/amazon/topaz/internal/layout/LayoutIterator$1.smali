.class Lcom/amazon/topaz/internal/layout/LayoutIterator$1;
.super Ljava/lang/Object;
.source "LayoutIterator.java"

# interfaces
.implements Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/layout/LayoutIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/internal/layout/LayoutIterator;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/layout/LayoutIterator;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;->this$0:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processObject(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;->this$0:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->access$000(Lcom/amazon/topaz/internal/layout/LayoutIterator;)I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;->this$0:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->access$100(Lcom/amazon/topaz/internal/layout/LayoutIterator;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;->this$0:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-static {v0, p1}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->access$102(Lcom/amazon/topaz/internal/layout/LayoutIterator;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 58
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;->this$0:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->access$100(Lcom/amazon/topaz/internal/layout/LayoutIterator;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 54
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public endBlock(Lcom/amazon/topaz/internal/layout/Block;)I
    .locals 1
    .parameter "b"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;->processObject(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public startBlock(Lcom/amazon/topaz/internal/layout/Block;)I
    .locals 1
    .parameter "b"

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;->processObject(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public visitLine(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/internal/layout/LayoutLine;)I
    .locals 1
    .parameter "parent"
    .parameter "line"

    .prologue
    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;->processObject(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method
