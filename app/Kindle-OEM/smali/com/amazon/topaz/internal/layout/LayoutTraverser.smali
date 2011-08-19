.class Lcom/amazon/topaz/internal/layout/LayoutTraverser;
.super Ljava/lang/Object;
.source "LayoutTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;
    }
.end annotation


# static fields
.field private static final STATE_TRAVERSE_CHILDREN:I = 0x1

.field private static final STATE_TRAVERSE_LINES:I = 0x2


# instance fields
.field private final blockStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/amazon/topaz/internal/layout/Block;",
            ">;"
        }
    .end annotation
.end field

.field private final childIteratorStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/ListIterator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private debugCurBlock:Lcom/amazon/topaz/internal/layout/Block;

.field private debugCurLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

.field private handler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->blockStack:Ljava/util/Stack;

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    .line 46
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->blockStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/layout/Block;->children()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->state:I

    .line 55
    return-void
.end method

.method private popOneLevel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 181
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->blockStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 183
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->handler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    invoke-interface {v1, v0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;->endBlock(Lcom/amazon/topaz/internal/layout/Block;)I

    move-result v0

    .line 185
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->blockStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 195
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->state:I

    move v0, v2

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private traverseChildOrLine()Z
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 119
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 121
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->state:I

    packed-switch v2, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    check-cast v1, Lcom/amazon/topaz/internal/layout/Block;

    .line 133
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->handler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    invoke-interface {v2, v1}, Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;->startBlock(Lcom/amazon/topaz/internal/layout/Block;)I

    move-result v2

    .line 135
    if-nez v2, :cond_0

    .line 143
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->blockStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/Block;->children()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v1, v2

    .line 170
    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 172
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    .line 176
    :goto_1
    return v0

    .line 150
    :pswitch_1
    check-cast v1, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 151
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->blockStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/layout/Block;

    .line 158
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->handler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    invoke-interface {v3, v2, v1}, Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;->visitLine(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/internal/layout/LayoutLine;)I

    move-result v1

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private traverseOneStep()Z
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 85
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->traverseChildOrLine()Z

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 91
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->state:I

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->blockStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 95
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->lines()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->state:I

    .line 101
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->traverseChildOrLine()Z

    move-result v0

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->popOneLevel()Z

    move-result v0

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->popOneLevel()Z

    move-result v0

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->childIteratorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 211
    .local v0, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->blockStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public traverse(Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->handler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->traverseOneStep()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :cond_1
    iput-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->handler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->handler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    throw v0
.end method
