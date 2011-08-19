.class Lcom/amazon/topaz/WordIterator$1;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/WordIterator;-><init>(Lcom/amazon/topaz/TPZBook;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/WordIterator;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/WordIterator;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amazon/topaz/WordIterator$1;->this$0:Lcom/amazon/topaz/WordIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "root"
    .parameter "stem"

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public endContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "container"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public endDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 1
    .parameter "parent"
    .parameter "drawable"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public endPage(Lcom/amazon/topaz/internal/book/Page;)I
    .locals 1
    .parameter "page"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public startContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "container"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public startContainerDrawables(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator$1;->this$0:Lcom/amazon/topaz/WordIterator;

    invoke-static {v0}, Lcom/amazon/topaz/WordIterator;->access$000(Lcom/amazon/topaz/WordIterator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->drawables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 71
    instance-of v1, p0, Lcom/amazon/topaz/internal/book/Word;

    if-eqz v1, :cond_0

    .line 73
    check-cast p0, Lcom/amazon/topaz/internal/book/Word;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->continued()Lcom/amazon/topaz/internal/book/Word;

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public startDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/amazon/topaz/WordIterator$1;->this$0:Lcom/amazon/topaz/WordIterator;

    invoke-static {v1}, Lcom/amazon/topaz/WordIterator;->access$100(Lcom/amazon/topaz/WordIterator;)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    instance-of v1, p2, Lcom/amazon/topaz/internal/book/Word;

    if-eqz v1, :cond_0

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/amazon/topaz/internal/book/Word;

    move-object v1, v0

    .line 88
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Word;->continued()Lcom/amazon/topaz/internal/book/Word;

    .line 91
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Word;->comesFrom()Lcom/amazon/topaz/internal/book/Word;

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/amazon/topaz/WordIterator$1;->this$0:Lcom/amazon/topaz/WordIterator;

    invoke-static {v1, p2}, Lcom/amazon/topaz/WordIterator;->access$102(Lcom/amazon/topaz/WordIterator;Lcom/amazon/topaz/internal/book/Drawable;)Lcom/amazon/topaz/internal/book/Drawable;

    .line 96
    :cond_0
    const/4 v1, 0x0

    .line 100
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public startPage(Lcom/amazon/topaz/internal/book/Page;)I
    .locals 1
    .parameter "page"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
