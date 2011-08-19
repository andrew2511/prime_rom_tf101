.class public Lcom/amazon/topaz/internal/layout/LayoutIterator;
.super Ljava/lang/Object;
.source "LayoutIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final TYPE_BLOCK:I = 0x1

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_LINE:I = 0x2

.field public static final TYPE_NONE:I


# instance fields
.field private final layoutParts:I

.field private next:Ljava/lang/Object;

.field private final traversalHandler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

.field private final traverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/layout/Block;I)V
    .locals 1
    .parameter "startBlock"
    .parameter "partsToIterate"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/layout/LayoutIterator$1;-><init>(Lcom/amazon/topaz/internal/layout/LayoutIterator;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->traversalHandler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    .line 90
    new-instance v0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    invoke-direct {v0, p1}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;-><init>(Lcom/amazon/topaz/internal/layout/Block;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->traverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    .line 91
    iput p2, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->layoutParts:I

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/internal/layout/LayoutIterator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->layoutParts:I

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/internal/layout/LayoutIterator;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amazon/topaz/internal/layout/LayoutIterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next:Ljava/lang/Object;

    return-object p1
.end method

.method private findNext()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->traverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->traverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->traversalHandler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->traverse(Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;)V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->findNext()V

    .line 98
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next:Ljava/lang/Object;

    .line 109
    .local v0, retval:Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next:Ljava/lang/Object;

    .line 110
    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
