.class public Lcom/amazon/topaz/internal/book/BookTraverser;
.super Ljava/lang/Object;
.source "BookTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;,
        Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_ITERATOR:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

.field private nodeIsNewBacktrackedContainer:Z

.field private final visitedNodeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/amazon/topaz/internal/book/BookTraverser$1;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/book/BookTraverser$1;-><init>()V

    sput-object v0, Lcom/amazon/topaz/internal/book/BookTraverser;->EMPTY_ITERATOR:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<*>;",
            "Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 242
    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    .line 243
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    new-instance v1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;-><init>(Lcom/amazon/topaz/internal/book/Container;Ljava/util/ListIterator;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iput-object p2, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    .line 245
    return-void
.end method

.method private cascade(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z
    .locals 5
    .parameter "nodeState"
    .parameter "forward"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 411
    iget-object v1, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    .line 412
    .local v1, drawableContainer:Lcom/amazon/topaz/internal/book/Container;
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Container;->continued()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v3

    move-object v0, v3

    .line 413
    .local v0, cascadeCandidate:Lcom/amazon/topaz/internal/book/Container;
    :goto_0
    if-ne v0, v1, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 419
    :cond_0
    if-nez v0, :cond_3

    .line 421
    if-eqz p2, :cond_2

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/amazon/topaz/internal/book/BookTraverser;->pop(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v3

    .line 470
    .end local p0
    :goto_1
    return v3

    .line 412
    .end local v0           #cascadeCandidate:Lcom/amazon/topaz/internal/book/Container;
    .restart local p0
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Container;->continuesFrom()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 429
    .restart local v0       #cascadeCandidate:Lcom/amazon/topaz/internal/book/Container;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableIterator:Ljava/util/ListIterator;

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/amazon/topaz/internal/book/BookTraverser;->stepChild(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v3

    goto :goto_1

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    iget-object p0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/book/Container;

    invoke-interface {v3, p0, v0}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I

    move-result v2

    .line 438
    .local v2, result:I
    if-nez p2, :cond_4

    if-eq v2, v4, :cond_4

    .line 440
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Backtrack over continued container not supported!"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 443
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 472
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 447
    :pswitch_0
    iput-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    .line 448
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->drawables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    iput-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableIterator:Ljava/util/ListIterator;

    move v3, v4

    .line 449
    goto :goto_1

    .line 452
    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    .line 455
    :pswitch_2
    iput-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    .line 456
    if-eqz p2, :cond_5

    .line 458
    :goto_2
    iget-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Container;->continued()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 460
    iget-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Container;->continued()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v3

    iput-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    goto :goto_2

    .line 465
    :cond_5
    :goto_3
    iget-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Container;->continuesFrom()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 467
    iget-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Container;->continuesFrom()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v3

    iput-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableContainer:Lcom/amazon/topaz/internal/book/Container;

    goto :goto_3

    :cond_6
    move v3, v4

    .line 470
    goto :goto_1

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private pop(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 565
    iget-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    instance-of v0, v0, Lcom/amazon/topaz/internal/book/Page;

    if-eqz v0, :cond_1

    .line 567
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    iget-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/topaz/internal/book/Page;

    invoke-interface {v1, v0}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->endPage(Lcom/amazon/topaz/internal/book/Page;)I

    move-result v0

    .line 581
    :goto_0
    if-eq v0, v3, :cond_5

    .line 583
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;

    .line 589
    iget-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    instance-of v0, v0, Lcom/amazon/topaz/internal/book/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableIterator:Ljava/util/ListIterator;

    .line 590
    :goto_1
    if-eqz v0, :cond_0

    .line 594
    if-eqz p2, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 596
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 598
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 609
    :cond_0
    :goto_2
    const/4 v0, 0x1

    .line 611
    :goto_3
    return v0

    .line 569
    :cond_1
    iget-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    instance-of v0, v0, Lcom/amazon/topaz/internal/book/Container;

    if-eqz v0, :cond_2

    .line 571
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    iget-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    invoke-interface {v1, v0}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->endContainer(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v0

    goto :goto_0

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;

    .line 578
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    iget-object v0, v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    iget-object v1, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/topaz/internal/book/Drawable;

    invoke-interface {v2, v0, v1}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->endDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    goto :goto_0

    .line 589
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->childIterator:Ljava/util/ListIterator;

    goto :goto_1

    .line 601
    :cond_4
    if-nez p2, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 605
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 611
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private step(Z)Z
    .locals 3
    .parameter "forward"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 323
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/BookTraverser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/BookTraverser;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_2

    .line 325
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;

    .line 330
    .local v0, nodeState:Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;
    iget-boolean v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->nodeIsNewBacktrackedContainer:Z

    if-eqz v1, :cond_5

    .line 332
    if-eqz p1, :cond_3

    .line 336
    iput-boolean v2, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->nodeIsNewBacktrackedContainer:Z

    .line 337
    invoke-direct {p0, v0, p1}, Lcom/amazon/topaz/internal/book/BookTraverser;->pop(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v1

    .line 363
    :goto_0
    return v1

    .line 343
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/amazon/topaz/internal/book/BookTraverser;->stepIntoDrawables(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 345
    iput-boolean v2, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->nodeIsNewBacktrackedContainer:Z

    .line 346
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 348
    goto :goto_0

    .line 353
    :cond_5
    iget-object v1, v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    instance-of v1, v1, Lcom/amazon/topaz/internal/book/Drawable;

    if-eqz v1, :cond_6

    .line 355
    invoke-direct {p0, v0, p1}, Lcom/amazon/topaz/internal/book/BookTraverser;->pop(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v1

    goto :goto_0

    .line 357
    :cond_6
    iget-object v1, v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableIterator:Ljava/util/ListIterator;

    if-eqz v1, :cond_7

    .line 359
    invoke-direct {p0, v0, p1}, Lcom/amazon/topaz/internal/book/BookTraverser;->stepDrawable(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v1

    goto :goto_0

    .line 363
    :cond_7
    invoke-direct {p0, v0, p1}, Lcom/amazon/topaz/internal/book/BookTraverser;->stepChild(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private stepChild(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 481
    iget-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->childIterator:Ljava/util/ListIterator;

    .line 482
    if-eqz p2, :cond_0

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/amazon/topaz/internal/book/BookTraverser;->stepIntoDrawables(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v1

    .line 528
    :goto_0
    return v1

    .line 487
    :cond_0
    if-nez p2, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/amazon/topaz/internal/book/BookTraverser;->pop(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v1

    goto :goto_0

    .line 493
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/book/Container;

    move-object v2, v1

    .line 495
    :goto_1
    instance-of v1, v2, Lcom/amazon/topaz/internal/book/Page;

    if-eqz v1, :cond_3

    .line 497
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    move-object v0, v2

    check-cast v0, Lcom/amazon/topaz/internal/book/Page;

    move-object v1, v0

    invoke-interface {v4, v1}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->startPage(Lcom/amazon/topaz/internal/book/Page;)I

    move-result v1

    .line 504
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 530
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 493
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/book/Container;

    move-object v2, v1

    goto :goto_1

    .line 501
    :cond_3
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v1, v2}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->startContainer(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v1

    goto :goto_2

    .line 507
    :pswitch_0
    if-eqz p2, :cond_5

    move v1, v6

    .line 508
    :goto_3
    new-instance v3, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->children()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;-><init>(Lcom/amazon/topaz/internal/book/Container;Ljava/util/ListIterator;)V

    .line 509
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    if-nez p2, :cond_4

    .line 512
    iput-boolean v5, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->nodeIsNewBacktrackedContainer:Z

    :cond_4
    move v1, v5

    .line 514
    goto :goto_0

    .line 507
    :cond_5
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->children()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    :pswitch_1
    move v1, v5

    .line 517
    goto :goto_0

    .line 520
    :pswitch_2
    if-eqz p2, :cond_6

    .line 522
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :goto_4
    move v1, v6

    .line 528
    goto :goto_0

    .line 526
    :cond_6
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_4

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stepDrawable(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 373
    iget-object v1, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableIterator:Ljava/util/ListIterator;

    .line 374
    if-eqz p2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/topaz/internal/book/BookTraverser;->cascade(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z

    move-result v0

    .line 400
    :goto_0
    return v0

    .line 379
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Drawable;

    move-object v2, v0

    .line 381
    :goto_1
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    iget-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    invoke-interface {v3, v0, v2}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->startDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    .line 382
    packed-switch v0, :pswitch_data_0

    .line 402
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 379
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Drawable;

    move-object v2, v0

    goto :goto_1

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    new-instance v1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;

    invoke-direct {v1, v2}, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;-><init>(Lcom/amazon/topaz/internal/book/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    .line 386
    goto :goto_0

    :pswitch_1
    move v0, v4

    .line 389
    goto :goto_0

    .line 392
    :pswitch_2
    if-eqz p2, :cond_4

    .line 394
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 400
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :cond_4
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stepIntoDrawables(Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;Z)Z
    .locals 6
    .parameter "nodeState"
    .parameter "forward"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    iget-object v0, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->node:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 540
    .local v0, container:Lcom/amazon/topaz/internal/book/Container;
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->handler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;

    invoke-interface {v3, v0}, Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;->startContainerDrawables(Lcom/amazon/topaz/internal/book/Container;)I

    move-result v2

    .line 541
    .local v2, result:I
    packed-switch v2, :pswitch_data_0

    .line 555
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 544
    :pswitch_0
    if-eqz p2, :cond_0

    move v1, v4

    .line 545
    .local v1, firstDrawableIndex:I
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->drawables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    iput-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableIterator:Ljava/util/ListIterator;

    move v3, v5

    .line 553
    .end local v1           #firstDrawableIndex:I
    :goto_1
    return v3

    .line 544
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->drawables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    goto :goto_0

    :pswitch_1
    move v3, v4

    .line 549
    goto :goto_1

    .line 552
    :pswitch_2
    sget-object v3, Lcom/amazon/topaz/internal/book/BookTraverser;->EMPTY_ITERATOR:Ljava/util/ListIterator;

    iput-object v3, p1, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->drawableIterator:Ljava/util/ListIterator;

    move v3, v5

    .line 553
    goto :goto_1

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public backtrack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/BookTraverser;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/BookTraverser;->step(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;

    .line 300
    .local v0, nodeState:Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->childIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 309
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;

    .line 313
    .local v0, nodeState:Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/BookTraverser;->visitedNodeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lcom/amazon/topaz/internal/book/BookTraverser$NodeState;->childIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public traverse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/BookTraverser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/BookTraverser;->step(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :cond_1
    return-void
.end method
