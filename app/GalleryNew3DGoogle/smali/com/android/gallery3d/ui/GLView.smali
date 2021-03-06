.class public Lcom/android/gallery3d/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# instance fields
.field private mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/android/gallery3d/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/android/gallery3d/ui/GLView;

.field private mRoot:Lcom/android/gallery3d/ui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 63
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 65
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 66
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    .line 68
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 69
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 72
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    .line 73
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollHeight:I

    .line 74
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollWidth:I

    return-void
.end method

.method private setBounds(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 325
    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 327
    .local v0, sizeChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 328
    return v0

    .line 325
    .end local v0           #sizeChanged:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 132
    iget-object v0, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iput-object p0, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 145
    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 108
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 114
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 270
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 271
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 272
    .local v10, action:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    .line 273
    if-nez v10, :cond_2

    .line 274
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 275
    .local v1, cancel:Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 276
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 287
    .end local v1           #cancel:Landroid/view/MotionEvent;
    :cond_0
    if-nez v10, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int v11, v0, v1

    .local v11, i:I
    :goto_0
    if-ltz v11, :cond_6

    .line 290
    invoke-virtual {p0, v11}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v8

    .line 291
    .local v8, component:Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 279
    .end local v8           #component:Lcom/android/gallery3d/ui/GLView;
    .end local v11           #i:I
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    .line 280
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 282
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 284
    :cond_4
    const/4 v0, 0x1

    .line 298
    :goto_1
    return v0

    .line 292
    .restart local v8       #component:Lcom/android/gallery3d/ui/GLView;
    .restart local v11       #i:I
    :cond_5
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iput-object v8, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 294
    const/4 v0, 0x1

    goto :goto_1

    .line 298
    .end local v8           #component:Lcom/android/gallery3d/ui/GLView;
    .end local v11           #i:I
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z
    .locals 5
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "component"
    .parameter "checkBounds"

    .prologue
    .line 254
    iget-object v1, p4, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 255
    .local v1, rect:Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 256
    .local v0, left:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 257
    .local v2, top:I
    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 259
    invoke-virtual {p4, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 261
    const/4 v3, 0x1

    .line 265
    :goto_0
    return v3

    .line 263
    :cond_1
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 265
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "descendant"
    .parameter "out"

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, xoffset:I
    const/4 v3, 0x0

    .line 375
    .local v3, yoffset:I
    move-object v1, p1

    .line 376
    .local v1, view:Lcom/android/gallery3d/ui/GLView;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 377
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 385
    :goto_1
    return v4

    .line 378
    :cond_0
    iget-object v0, v1, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 379
    .local v0, bounds:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 380
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 381
    iget-object v1, v1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 382
    goto :goto_0

    .line 383
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 385
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getComponent(I)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/ui/GLView;

    return-object p0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 197
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 198
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/GLView;->setBounds(IIII)Z

    move-result v6

    .line 315
    .local v6, sizeChanged:Z
    if-eqz v6, :cond_1

    .line 316
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 317
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 319
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 320
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public lockRendering()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 415
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 332
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 346
    :cond_0
    return-void

    .line 337
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 338
    iput p2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 340
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLView;->onMeasure(II)V

    .line 342
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 399
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 405
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 409
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 367
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 349
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 389
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    .line 391
    .local v0, child:Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 392
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 389
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v0           #child:Lcom/android/gallery3d/ui/GLView;
    :cond_1
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 222
    return-void
.end method

.method protected renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V
    .locals 6
    .parameter "canvas"
    .parameter "component"

    .prologue
    const/4 v5, 0x0

    .line 225
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    if-nez v3, :cond_0

    .line 246
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    .line 229
    .local v1, xoffset:I
    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    .line 231
    .local v2, yoffset:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 233
    iget-object v0, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 234
    .local v0, anim:Lcom/android/gallery3d/anim/CanvasAnimation;
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 236
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 241
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 243
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 244
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 245
    :cond_2
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    goto :goto_0

    .line 239
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 202
    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 203
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 204
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 210
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 352
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 353
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 354
    iput p2, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    .line 355
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 311
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "paddings"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    if-nez p1, :cond_1

    .line 91
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 95
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 93
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public unlockRendering()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 421
    :cond_0
    return-void
.end method
