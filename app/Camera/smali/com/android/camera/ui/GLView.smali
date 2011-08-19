.class public Lcom/android/camera/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GLView$OnTouchListener;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/android/camera/ui/GLView;

.field private mOnTouchListener:Lcom/android/camera/ui/GLView$OnTouchListener;

.field protected final mPaddings:Landroid/graphics/Rect;

.field private mParent:Lcom/android/camera/ui/GLView;

.field private mRootView:Lcom/android/camera/ui/GLRootView;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field protected mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 52
    iput v1, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    .line 54
    iput v1, p0, Lcom/android/camera/ui/GLView;->mMeasuredWidth:I

    .line 55
    iput v1, p0, Lcom/android/camera/ui/GLView;->mMeasuredHeight:I

    .line 57
    iput v2, p0, Lcom/android/camera/ui/GLView;->mLastWidthSpec:I

    .line 58
    iput v2, p0, Lcom/android/camera/ui/GLView;->mLastHeightSpec:I

    .line 60
    iput v1, p0, Lcom/android/camera/ui/GLView;->mScrollY:I

    .line 61
    iput v1, p0, Lcom/android/camera/ui/GLView;->mScrollX:I

    .line 62
    iput v1, p0, Lcom/android/camera/ui/GLView;->mScrollHeight:I

    .line 63
    iput v1, p0, Lcom/android/camera/ui/GLView;->mScrollWidth:I

    .line 106
    return-void
.end method

.method private dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/camera/ui/GLView;Z)Z
    .locals 5
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "component"
    .parameter "checkBounds"

    .prologue
    .line 253
    iget-object v1, p4, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 254
    .local v1, rect:Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 255
    .local v0, left:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 256
    .local v2, top:I
    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 258
    invoke-virtual {p4, p1}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 260
    const/4 v3, 0x1

    .line 264
    :goto_0
    return v3

    .line 262
    :cond_1
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 264
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setBounds(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 111
    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 113
    .local v0, sizeChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    return v0

    .line 111
    .end local v0           #sizeChanged:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/camera/ui/GLView;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/GLView;->onAddToParent(Lcom/android/camera/ui/GLView;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLView;->onVisibilityChanged(I)V

    .line 159
    :cond_1
    return-void
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public clearComponents()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 139
    return-void
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 269
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 270
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 271
    .local v6, action:I
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mMotionTarget:Lcom/android/camera/ui/GLView;

    if-eqz v0, :cond_0

    .line 272
    if-nez v6, :cond_2

    .line 273
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 274
    .local v7, cancel:Landroid/view/MotionEvent;
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 275
    iput-object v12, p0, Lcom/android/camera/ui/GLView;->mMotionTarget:Lcom/android/camera/ui/GLView;

    .line 285
    .end local v7           #cancel:Landroid/view/MotionEvent;
    :cond_0
    if-nez v6, :cond_6

    .line 286
    const/4 v8, 0x0

    .local v8, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getComponentCount()I

    move-result v9

    .local v9, n:I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 287
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/GLView;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v4

    .line 288
    .local v4, component:Lcom/android/camera/ui/GLView;
    invoke-virtual {v4}, Lcom/android/camera/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 277
    .end local v4           #component:Lcom/android/camera/ui/GLView;
    .end local v8           #i:I
    .end local v9           #n:I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/GLView;->mMotionTarget:Lcom/android/camera/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/camera/ui/GLView;Z)Z

    .line 278
    if-eq v6, v11, :cond_3

    if-ne v6, v10, :cond_4

    .line 280
    :cond_3
    iput-object v12, p0, Lcom/android/camera/ui/GLView;->mMotionTarget:Lcom/android/camera/ui/GLView;

    :cond_4
    move v0, v10

    .line 295
    :goto_1
    return v0

    .restart local v4       #component:Lcom/android/camera/ui/GLView;
    .restart local v8       #i:I
    .restart local v9       #n:I
    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v5, v10

    .line 289
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/camera/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iput-object v4, p0, Lcom/android/camera/ui/GLView;->mMotionTarget:Lcom/android/camera/ui/GLView;

    move v0, v10

    .line 291
    goto :goto_1

    .line 295
    .end local v4           #component:Lcom/android/camera/ui/GLView;
    .end local v8           #i:I
    .end local v9           #n:I
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public getBoundsOf(Lcom/android/camera/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "descendant"
    .parameter "out"

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, xoffset:I
    const/4 v3, 0x0

    .line 365
    .local v3, yoffset:I
    move-object v1, p1

    .line 366
    .local v1, view:Lcom/android/camera/ui/GLView;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 367
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 375
    :goto_1
    return v4

    .line 368
    :cond_0
    iget-object v0, v1, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 369
    .local v0, bounds:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 370
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 371
    iget-object v1, v1, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    .line 372
    goto :goto_0

    .line 373
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/ui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/android/camera/ui/GLView;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 375
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getComponent(I)Lcom/android/camera/ui/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/ui/GLView;

    return-object p0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRootView()Lcom/android/camera/ui/GLRootView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mRootView:Lcom/android/camera/ui/GLRootView;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/android/camera/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/camera/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

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
    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 192
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLRootView;->requestRender()V

    .line 193
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/GLView;->mRootView:Lcom/android/camera/ui/GLRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/GLView;->mRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLRootView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 99
    :goto_0
    return v1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    .line 95
    .local v0, parent:Lcom/android/camera/ui/GLView;
    :goto_1
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, v0, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    goto :goto_1

    :cond_3
    move v1, v3

    .line 99
    goto :goto_0
.end method

.method public layout(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 311
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/GLView;->setBounds(IIII)Z

    move-result v6

    .line 312
    .local v6, sizeChanged:Z
    if-eqz v6, :cond_1

    .line 313
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    .line 314
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/GLView;->onLayout(ZIIII)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 316
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    .line 317
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/GLView;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public measure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 322
    iget v0, p0, Lcom/android/camera/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 336
    :cond_0
    return-void

    .line 327
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/GLView;->mLastWidthSpec:I

    .line 328
    iput p2, p0, Lcom/android/camera/ui/GLView;->mLastHeightSpec:I

    .line 330
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/GLView;->onMeasure(II)V

    .line 332
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 333
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

.method protected onAddToParent(Lcom/android/camera/ui/GLView;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    .line 121
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/camera/ui/GLView;->mRootView:Lcom/android/camera/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p1, Lcom/android/camera/ui/GLView;->mRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLView;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/camera/ui/GLView;->mRootView:Lcom/android/camera/ui/GLRootView;

    .line 386
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLView;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/GLView;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 392
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLView;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/GLView;->onDetachFromRoot()V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ui/GLView;->mRootView:Lcom/android/camera/ui/GLRootView;

    .line 396
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
    .line 357
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 339
    return-void
.end method

.method protected onRemoveFromParent(Lcom/android/camera/ui/GLView;)V
    .locals 9
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 127
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/camera/ui/GLView;->mMotionTarget:Lcom/android/camera/ui/GLView;

    if-ne v2, p0, :cond_0

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 129
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 131
    iput-object v8, p1, Lcom/android/camera/ui/GLView;->mMotionTarget:Lcom/android/camera/ui/GLView;

    .line 133
    .end local v0           #now:J
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->onDetachFromRoot()V

    .line 134
    iput-object v8, p0, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    .line 135
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mOnTouchListener:Lcom/android/camera/ui/GLView$OnTouchListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mOnTouchListener:Lcom/android/camera/ui/GLView$OnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/ui/GLView$OnTouchListener;->onTouch(Lcom/android/camera/ui/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 379
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 380
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLView;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/GLView;->onVisibilityChanged(I)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method public removeComponent(Lcom/android/camera/ui/GLView;)Z
    .locals 2
    .parameter "component"

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    .line 167
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/GLView;->onRemoveFromParent(Lcom/android/camera/ui/GLView;)V

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 167
    goto :goto_0
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/GLView;->renderBackground(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 208
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLView;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    .line 210
    .local v0, component:Lcom/android/camera/ui/GLView;
    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/camera/ui/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_0

    .line 208
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/GLView;->renderChild(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;Lcom/android/camera/ui/GLView;)V

    goto :goto_1

    .line 214
    .end local v0           #component:Lcom/android/camera/ui/GLView;
    :cond_1
    return-void
.end method

.method protected renderBackground(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 217
    return-void
.end method

.method protected renderChild(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;Lcom/android/camera/ui/GLView;)V
    .locals 10
    .parameter "root"
    .parameter "gl"
    .parameter "component"

    .prologue
    .line 220
    iget-object v8, p3, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/camera/ui/GLView;->mScrollX:I

    sub-int v6, v8, v9

    .line 221
    .local v6, xoffset:I
    iget-object v8, p3, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/camera/ui/GLView;->mScrollY:I

    sub-int v7, v8, v9

    .line 223
    .local v7, yoffset:I
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->getTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    .line 224
    .local v5, transform:Landroid/view/animation/Transformation;
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 225
    .local v1, matrix:Landroid/graphics/Matrix;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 227
    iget-object v0, p3, Lcom/android/camera/ui/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 228
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 230
    .local v2, now:J
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->obtainTransformation()Landroid/view/animation/Transformation;

    move-result-object v4

    .line 231
    .local v4, temp:Landroid/view/animation/Transformation;
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 232
    const/4 v8, 0x0

    iput-object v8, p3, Lcom/android/camera/ui/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->invalidate()V

    .line 235
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->pushTransform()Landroid/view/animation/Transformation;

    .line 236
    invoke-virtual {v5, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 237
    invoke-virtual {p1, v4}, Lcom/android/camera/ui/GLRootView;->freeTransformation(Landroid/view/animation/Transformation;)V

    .line 239
    .end local v2           #now:J
    .end local v4           #temp:Landroid/view/animation/Transformation;
    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/android/camera/ui/GLView;->render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 240
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->popTransform()V

    .line 241
    :cond_2
    neg-int v8, v6

    int-to-float v8, v8

    neg-int v9, v7

    int-to-float v9, v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 242
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 196
    iget v1, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    .line 197
    iget-object v1, p0, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLView;->requestLayout()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 202
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 342
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    .line 343
    iput p1, p0, Lcom/android/camera/ui/GLView;->mMeasuredWidth:I

    .line 344
    iput p2, p0, Lcom/android/camera/ui/GLView;->mMeasuredHeight:I

    .line 345
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 308
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "paddings"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-nez p1, :cond_2

    .line 80
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    .line 84
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->invalidate()V

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLView;->onVisibilityChanged(I)V

    goto :goto_0

    .line 82
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 67
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    invoke-virtual {v3}, Lcom/android/camera/ui/GLView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/GLView;->mParent:Lcom/android/camera/ui/GLView;

    invoke-virtual {v4}, Lcom/android/camera/ui/GLView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 72
    iget-object v1, p0, Lcom/android/camera/ui/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 73
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GLRootView;->registerLaunchedAnimation(Landroid/view/animation/Animation;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/ui/GLView;->invalidate()V

    .line 75
    return-void
.end method
