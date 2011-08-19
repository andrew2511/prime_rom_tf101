.class Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;
.super Ljava/lang/Object;
.source "BookTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/BookTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeState"
.end annotation


# instance fields
.field public final childIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<*>;"
        }
    .end annotation
.end field

.field public drawableContainer:Lcom/amazon/topaz/internal/book/Container;

.field public drawableIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<*>;"
        }
    .end annotation
.end field

.field public final node:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/Container;Ljava/util/ListIterator;)V
    .locals 0
    .parameter "node"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/topaz/internal/book/Container;",
            "Ljava/util/ListIterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p2, childIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    .line 198
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    .line 199
    iput-object p2, p0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->childIterator:Ljava/util/ListIterator;

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/book/Drawable;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->childIterator:Ljava/util/ListIterator;

    .line 210
    return-void
.end method
