.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x33


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field protected mForegroundInPadding:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 59
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 62
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 65
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 68
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 74
    const/16 v0, 0x77

    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 78
    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 81
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 59
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 62
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 65
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 68
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 71
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 74
    const/16 v2, 0x77

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 78
    iput-boolean v5, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 81
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 96
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 102
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_44

    .line 104
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_44
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 108
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 111
    :cond_4d
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 493
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 419
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 421
    iget-object v5, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3a

    .line 422
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 424
    .local v0, foreground:Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    if-eqz v5, :cond_37

    .line 425
    iput-boolean v7, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 426
    iget-object v3, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 427
    .local v3, selfBounds:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 429
    .local v2, overlayBounds:Landroid/graphics/Rect;
    iget v5, p0, Landroid/widget/FrameLayout;->mRight:I

    iget v6, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int v4, v5, v6

    .line 430
    .local v4, w:I
    iget v5, p0, Landroid/widget/FrameLayout;->mBottom:I

    iget v6, p0, Landroid/widget/FrameLayout;->mTop:I

    sub-int v1, v5, v6

    .line 432
    .local v1, h:I
    iget-boolean v5, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v5, :cond_3b

    .line 433
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 438
    :goto_27
    iget v5, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v6, v7, v3, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 440
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 443
    .end local v1           #h:I
    .end local v2           #overlayBounds:Landroid/graphics/Rect;
    .end local v3           #selfBounds:Landroid/graphics/Rect;
    .end local v4           #w:I
    :cond_37
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    .end local v0           #foreground:Landroid/graphics/drawable/Drawable;
    :cond_3a
    return-void

    .line 435
    .restart local v0       #foreground:Landroid/graphics/drawable/Drawable;
    .restart local v1       #h:I
    .restart local v2       #overlayBounds:Landroid/graphics/Rect;
    .restart local v3       #selfBounds:Landroid/graphics/Rect;
    .restart local v4       #w:I
    :cond_3b
    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int v7, v4, v7

    iget v8, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int v8, v1, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_27
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 176
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 177
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 178
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 180
    :cond_18
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 4
    .parameter "region"

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 453
    .local v0, opaque:Z
    if-eqz p1, :cond_f

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 454
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    .line 456
    :cond_f
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 189
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 498
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 485
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .registers 2

    .prologue
    .line 477
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 168
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 169
    :cond_c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 28
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v8

    .line 343
    .local v8, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    move/from16 v21, v0

    add-int v15, v20, v21

    .line 344
    .local v15, parentLeft:I
    sub-int v20, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingRight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    move/from16 v21, v0

    sub-int v16, v20, v21

    .line 346
    .local v16, parentRight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    move/from16 v21, v0

    add-int v17, v20, v21

    .line 347
    .local v17, parentTop:I
    sub-int v20, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 349
    .local v14, parentBottom:I
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 351
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4d
    if-ge v12, v8, :cond_f6

    .line 352
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 353
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a1

    .line 354
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 356
    .local v13, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 357
    .local v19, width:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 362
    .local v10, height:I
    iget v9, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 363
    .local v9, gravity:I
    const/16 v20, -0x1

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_7b

    .line 364
    const/16 v9, 0x33

    .line 367
    :cond_7b
    and-int/lit8 v11, v9, 0x7

    .line 368
    .local v11, horizontalGravity:I
    and-int/lit8 v18, v9, 0x70

    .line 370
    .local v18, verticalGravity:I
    packed-switch v11, :pswitch_data_f8

    .line 382
    :pswitch_82
    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v6, v15, v20

    .line 385
    .local v6, childLeft:I
    :goto_89
    sparse-switch v18, :sswitch_data_106

    .line 397
    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v7, v17, v20

    .line 400
    .local v7, childTop:I
    :goto_93
    add-int v20, v6, v19

    add-int v21, v7, v10

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 351
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v9           #gravity:I
    .end local v10           #height:I
    .end local v11           #horizontalGravity:I
    .end local v13           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #verticalGravity:I
    .end local v19           #width:I
    :cond_a1
    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    .line 372
    .restart local v9       #gravity:I
    .restart local v10       #height:I
    .restart local v11       #horizontalGravity:I
    .restart local v13       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v18       #verticalGravity:I
    .restart local v19       #width:I
    :pswitch_a4
    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v6, v15, v20

    .line 373
    .restart local v6       #childLeft:I
    goto :goto_89

    .line 375
    .end local v6           #childLeft:I
    :pswitch_ac
    sub-int v20, v16, v15

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v15

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v6, v20, v21

    .line 377
    .restart local v6       #childLeft:I
    goto :goto_89

    .line 379
    .end local v6           #childLeft:I
    :pswitch_c3
    sub-int v20, v16, v19

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v6, v20, v21

    .line 380
    .restart local v6       #childLeft:I
    goto :goto_89

    .line 387
    :sswitch_cd
    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v7, v17, v20

    .line 388
    .restart local v7       #childTop:I
    goto :goto_93

    .line 390
    .end local v7           #childTop:I
    :sswitch_d5
    sub-int v20, v14, v17

    sub-int v20, v20, v10

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v17

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 392
    .restart local v7       #childTop:I
    goto :goto_93

    .line 394
    .end local v7           #childTop:I
    :sswitch_ec
    sub-int v20, v14, v10

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 395
    .restart local v7       #childTop:I
    goto :goto_93

    .line 403
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v9           #gravity:I
    .end local v10           #height:I
    .end local v11           #horizontalGravity:I
    .end local v13           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #verticalGravity:I
    .end local v19           #width:I
    :cond_f6
    return-void

    .line 370
    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_82
        :pswitch_a4
        :pswitch_82
        :pswitch_c3
    .end packed-switch

    .line 385
    :sswitch_data_106
    .sparse-switch
        0x10 -> :sswitch_d5
        0x30 -> :sswitch_cd
        0x50 -> :sswitch_ec
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    .line 255
    .local v12, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x4000

    if-ne v3, v4, :cond_14

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x4000

    if-eq v3, v4, :cond_8f

    :cond_14
    const/4 v3, 0x1

    move/from16 v18, v3

    .line 258
    .local v18, measureMatchParentChildren:Z
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 260
    const/16 v16, 0x0

    .line 261
    .local v16, maxHeight:I
    const/16 v17, 0x0

    .line 262
    .local v17, maxWidth:I
    const/4 v10, 0x0

    .line 264
    .local v10, childState:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_25
    if-ge v14, v12, :cond_93

    .line 265
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 266
    .local v4, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    move v3, v0

    if-nez v3, :cond_3d

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8c

    .line 267
    :cond_3d
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 268
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 269
    .local v15, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move/from16 v0, v17

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 271
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    move/from16 v0, v16

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 273
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v10, v3}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v10

    .line 274
    if-eqz v18, :cond_8c

    .line 275
    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_84

    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_8c

    .line 277
    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v15           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_8c
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 255
    .end local v4           #child:Landroid/view/View;
    .end local v10           #childState:I
    .end local v14           #i:I
    .end local v16           #maxHeight:I
    .end local v17           #maxWidth:I
    .end local v18           #measureMatchParentChildren:Z
    :cond_8f
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_17

    .line 284
    .restart local v10       #childState:I
    .restart local v14       #i:I
    .restart local v16       #maxHeight:I
    .restart local v17       #maxWidth:I
    .restart local v18       #measureMatchParentChildren:Z
    :cond_93
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingRight:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v17, v17, v3

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v16, v16, v3

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 293
    .local v13, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_f7

    .line 294
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 295
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 298
    :cond_f7
    move/from16 v0, v17

    move/from16 v1, p1

    move v2, v10

    invoke-static {v0, v1, v2}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v10, 0x10

    move/from16 v0, v16

    move/from16 v1, p2

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 303
    const/4 v3, 0x1

    if-le v12, v3, :cond_1b2

    .line 304
    const/4 v14, 0x0

    :goto_11f
    if-ge v14, v12, :cond_1b2

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 307
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 311
    .local v15, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_17a

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    move v5, v0

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingRight:I

    move v5, v0

    sub-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v5

    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 321
    .local v11, childWidthMeasureSpec:I
    :goto_153
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_196

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingTop:I

    move v5, v0

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 331
    .local v9, childHeightMeasureSpec:I
    :goto_174
    invoke-virtual {v4, v11, v9}, Landroid/view/View;->measure(II)V

    .line 304
    add-int/lit8 v14, v14, 0x1

    goto :goto_11f

    .line 316
    .end local v9           #childHeightMeasureSpec:I
    .end local v11           #childWidthMeasureSpec:I
    :cond_17a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingRight:I

    move v5, v0

    add-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v0, p1

    move v1, v3

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v11

    .restart local v11       #childWidthMeasureSpec:I
    goto :goto_153

    .line 326
    :cond_196
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    move v5, v0

    add-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v0, p2

    move v1, v3

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9       #childHeightMeasureSpec:I
    goto :goto_174

    .line 334
    .end local v4           #child:Landroid/view/View;
    .end local v9           #childHeightMeasureSpec:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v15           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1b2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 410
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 412
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_5a

    .line 204
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    .line 205
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 206
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_14
    iput-object p1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 210
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 211
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 212
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 213
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 215
    if-eqz p1, :cond_5b

    .line 216
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 217
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 219
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 221
    :cond_33
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_54

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 223
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 224
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 225
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 226
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 227
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 233
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_54
    :goto_54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 234
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 236
    :cond_5a
    return-void

    .line 231
    :cond_5b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    goto :goto_54
.end method

.method public setForegroundGravity(I)V
    .registers 6
    .parameter "foregroundGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    if-eq v1, p1, :cond_3d

    .line 127
    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_b

    .line 128
    or-int/lit8 p1, p1, 0x3

    .line 131
    :cond_b
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_11

    .line 132
    or-int/lit8 p1, p1, 0x30

    .line 135
    :cond_11
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 138
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3e

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 140
    .local v0, padding:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 141
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 142
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 143
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 144
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 153
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 155
    :cond_3d
    return-void

    .line 147
    :cond_3e
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 148
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 149
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 150
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    goto :goto_3a
.end method

.method public setMeasureAllChildren(Z)V
    .registers 2
    .parameter "measureAll"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 469
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 470
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
