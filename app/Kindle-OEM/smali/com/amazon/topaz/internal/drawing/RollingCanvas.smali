.class public Lcom/amazon/topaz/internal/drawing/RollingCanvas;
.super Lcom/amazon/topaz/internal/drawing/Canvas;
.source "RollingCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;
    }
.end annotation


# instance fields
.field private bChunkHeight:I

.field private bTopY:I

.field private final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/drawing/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private final clearRectOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

.field private final debug:Z

.field private final dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

.field private final drawColorOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

.field private final drawImageOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

.field private final drawMetadataOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

.field private final drawWordMetadataOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

.field private format:I

.field private final invertOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

.field private sBufferWidth:I

.field private sChunkHeight:I

.field private final shadeOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;III)V
    .locals 1
    .parameter "dict"
    .parameter "sBufferWidth"
    .parameter "sSuggestedChunkHeight"
    .parameter "format"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/Canvas;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->debug:Z

    .line 54
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$1;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas$1;-><init>(Lcom/amazon/topaz/internal/drawing/RollingCanvas;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->drawImageOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    .line 62
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$2;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas$2;-><init>(Lcom/amazon/topaz/internal/drawing/RollingCanvas;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->drawMetadataOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    .line 70
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$3;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas$3;-><init>(Lcom/amazon/topaz/internal/drawing/RollingCanvas;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->drawWordMetadataOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    .line 78
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$4;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas$4;-><init>(Lcom/amazon/topaz/internal/drawing/RollingCanvas;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->drawColorOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    .line 86
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$5;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas$5;-><init>(Lcom/amazon/topaz/internal/drawing/RollingCanvas;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->shadeOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    .line 94
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$6;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas$6;-><init>(Lcom/amazon/topaz/internal/drawing/RollingCanvas;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->invertOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    .line 102
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$7;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas$7;-><init>(Lcom/amazon/topaz/internal/drawing/RollingCanvas;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->clearRectOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    .line 121
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 122
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->setChunkSize(III)V

    .line 123
    return-void
.end method

.method private addChunkAfter()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->createChunk()Lcom/amazon/topaz/internal/drawing/Canvas;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method private addChunkBefore()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->createChunk()Lcom/amazon/topaz/internal/drawing/Canvas;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 459
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    .line 460
    return-void
.end method

.method private createChunk()Lcom/amazon/topaz/internal/drawing/Canvas;
    .locals 5

    .prologue
    .line 493
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sBufferWidth:I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    iget v4, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->format:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;III)V

    .line 494
    .local v0, retval:Lcom/amazon/topaz/internal/drawing/RasterCanvas;
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->color:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setColor(Lcom/amazon/system/drawing/Color;)V

    .line 495
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setBackgroundColor(Lcom/amazon/system/drawing/Color;)V

    .line 496
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->getZoomFactor()Lcom/amazon/topaz/internal/layout/ZoomFactor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setZoomFactor(Lcom/amazon/topaz/internal/layout/ZoomFactor;)V

    .line 497
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->clear()V

    .line 499
    return-object v0
.end method

.method private ensureCapacity(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter "bTarget"

    .prologue
    .line 442
    :goto_0
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    if-ge v0, v1, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->addChunkBefore()V

    goto :goto_0

    .line 447
    :cond_0
    :goto_1
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->addChunkAfter()V

    goto :goto_1

    .line 451
    :cond_1
    return-void
.end method

.method private findChunkIndexForBookYCoordinate(I)I
    .locals 2
    .parameter "bY"

    .prologue
    .line 420
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method private findChunkIndexForScreenYCoordinate(I)I
    .locals 3
    .parameter "sY"

    .prologue
    .line 430
    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bookToScreen(I)I

    move-result v0

    .line 432
    .local v0, sTopY:I
    sub-int v1, p1, v0

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    div-int/2addr v1, v2

    return v1
.end method

.method static findGreatestCommonFactor(II)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 510
    const/4 v0, 0x1

    .line 512
    .local v0, gcf:I
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 514
    .local v2, larger:I
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    div-int/lit8 v3, v2, 0x2

    if-gt v1, v3, :cond_1

    .line 516
    :goto_1
    rem-int v3, p0, v1

    if-nez v3, :cond_0

    rem-int v3, p1, v1

    if-nez v3, :cond_0

    .line 518
    div-int/2addr p0, v1

    .line 519
    div-int/2addr p1, v1

    .line 520
    mul-int/2addr v0, v1

    goto :goto_1

    .line 514
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_1
    return v0
.end method

.method private getAdjustedChunkHeight(I)I
    .locals 7
    .parameter "sChunkHeight"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->getZoomFactor()Lcom/amazon/topaz/internal/layout/ZoomFactor;

    move-result-object v4

    .line 170
    .local v4, zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;
    invoke-virtual {v4}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->getBookDPI()I

    move-result v0

    .line 171
    .local v0, bookDPI:I
    invoke-virtual {v4}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->getScreenDPI()I

    move-result v2

    .line 173
    .local v2, screenDPI:I
    invoke-static {v0, v2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->findGreatestCommonFactor(II)I

    move-result v1

    .line 174
    .local v1, gcf:I
    div-int v3, v2, v1

    .line 177
    .local v3, screenDPIUniqueFactor:I
    const/4 v5, 0x1

    div-int v6, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/2addr v5, v3

    return v5
.end method

.method private performRenderOperationOnChunks(Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    :try_start_0
    invoke-direct {p0, p3}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->ensureCapacity(Lcom/amazon/system/drawing/Rectangle;)V

    .line 350
    iget v0, p3, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->findChunkIndexForBookYCoordinate(I)I

    move-result v0

    .line 351
    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 352
    iget v2, p3, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int v1, v2, v1

    iput v1, p3, Lcom/amazon/system/drawing/Rectangle;->y:I

    move v1, v0

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-static {p3}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->y2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v0

    if-lez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/drawing/Canvas;

    .line 357
    invoke-interface {p1, v0, p2, p3}, Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;->doRenderOperation(Lcom/amazon/topaz/internal/drawing/Canvas;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V

    .line 354
    add-int/lit8 v0, v1, 0x1

    iget v1, p3, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    sub-int/2addr v1, v2

    iput v1, p3, Lcom/amazon/system/drawing/Rectangle;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    throw v0

    .line 364
    :cond_0
    return-void
.end method

.method private removeFirstChunk()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 476
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    .line 477
    return-void
.end method

.method private removeLastChunk()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 485
    return-void
.end method

.method private resetChunks()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    .line 184
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/drawing/RasterCanvas;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->clear()V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public clearRect(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 2
    .parameter "bTarget"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->clearRectOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->performRenderOperationOnChunks(Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V

    .line 334
    return-void
.end method

.method public discardOutside(II)V
    .locals 4
    .parameter "bY"
    .parameter "bHeight"

    .prologue
    .line 373
    add-int v0, p1, p2

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_1

    .line 392
    :cond_0
    return-void

    .line 381
    :cond_1
    :goto_0
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_2

    .line 383
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->removeFirstChunk()V

    goto :goto_0

    .line 388
    :cond_2
    :goto_1
    add-int v0, p1, p2

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->removeLastChunk()V

    goto :goto_1
.end method

.method public draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 1
    .parameter "color"
    .parameter "bTarget"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->drawColorOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->performRenderOperationOnChunks(Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V

    .line 319
    return-void
.end method

.method public draw(Lcom/amazon/system/drawing/GraphicsExtended;III)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 235
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bookToScreen(I)I

    move-result v0

    .line 236
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->findChunkIndexForScreenYCoordinate(I)I

    move-result v1

    .line 237
    iget v3, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 239
    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 242
    sub-int v0, p2, v0

    move v8, v1

    move v3, p4

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    add-int v1, v0, p3

    if-lez v1, :cond_0

    .line 252
    if-gez v0, :cond_3

    .line 254
    add-int/2addr v0, p3

    move v7, v2

    .line 257
    :goto_1
    add-int v1, v7, v0

    .line 258
    iget v4, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    if-le v1, v4, :cond_2

    .line 260
    iget v4, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    sub-int/2addr v1, v4

    sub-int/2addr v0, v1

    move v5, v0

    .line 263
    :goto_2
    if-ltz v7, :cond_0

    if-gez v5, :cond_1

    .line 273
    :cond_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->getBuffer()Lcom/amazon/topaz/internal/drawing/WritableImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v1

    .line 270
    iget v4, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sBufferWidth:I

    move-object v0, p1

    move v6, v2

    invoke-interface/range {v0 .. v7}, Lcom/amazon/system/drawing/GraphicsExtended;->drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;IIIIII)V

    .line 271
    add-int v0, v3, v5

    .line 247
    add-int/lit8 v1, v8, 0x1

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    sub-int v3, v7, v3

    move v8, v1

    move v9, v0

    move v0, v3

    move v3, v9

    goto :goto_0

    :cond_2
    move v5, v0

    goto :goto_2

    :cond_3
    move v7, v0

    move v0, p3

    goto :goto_1
.end method

.method public draw(Lcom/amazon/topaz/internal/book/IImage;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 1
    .parameter "image"
    .parameter "bTarget"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->drawImageOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->performRenderOperationOnChunks(Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V

    .line 298
    return-void
.end method

.method public drawMeta(Lcom/amazon/topaz/internal/book/Word;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    return-void
.end method

.method public drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    return-void
.end method

.method public getBuffer(II)Lcom/amazon/topaz/internal/drawing/RasterImage;
    .locals 4
    .parameter "sTopY"
    .parameter "sHeight"

    .prologue
    .line 215
    new-instance v1, Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sBufferWidth:I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->format:I

    invoke-direct {v1, v2, p2, v3}, Lcom/amazon/topaz/internal/drawing/WritableImage;-><init>(III)V

    .line 216
    .local v1, image:Lcom/amazon/topaz/internal/drawing/WritableImage;
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->color:Lcom/amazon/system/drawing/Color;

    iget v2, v2, Lcom/amazon/system/drawing/Color;->color:I

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setColor(I)V

    .line 217
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setBackground(Lcom/amazon/system/drawing/Color;)V

    .line 218
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/drawing/BufferedImageExtended;->createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v0

    .line 219
    .local v0, g:Lcom/amazon/system/drawing/GraphicsExtended;
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->color:Lcom/amazon/system/drawing/Color;

    iget v2, v2, Lcom/amazon/system/drawing/Color;->color:I

    invoke-interface {v0, v2}, Lcom/amazon/system/drawing/GraphicsExtended;->setColor(I)V

    .line 220
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    iget v2, v2, Lcom/amazon/system/drawing/Color;->color:I

    invoke-interface {v0, v2}, Lcom/amazon/system/drawing/GraphicsExtended;->setBackground(I)V

    .line 221
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->draw(Lcom/amazon/system/drawing/GraphicsExtended;III)V

    .line 223
    new-instance v2, Lcom/amazon/topaz/internal/drawing/RasterImage;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/topaz/internal/drawing/RasterImage;-><init>(Lcom/amazon/system/drawing/BufferedImageExtended;)V

    return-object v2
.end method

.method public getScreenHeight()I
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sBufferWidth:I

    return v0
.end method

.method public invert(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 1
    .parameter "color"
    .parameter "bTarget"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->invertOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->performRenderOperationOnChunks(Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V

    .line 324
    return-void
.end method

.method public setBackgroundColor(Lcom/amazon/system/drawing/Color;)V
    .locals 2
    .parameter "backgroundColor"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/drawing/Canvas;->setBackgroundColor(Lcom/amazon/system/drawing/Color;)V

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/drawing/Canvas;

    invoke-virtual {v1, p1}, Lcom/amazon/topaz/internal/drawing/Canvas;->setBackgroundColor(Lcom/amazon/system/drawing/Color;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public setChunkSize(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->getAdjustedChunkHeight(I)I

    move-result v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusting chunk height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sBufferWidth:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->format:I

    if-eq p3, v1, :cond_1

    .line 140
    :cond_0
    iput v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    .line 141
    iput p1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sBufferWidth:I

    .line 143
    iput p3, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->format:I

    .line 144
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->resetChunks()V

    .line 147
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->screenToBook(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bChunkHeight:I

    .line 148
    return-void
.end method

.method public setColor(Lcom/amazon/system/drawing/Color;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/drawing/Canvas;->setColor(Lcom/amazon/system/drawing/Color;)V

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/drawing/Canvas;

    invoke-virtual {v1, p1}, Lcom/amazon/topaz/internal/drawing/Canvas;->setColor(Lcom/amazon/system/drawing/Color;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method public setZoomFactor(Lcom/amazon/topaz/internal/layout/ZoomFactor;)V
    .locals 3
    .parameter "newZoomFactor"

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/drawing/Canvas;->setZoomFactor(Lcom/amazon/topaz/internal/layout/ZoomFactor;)V

    .line 280
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->resetChunks()V

    .line 281
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sBufferWidth:I

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->sChunkHeight:I

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->format:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->setChunkSize(III)V

    .line 282
    return-void
.end method

.method public shade(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 1
    .parameter "color"
    .parameter "bTarget"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->shadeOperation:Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->performRenderOperationOnChunks(Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V

    .line 329
    return-void
.end method

.method public shiftCoordinates(I)V
    .locals 1
    .parameter "bDeltaY"

    .prologue
    .line 400
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bTopY:I

    .line 401
    return-void
.end method
