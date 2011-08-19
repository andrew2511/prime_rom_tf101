.class public Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
.super Landroid/widget/FrameLayout;
.source "ObjectSelectionView.java"


# static fields
.field private static final HANDLE_TOUCH_PRECISION:I = 0xf


# instance fields
.field private defaultSelectionPaint:Landroid/graphics/Paint;

.field private definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

.field private final definitionPopupInBottomMargin:Z

.field private handlePaint:Landroid/graphics/Paint;

.field private leftMargin:I

.field private objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

.field public selectionAreaChangedCallback:Lcom/amazon/foundation/ICallback;

.field private selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

.field private selectionMode:Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

.field private selectionRectangles:Ljava/util/Vector;

.field private topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView$1;-><init>(Lcom/amazon/kcp/reader/ui/ObjectSelectionView;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionAreaChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->defaultSelectionPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->defaultSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->defaultSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->handlePaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iput-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 81
    iput-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    .line 82
    iput-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    .line 83
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionMode:Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

    .line 84
    iput-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    .line 86
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionPopupInBottomMargin:Z

    .line 87
    return-void

    :cond_0
    move-object v0, v3

    .line 83
    goto :goto_0
.end method

.method private areHandlesVisible()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-nez v1, :cond_0

    move v1, v2

    .line 426
    :goto_0
    return v1

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v0

    .line 426
    .local v0, selectionState:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;
    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private drawHandle(Landroid/graphics/Canvas;Z)V
    .locals 5
    .parameter "canvas"
    .parameter "start"

    .prologue
    .line 332
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getHandleRectangle(Z)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 333
    .local v1, rect:Lcom/amazon/system/drawing/Rectangle;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 334
    .local v0, path:Landroid/graphics/Path;
    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 335
    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    int-to-float v2, v2

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 336
    if-eqz p2, :cond_0

    .line 338
    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 344
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 345
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 346
    return-void

    .line 342
    :cond_0
    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    int-to-float v2, v2

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private drawSelectionRectangles(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    .line 300
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 305
    .local v7, element:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    move-object v9, v0

    .line 306
    .local v9, rect:Lcom/amazon/system/drawing/Rectangle;
    iget v1, v9, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->leftMargin:I

    add-int/2addr v1, v2

    iput v1, v9, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 307
    iget v1, v9, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->topMargin:I

    add-int/2addr v1, v2

    iput v1, v9, Lcom/amazon/system/drawing/Rectangle;->y:I

    goto :goto_0

    .line 312
    .end local v7           #element:Ljava/lang/Object;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #rect:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 317
    .restart local v7       #element:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    move-object v9, v0

    .line 318
    .restart local v9       #rect:Lcom/amazon/system/drawing/Rectangle;
    iget v1, v9, Lcom/amazon/system/drawing/Rectangle;->x:I

    int-to-float v2, v1

    iget v1, v9, Lcom/amazon/system/drawing/Rectangle;->y:I

    int-to-float v3, v1

    iget v1, v9, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, v9, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    iget v1, v9, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, v9, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->defaultSelectionPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 322
    .end local v7           #element:Ljava/lang/Object;
    .end local v9           #rect:Lcom/amazon/system/drawing/Rectangle;
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->areHandlesVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->drawHandle(Landroid/graphics/Canvas;Z)V

    .line 325
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->drawHandle(Landroid/graphics/Canvas;Z)V

    .line 328
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private getHandleRectangle(Z)Lcom/amazon/system/drawing/Rectangle;
    .locals 9
    .parameter "start"

    .prologue
    .line 350
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    :cond_0
    const/4 v6, 0x0

    .line 372
    :goto_0
    return-object v6

    .line 358
    :cond_1
    const/high16 v6, 0x3f80

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 360
    .local v2, handleHeightScalar:F
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 361
    .local v1, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v6, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 363
    .local v3, height:I
    mul-int/lit8 v6, v3, 0x4

    div-int/lit8 v5, v6, 0x7

    .line 364
    .local v5, width:I
    if-eqz p1, :cond_2

    .line 366
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/system/drawing/Rectangle;

    .line 367
    .local v4, startRect:Lcom/amazon/system/drawing/Rectangle;
    new-instance v6, Lcom/amazon/system/drawing/Rectangle;

    iget v7, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int/2addr v7, v5

    iget v8, v4, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-direct {v6, v7, v8, v5, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    goto :goto_0

    .line 371
    .end local v4           #startRect:Lcom/amazon/system/drawing/Rectangle;
    :cond_2
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionRectangles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    .line 372
    .local v0, endRect:Lcom/amazon/system/drawing/Rectangle;
    new-instance v6, Lcom/amazon/system/drawing/Rectangle;

    iget v7, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v8, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-direct {v6, v7, v8, v5, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    goto :goto_0
.end method

.method private pointIsInHandle(IIZ)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "start"

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->areHandlesVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 415
    :goto_0
    return v2

    .line 407
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getHandleRectangle(Z)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 408
    .local v1, rect:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4170

    invoke-static {v2, v3}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v0

    .line 409
    .local v0, expansion:I
    if-eqz v1, :cond_1

    .line 412
    invoke-virtual {v1, v0, v4}, Lcom/amazon/system/drawing/Rectangle;->expand(II)V

    .line 413
    invoke-virtual {v1, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    .line 415
    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->drawSelectionRectangles(Landroid/graphics/Canvas;)V

    .line 175
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 176
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V

    .line 292
    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 293
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 182
    const v0, 0x7f0c0095

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    .line 183
    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    .line 184
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 226
    const/4 v11, 0x0

    .line 227
    .local v11, selectionButtonTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    move-object v14, v0

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->layout()V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getTop()I

    move-result v11

    .line 245
    .end local p1
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionPopupInBottomMargin:Z

    move v14, v0

    if-eqz v14, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->leftMargin:I

    move v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0041

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v15

    add-int v7, v14, v15

    .line 251
    .local v7, dl:I
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0043

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14, v15}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v14

    sub-int v9, p5, v14

    .line 252
    .local v9, dt:I
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0042

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14, v15}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v14

    add-int v8, v7, v14

    .line 253
    .local v8, dr:I
    move/from16 v6, p5

    .line 254
    .local v6, db:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    move-object v14, v0

    invoke-virtual {v14, v7, v9, v8, v6}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->layout(IIII)V

    .line 277
    .end local v6           #db:I
    .end local v7           #dl:I
    .end local v8           #dr:I
    .end local v9           #dt:I
    :cond_1
    :goto_1
    return-void

    .line 236
    .restart local p1
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    move-object v14, v0

    if-eqz v14, :cond_0

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v12

    .line 239
    .local v12, selectionRectangles:Ljava/util/Vector;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/Vector;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 241
    invoke-virtual {v12}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/amazon/system/drawing/Rectangle;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    move v11, v0

    goto/16 :goto_0

    .line 258
    .end local v12           #selectionRectangles:Ljava/util/Vector;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0003

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c8

    div-float v10, v14, v15

    .line 261
    .local v10, screenPercentage:F
    move/from16 v0, p5

    int-to-float v0, v0

    move v14, v0

    mul-float/2addr v14, v10

    float-to-int v5, v14

    .line 262
    .local v5, bottomLimitForTopPlacement:I
    if-le v11, v5, :cond_4

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->layout(IIII)V

    goto :goto_1

    .line 272
    :cond_4
    const/high16 v14, 0x3f80

    sub-float/2addr v14, v10

    move/from16 v0, p5

    int-to-float v0, v0

    move v15, v0

    mul-float/2addr v14, v15

    float-to-int v13, v14

    .line 273
    .local v13, topLimitForBottomPlacement:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p2

    move v2, v13

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->layout(IIII)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, -0x8000

    const/high16 v8, 0x4000

    .line 192
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 193
    .local v1, screenHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 194
    .local v2, screenWidth:I
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->measure(II)V

    .line 202
    :cond_0
    iget-boolean v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionPopupInBottomMargin:Z

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->measure(II)V

    .line 219
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setMeasuredDimension(II)V

    .line 220
    return-void

    .line 213
    :cond_1
    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 214
    .local v0, popupHeight:I
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->measure(II)V

    goto :goto_0
.end method

.method public pointIsInEndHandle(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->pointIsInHandle(IIZ)Z

    move-result v0

    return v0
.end method

.method public pointIsInStartHandle(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->pointIsInHandle(IIZ)Z

    move-result v0

    return v0
.end method

.method public setContentMargins(II)V
    .locals 1
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    .line 158
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->leftMargin:I

    .line 159
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->topMargin:I

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setSelectionContentOffset(II)V

    .line 164
    :cond_0
    return-void
.end method

.method public setDocumentTitleController(Lcom/amazon/kcp/reader/IDocumentTitleController;)V
    .locals 1
    .parameter "titleController"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionMode:Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionMode:Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->setDocumentTitleController(Lcom/amazon/kcp/reader/IDocumentTitleController;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 2
    .parameter "fontSize"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->handlePaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    return-void
.end method

.method public setObjectSelectionController(Lcom/amazon/kcp/reader/ObjectSelectionController;)V
    .locals 1
    .parameter "objectSelectionController"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setObjectSelectionController(Lcom/amazon/kcp/reader/ObjectSelectionController;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionMode:Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionMode:Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->setObjectSelectionController(Lcom/amazon/kcp/reader/ObjectSelectionController;)V

    .line 136
    :cond_1
    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionMode:Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionMode:Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->definitionContainer:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/ObjectSelectionView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView$2;-><init>(Lcom/amazon/kcp/reader/ui/ObjectSelectionView;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 118
    return-void
.end method
