.class public Lcom/amazon/topaz/internal/book/Container;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/Container$Builder;
    }
.end annotation


# instance fields
.field private bounds_:Lcom/amazon/system/drawing/Rectangle;

.field private final children_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/book/Container;",
            ">;"
        }
    .end annotation
.end field

.field private continued_:Lcom/amazon/topaz/internal/book/Container;

.field private continuesFrom_:Lcom/amazon/topaz/internal/book/Container;

.field private final drawables_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/book/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final id_:Ljava/lang/String;

.field private final isContinuation_:Z

.field private minWidth_:I

.field private final pageNum_:I

.field private parent:Lcom/amazon/topaz/internal/book/Container;

.field private stemProvider_:Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

.field private final styleRule_:Lcom/amazon/topaz/styles/MatchRule;

.field private final type_:Ljava/lang/String;

.field private final underlined_:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/topaz/styles/MatchRule;ZZLcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)V
    .locals 3
    .parameter "type"
    .parameter "pageNum"
    .parameter "id"
    .parameter
    .parameter
    .parameter "styleRule"
    .parameter "underlined"
    .parameter "isContinuation"
    .parameter "stemProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/book/Container;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/book/Drawable;",
            ">;",
            "Lcom/amazon/topaz/styles/MatchRule;",
            "ZZ",
            "Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 333
    .local p4, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amazon/topaz/internal/book/Container;>;"
    .local p5, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amazon/topaz/internal/book/Drawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container;->type_:Ljava/lang/String;

    .line 335
    iput p2, p0, Lcom/amazon/topaz/internal/book/Container;->pageNum_:I

    .line 336
    iput-object p3, p0, Lcom/amazon/topaz/internal/book/Container;->id_:Ljava/lang/String;

    .line 338
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    .line 340
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    .line 341
    iput-boolean p8, p0, Lcom/amazon/topaz/internal/book/Container;->isContinuation_:Z

    .line 342
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazon/topaz/internal/book/Container;->continued_:Lcom/amazon/topaz/internal/book/Container;

    .line 343
    const/4 v2, 0x0

    iput v2, p0, Lcom/amazon/topaz/internal/book/Container;->minWidth_:I

    .line 344
    iput-boolean p7, p0, Lcom/amazon/topaz/internal/book/Container;->underlined_:Z

    .line 345
    iput-object p9, p0, Lcom/amazon/topaz/internal/book/Container;->stemProvider_:Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

    .line 346
    iput-object p6, p0, Lcom/amazon/topaz/internal/book/Container;->styleRule_:Lcom/amazon/topaz/styles/MatchRule;

    .line 348
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 349
    .local v1, childIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Container;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 352
    .local v0, child:Lcom/amazon/topaz/internal/book/Container;
    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/book/Container;->setParent(Lcom/amazon/topaz/internal/book/Container;)V

    goto :goto_0

    .line 354
    .end local v0           #child:Lcom/amazon/topaz/internal/book/Container;
    :cond_0
    return-void
.end method

.method private paraCont()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->stemProvider_:Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->stemProvider_:Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;->getStem()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/Container;->setContinued(Lcom/amazon/topaz/internal/book/Container;)V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->stemProvider_:Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

    .line 797
    :cond_0
    return-void
.end method

.method private setContinued(Lcom/amazon/topaz/internal/book/Container;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container;->continued_:Lcom/amazon/topaz/internal/book/Container;

    .line 388
    if-eqz p1, :cond_0

    .line 389
    invoke-direct {p1, p0}, Lcom/amazon/topaz/internal/book/Container;->setContinuesFrom(Lcom/amazon/topaz/internal/book/Container;)V

    .line 391
    :cond_0
    return-void
.end method

.method private setContinuesFrom(Lcom/amazon/topaz/internal/book/Container;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container;->continuesFrom_:Lcom/amazon/topaz/internal/book/Container;

    .line 408
    return-void
.end method

.method private setParent(Lcom/amazon/topaz/internal/book/Container;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->parent:Lcom/amazon/topaz/internal/book/Container;

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container;->parent:Lcom/amazon/topaz/internal/book/Container;

    .line 364
    return-void
.end method


# virtual methods
.method public children()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/book/Container;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    return-object v0
.end method

.method public continued()Lcom/amazon/topaz/internal/book/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Container;->paraCont()V

    .line 427
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->continued_:Lcom/amazon/topaz/internal/book/Container;

    return-object v0
.end method

.method public continuesFrom()Lcom/amazon/topaz/internal/book/Container;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->continuesFrom_:Lcom/amazon/topaz/internal/book/Container;

    return-object v0
.end method

.method public draw(Lcom/amazon/topaz/internal/drawing/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/topaz/internal/book/Container;->draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V

    .line 436
    return-void
.end method

.method public draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 7
    .parameter "canvas"
    .parameter "target"

    .prologue
    .line 446
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Container;->type_:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Lcom/amazon/topaz/internal/drawing/Canvas;->drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V

    .line 449
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 450
    .local v1, childrenIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Container;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 452
    .local v0, c:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    .line 453
    .local v4, src:Lcom/amazon/system/drawing/Rectangle;
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Container;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v4, v5, p2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/amazon/topaz/internal/book/Container;->draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_0

    .line 457
    .end local v0           #c:Lcom/amazon/topaz/internal/book/Container;
    .end local v4           #src:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 458
    .local v3, drawablesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Drawable;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/book/Drawable;

    .line 460
    .local v2, d:Lcom/amazon/topaz/internal/book/Drawable;
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Drawable;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    .line 461
    .restart local v4       #src:Lcom/amazon/system/drawing/Rectangle;
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Container;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v4, v5, p2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Lcom/amazon/topaz/internal/book/Drawable;->draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_1

    .line 463
    .end local v2           #d:Lcom/amazon/topaz/internal/book/Drawable;
    .end local v4           #src:Lcom/amazon/system/drawing/Rectangle;
    :cond_1
    return-void
.end method

.method public drawables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/book/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    return-object v0
.end method

.method public firstID()I
    .locals 6

    .prologue
    .line 605
    const/4 v2, -0x1

    .line 606
    .local v2, first:I
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 607
    .local v1, childrenIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Container;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 611
    .local v0, c:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v2

    .line 612
    if-lez v2, :cond_0

    .line 616
    .end local v0           #c:Lcom/amazon/topaz/internal/book/Container;
    :cond_1
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 617
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v3

    .line 618
    .local v3, lowestDrawableId:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    if-ge v3, v2, :cond_3

    .line 619
    :cond_2
    move v2, v3

    .line 623
    .end local v3           #lowestDrawableId:I
    :cond_3
    return v2
.end method

.method public forceParaCont()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Container;->paraCont()V

    .line 784
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Container;->forceParaCont()V

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_0
    return-void
.end method

.method public getBounds()Lcom/amazon/system/drawing/Rectangle;
    .locals 13

    .prologue
    .line 472
    iget-object v10, p0, Lcom/amazon/topaz/internal/book/Container;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    if-nez v10, :cond_4

    .line 474
    const v8, 0x7fffffff

    .line 475
    .local v8, minX:I
    const v9, 0x7fffffff

    .line 476
    .local v9, minY:I
    const/high16 v6, -0x8000

    .line 477
    .local v6, maxX:I
    const/high16 v7, -0x8000

    .line 479
    .local v7, maxY:I
    iget-object v10, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 480
    .local v2, childIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Container;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 482
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 484
    .local v0, child:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 485
    .local v1, childBounds:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v1}, Lcom/amazon/system/drawing/Rectangle;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 487
    iget v10, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 488
    iget v10, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 489
    iget v10, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v11, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v10, v11

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 490
    iget v10, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v11, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0

    .line 494
    .end local v0           #child:Lcom/amazon/topaz/internal/book/Container;
    .end local v1           #childBounds:Lcom/amazon/system/drawing/Rectangle;
    :cond_1
    iget-object v10, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 495
    .local v5, drawableIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Drawable;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 497
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/topaz/internal/book/Drawable;

    .line 498
    .local v3, drawable:Lcom/amazon/topaz/internal/book/Drawable;
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Drawable;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    .line 499
    .local v4, drawableBounds:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v4}, Lcom/amazon/system/drawing/Rectangle;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 501
    iget v10, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 502
    iget v10, v4, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 503
    iget v10, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v11, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v10, v11

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 504
    iget v10, v4, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v11, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 509
    .end local v3           #drawable:Lcom/amazon/topaz/internal/book/Drawable;
    .end local v4           #drawableBounds:Lcom/amazon/system/drawing/Rectangle;
    :cond_3
    new-instance v10, Lcom/amazon/system/drawing/Rectangle;

    sub-int v11, v6, v8

    sub-int v12, v7, v9

    invoke-direct {v10, v8, v9, v11, v12}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    iput-object v10, p0, Lcom/amazon/topaz/internal/book/Container;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    .line 512
    .end local v2           #childIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Container;>;"
    .end local v5           #drawableIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Drawable;>;"
    .end local v6           #maxX:I
    .end local v7           #maxY:I
    .end local v8           #minX:I
    .end local v9           #minY:I
    :cond_4
    new-instance v10, Lcom/amazon/system/drawing/Rectangle;

    iget-object v11, p0, Lcom/amazon/topaz/internal/book/Container;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v10, v11}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    return-object v10
.end method

.method public getContainer(I)Lcom/amazon/topaz/internal/book/Container;
    .locals 6
    .parameter "id"

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v5

    if-lt p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Container;->lastID()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 706
    :cond_0
    const/4 v5, 0x0

    .line 727
    :goto_0
    return-object v5

    .line 709
    :cond_1
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 710
    .local v3, drawablesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Drawable;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 712
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/book/Drawable;

    .line 713
    .local v2, d:Lcom/amazon/topaz/internal/book/Drawable;
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v5

    if-ne v5, p1, :cond_2

    move-object v5, p0

    .line 715
    goto :goto_0

    .line 719
    .end local v2           #d:Lcom/amazon/topaz/internal/book/Drawable;
    :cond_3
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 720
    .local v1, childrenIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Container;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 722
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 724
    .local v0, child:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/book/Container;->getContainer(I)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v4

    .line 725
    .local v4, result:Lcom/amazon/topaz/internal/book/Container;
    if-eqz v4, :cond_4

    move-object v5, v4

    .line 727
    goto :goto_0

    .line 732
    .end local v0           #child:Lcom/amazon/topaz/internal/book/Container;
    .end local v4           #result:Lcom/amazon/topaz/internal/book/Container;
    :cond_5
    new-instance v5, Lcom/amazon/foundation/AssertionError;

    invoke-direct {v5}, Lcom/amazon/foundation/AssertionError;-><init>()V

    throw v5
.end method

.method public getDrawable(I)Lcom/amazon/topaz/internal/book/Drawable;
    .locals 1
    .parameter "index"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/book/Drawable;

    move-object v0, p0

    .line 674
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 7

    .prologue
    .line 523
    iget v6, p0, Lcom/amazon/topaz/internal/book/Container;->minWidth_:I

    if-lez v6, :cond_0

    .line 524
    iget v6, p0, Lcom/amazon/topaz/internal/book/Container;->minWidth_:I

    .line 549
    :goto_0
    return v6

    .line 526
    :cond_0
    const/4 v4, 0x0

    .line 529
    .local v4, mw:I
    iget-object v6, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 530
    .local v1, childrenIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Container;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 531
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 532
    .local v0, c:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->getMinWidth()I

    move-result v5

    .line 533
    .local v5, sw:I
    if-ge v4, v5, :cond_1

    .line 534
    move v4, v5

    goto :goto_1

    .line 539
    .end local v0           #c:Lcom/amazon/topaz/internal/book/Container;
    .end local v5           #sw:I
    :cond_2
    iget-object v6, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 540
    .local v3, drawablesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Drawable;>;"
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 541
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/book/Drawable;

    .line 542
    .local v2, d:Lcom/amazon/topaz/internal/book/Drawable;
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Drawable;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v6

    iget v5, v6, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 543
    .restart local v5       #sw:I
    if-ge v4, v5, :cond_3

    .line 544
    move v4, v5

    goto :goto_2

    .line 548
    .end local v2           #d:Lcom/amazon/topaz/internal/book/Drawable;
    .end local v5           #sw:I
    :cond_4
    iput v4, p0, Lcom/amazon/topaz/internal/book/Container;->minWidth_:I

    .line 549
    iget v6, p0, Lcom/amazon/topaz/internal/book/Container;->minWidth_:I

    goto :goto_0
.end method

.method public getPackWidth()I
    .locals 5

    .prologue
    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, w:I
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 557
    .local v1, childrenIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Container;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 559
    .local v0, c:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v3

    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v3

    .line 560
    goto :goto_0

    .line 563
    .end local v0           #c:Lcom/amazon/topaz/internal/book/Container;
    :cond_0
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 564
    mul-int/lit8 v3, v2, 0x69

    div-int/lit8 v2, v3, 0x64

    .line 566
    :cond_1
    return v2
.end method

.method public getStyle()Lcom/amazon/topaz/styles/Style;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/amazon/topaz/styles/Style;->EMPTY:Lcom/amazon/topaz/styles/Style;

    return-object v0
.end method

.method public getStyleRule()Lcom/amazon/topaz/styles/MatchRule;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->styleRule_:Lcom/amazon/topaz/styles/MatchRule;

    return-object v0
.end method

.method public getText(Lcom/amazon/topaz/internal/binxml/Dictionary;Ljava/lang/StringBuffer;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Container;->lastID()I

    move-result v0

    if-gt p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v0

    if-ge p4, v0, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const/4 v0, 0x0

    .line 576
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    .line 577
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Drawable;

    .line 579
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v3

    .line 580
    if-lt v3, p3, :cond_5

    if-gt v3, p4, :cond_5

    .line 581
    if-eqz v2, :cond_2

    .line 582
    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->SPACE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    :cond_2
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/book/Drawable;->getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    const/4 v0, 0x1

    :goto_2
    move v2, v0

    .line 587
    goto :goto_1

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 589
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 590
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/internal/book/Container;

    .line 591
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/topaz/internal/book/Container;->getText(Lcom/amazon/topaz/internal/binxml/Dictionary;Ljava/lang/StringBuffer;II)V

    goto :goto_3

    .line 593
    :cond_4
    if-eqz v2, :cond_0

    .line 594
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public hasDrawables()Z
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinuation()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/book/Container;->isContinuation_:Z

    return v0
.end method

.method public isUnderlined()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/book/Container;->underlined_:Z

    return v0
.end method

.method public lastID()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 628
    .line 632
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v4

    .line 633
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_3

    .line 634
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container;->children_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->lastID()I

    move-result v0

    .line 635
    if-lez v0, :cond_2

    .line 636
    :goto_1
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/topaz/internal/book/Container;->drawables_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v1

    .line 641
    if-eq v0, v4, :cond_0

    if-le v1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 646
    :cond_1
    return v0

    :cond_2
    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public pageNum()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/amazon/topaz/internal/book/Container;->pageNum_:I

    return v0
.end method
