.class public Lcom/amazon/kcp/library/ui/Cover;
.super Landroid/view/View;
.source "Cover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/Cover$PageEffects;
    }
.end annotation


# static fields
.field private static final MAX_VARIABLE_PAGES_THICKNESS_PERCENT:F = 0.12f

.field private static final MIN_VARIABLE_PAGES_THICKNESS_PERCENT:F = 0.05f

.field private static final THICK_PAGES_THICKNESS_PERCENT:F = 0.09f

.field private static final THIN_PAGES_THICKNESS_PERCENT:F = 0.04f


# instance fields
.field private bookLengthPercent:F

.field private coverImage:Landroid/graphics/drawable/Drawable;

.field private coverImageBounds:Landroid/graphics/Rect;

.field private gravity:I

.field private lastHeight:I

.field private lastWidth:I

.field private pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

.field private pagesBottom:Landroid/graphics/drawable/Drawable;

.field private pagesBottomLeft:Landroid/graphics/drawable/Drawable;

.field private pagesBottomRight:Landroid/graphics/drawable/Drawable;

.field private pagesHeight:I

.field private pagesRight:Landroid/graphics/drawable/Drawable;

.field private pagesTopRight:Landroid/graphics/drawable/Drawable;

.field private pagesWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    .line 81
    const/16 v0, 0x33

    iput v0, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    .line 82
    return-void
.end method

.method private updateCoverImageAndPagesBounds(II)V
    .locals 22
    .parameter "width"
    .parameter "height"

    .prologue
    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/Cover;->lastWidth:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/Cover;->lastHeight:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 306
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/kcp/library/ui/Cover;->lastWidth:I

    .line 307
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/kcp/library/ui/Cover;->lastHeight:I

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 312
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 313
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    .line 314
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    goto :goto_0

    .line 319
    :cond_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v17, v18

    .line 325
    .local v5, availSpaceWidthToHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    move-object/from16 v17, v0

    sget-object v18, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 330
    :cond_2
    const/4 v15, 0x0

    .line 331
    .local v15, pagesWidth:I
    const/4 v14, 0x0

    .line 371
    .local v14, pagesHeight:I
    :goto_1
    sub-int v12, p1, v15

    .line 372
    .local v12, maxCoverWidth:I
    sub-int v11, p2, v14

    .line 375
    .local v11, maxCoverHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 376
    .local v9, coverWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 377
    .local v6, coverHeight:I
    if-gez v9, :cond_3

    .line 379
    move v9, v12

    .line 381
    :cond_3
    if-gez v6, :cond_4

    .line 383
    move v6, v11

    .line 385
    :cond_4
    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 388
    .local v10, coverWidthToHeight:F
    cmpl-float v17, v10, v5

    if-lez v17, :cond_b

    .line 391
    move v9, v12

    .line 392
    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move v6, v0

    .line 402
    :goto_2
    const/4 v8, 0x0

    .line 403
    .local v8, coverTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x70

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 405
    add-int v17, v6, v14

    sub-int v17, p2, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v8, v0

    .line 408
    :cond_5
    const/4 v7, 0x0

    .line 409
    .local v7, coverLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x7

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 411
    add-int v17, v9, v15

    sub-int v17, p1, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v7, v0

    .line 413
    :cond_6
    new-instance v17, Landroid/graphics/Rect;

    add-int v18, v7, v9

    add-int v19, v8, v6

    move-object/from16 v0, v17

    move v1, v7

    move v2, v8

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 414
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    .line 415
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    goto/16 :goto_0

    .line 341
    .end local v6           #coverHeight:I
    .end local v7           #coverLeft:I
    .end local v8           #coverTop:I
    .end local v9           #coverWidth:I
    .end local v10           #coverWidthToHeight:F
    .end local v11           #maxCoverHeight:I
    .end local v12           #maxCoverWidth:I
    .end local v14           #pagesHeight:I
    .end local v15           #pagesWidth:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 344
    .local v16, pagesWidthToHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    move-object/from16 v17, v0

    sget-object v18, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 346
    const v13, 0x3d23d70a

    .line 357
    .local v13, pageThickness:F
    :goto_3
    cmpl-float v17, v16, v5

    if-lez v17, :cond_a

    .line 360
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move v15, v0

    .line 361
    .restart local v15       #pagesWidth:I
    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v0, v0

    move v14, v0

    .restart local v14       #pagesHeight:I
    goto/16 :goto_1

    .line 348
    .end local v13           #pageThickness:F
    .end local v14           #pagesHeight:I
    .end local v15           #pagesWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    move-object/from16 v17, v0

    sget-object v18, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->VARIABLE_THICK_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 350
    const v17, 0x3d4ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/Cover;->bookLengthPercent:F

    move/from16 v18, v0

    const v19, 0x3df5c28f

    mul-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .restart local v13       #pageThickness:F
    goto :goto_3

    .line 354
    .end local v13           #pageThickness:F
    :cond_9
    const v13, 0x3db851ec

    .restart local v13       #pageThickness:F
    goto :goto_3

    .line 366
    :cond_a
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move v14, v0

    .line 367
    .restart local v14       #pagesHeight:I
    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v0, v0

    move v15, v0

    .restart local v15       #pagesWidth:I
    goto/16 :goto_1

    .line 397
    .end local v13           #pageThickness:F
    .end local v16           #pagesWidthToHeight:F
    .restart local v6       #coverHeight:I
    .restart local v9       #coverWidth:I
    .restart local v10       #coverWidthToHeight:F
    .restart local v11       #maxCoverHeight:I
    .restart local v12       #maxCoverWidth:I
    :cond_b
    move v6, v11

    .line 398
    move v0, v6

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    goto/16 :goto_2
.end method


# virtual methods
.method public getBookLengthPercent()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->bookLengthPercent:F

    return v0
.end method

.method public getCoverImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCoverImageBounds(IIZ)Landroid/graphics/Rect;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "pages"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/ui/Cover;->updateCoverImageAndPagesBounds(II)V

    .line 210
    if-eqz p3, :cond_0

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 213
    .local v0, bounds:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 214
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    .line 217
    .end local v0           #bounds:Landroid/graphics/Rect;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 255
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/amazon/kcp/library/ui/Cover;->updateCoverImageAndPagesBounds(II)V

    .line 262
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 263
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    sget-object v8, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    if-eq v7, v8, :cond_0

    .line 268
    iget v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 269
    .local v6, pagesTopRightHeight:I
    new-instance v5, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    .local v5, pagesTopRightBounds:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 271
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 274
    .local v4, pagesRightBounds:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 275
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    new-instance v3, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    add-int/2addr v10, v11

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 278
    .local v3, pagesBottomRightBounds:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 279
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    iget v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 282
    .local v2, pagesBottomLeftWidth:I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    iget-object v10, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    add-int/2addr v10, v11

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    .local v1, pagesBottomLeftBounds:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 284
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    add-int/2addr v10, v11

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 287
    .local v0, pagesBottomBounds:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 288
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 224
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 225
    .local v11, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 226
    .local v9, specWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 227
    .local v3, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 228
    .local v8, specHeight:I
    iget-object v13, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    if-gez v13, :cond_3

    :cond_0
    const/4 v13, 0x0

    move v1, v13

    .line 229
    .local v1, coverWidth:I
    :goto_0
    iget-object v13, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_1

    iget-object v13, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    if-gez v13, :cond_4

    :cond_1
    const/4 v13, 0x0

    move v0, v13

    .line 232
    .local v0, coverHeight:I
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/high16 v13, 0x4000

    if-ne v11, v13, :cond_5

    const/high16 v13, 0x4000

    if-ne v3, v13, :cond_5

    .line 234
    :cond_2
    invoke-virtual {p0, v9, v8}, Lcom/amazon/kcp/library/ui/Cover;->setMeasuredDimension(II)V

    .line 249
    :goto_2
    return-void

    .line 228
    .end local v0           #coverHeight:I
    .end local v1           #coverWidth:I
    :cond_3
    iget-object v13, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    move v1, v13

    goto :goto_0

    .line 229
    .restart local v1       #coverWidth:I
    :cond_4
    iget-object v13, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move v0, v13

    goto :goto_1

    .line 239
    .restart local v0       #coverHeight:I
    :cond_5
    if-nez v11, :cond_6

    move v6, v1

    .line 240
    .local v6, maxWidth:I
    :goto_3
    if-nez v3, :cond_7

    move v5, v0

    .line 241
    .local v5, maxHeight:I
    :goto_4
    int-to-float v13, v6

    int-to-float v14, v1

    div-float v12, v13, v14

    .line 242
    .local v12, widthScale:F
    int-to-float v13, v5

    int-to-float v14, v0

    div-float v4, v13, v14

    .line 243
    .local v4, heightScale:F
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 246
    .local v7, scale:F
    const/high16 v13, 0x4000

    if-ne v11, v13, :cond_8

    move v10, v9

    .line 247
    .local v10, width:I
    :goto_5
    const/high16 v13, 0x4000

    if-ne v3, v13, :cond_9

    move v2, v8

    .line 248
    .local v2, height:I
    :goto_6
    invoke-virtual {p0, v10, v2}, Lcom/amazon/kcp/library/ui/Cover;->setMeasuredDimension(II)V

    goto :goto_2

    .end local v2           #height:I
    .end local v4           #heightScale:F
    .end local v5           #maxHeight:I
    .end local v6           #maxWidth:I
    .end local v7           #scale:F
    .end local v10           #width:I
    .end local v12           #widthScale:F
    :cond_6
    move v6, v9

    .line 239
    goto :goto_3

    .restart local v6       #maxWidth:I
    :cond_7
    move v5, v8

    .line 240
    goto :goto_4

    .line 246
    .restart local v4       #heightScale:F
    .restart local v5       #maxHeight:I
    .restart local v7       #scale:F
    .restart local v12       #widthScale:F
    :cond_8
    int-to-float v13, v1

    mul-float/2addr v13, v7

    float-to-int v13, v13

    move v10, v13

    goto :goto_5

    .line 247
    .restart local v10       #width:I
    :cond_9
    int-to-float v13, v0

    mul-float/2addr v13, v7

    float-to-int v13, v13

    move v2, v13

    goto :goto_6
.end method

.method public setCoverImage(Landroid/graphics/drawable/Drawable;F)V
    .locals 3
    .parameter "drawable"
    .parameter "bookLengthPercent"

    .prologue
    const/4 v2, 0x0

    .line 109
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->bookLengthPercent:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    .line 119
    iput p2, p0, Lcom/amazon/kcp/library/ui/Cover;->bookLengthPercent:F

    .line 120
    iput-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->requestLayout()V

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->invalidate()V

    .line 124
    :cond_2
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 188
    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    if-ne p1, v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 197
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->requestLayout()V

    goto :goto_0
.end method

.method public setPageEffects(Lcom/amazon/kcp/library/ui/Cover$PageEffects;)V
    .locals 3
    .parameter "pageEffects"

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    if-ne p1, v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->VARIABLE_THICK_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    if-ne v0, v1, :cond_3

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    .line 167
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 168
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->requestLayout()V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    if-ne v0, v1, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/Cover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pageEffects:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    if-ne v0, v1, :cond_2

    .line 159
    iput-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    .line 162
    iput-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 163
    iput-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public unbindDrawables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 428
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 429
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 430
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 431
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 437
    :cond_1
    return-void
.end method
