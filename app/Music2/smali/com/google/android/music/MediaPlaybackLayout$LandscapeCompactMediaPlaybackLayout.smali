.class public Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;
.super Lcom/google/android/music/MediaPlaybackLayout;
.source "MediaPlaybackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LandscapeCompactMediaPlaybackLayout"
.end annotation


# instance fields
.field private mTextContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 309
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 315
    return-void
.end method


# virtual methods
.method public animate(ZJLandroid/view/animation/Interpolator;)V
    .locals 18
    .parameter "toCollapsed"
    .parameter "animationDuration"
    .parameter "interpolator"

    .prologue
    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->isCollapsed()Z

    move-result v4

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 397
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v12

    .line 380
    .local v12, albumSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getScale()F

    move-result v15

    .line 381
    .local v15, oldScale:F
    invoke-super/range {p0 .. p4}, Lcom/google/android/music/MediaPlaybackLayout;->animate(ZJLandroid/view/animation/Interpolator;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getScale()F

    move-result v14

    .line 384
    .local v14, newScale:F
    int-to-float v4, v12

    mul-float/2addr v4, v15

    int-to-float v5, v12

    mul-float/2addr v5, v14

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 385
    .local v13, albumSizeDiff:I
    move/from16 v16, v13

    .line 386
    .local v16, xMovement:I
    div-int/lit8 v17, v13, 0x2

    .line 388
    .local v17, yMovement:I
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 393
    .local v3, textContainerAnimation:Landroid/view/animation/TranslateAnimation;
    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 394
    move-object v0, v3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->mTextContainer:Landroid/widget/LinearLayout;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected getAlbumScaleCenterX()F
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method protected getAlbumScaleCenterY()F
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method protected getCollapsedScale()F
    .locals 1

    .prologue
    .line 372
    const v0, 0x3f4ccccd

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/google/android/music/MediaPlaybackLayout;->onFinishInflate()V

    .line 320
    const v0, 0x7f0f0026

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->mTextContainer:Landroid/widget/LinearLayout;

    .line 321
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 325
    invoke-super/range {p0 .. p5}, Lcom/google/android/music/MediaPlaybackLayout;->onLayout(ZIIII)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getScale()F

    move-result v20

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    div-int/lit8 v7, v18, 0x2

    .line 328
    .local v7, collapsedOffset:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getScale()F

    move-result v19

    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 329
    .local v13, size:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getAlbumMarginLeft()I

    move-result v9

    .line 330
    .local v9, left:I
    add-int v12, v9, v13

    .line 331
    .local v12, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getAlbumMarginTop()I

    move-result v17

    .line 332
    .local v17, top:I
    add-int v5, v17, v13

    .line 333
    .local v5, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v9

    move/from16 v2, v17

    move v3, v12

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->layout(IIII)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 338
    .local v8, frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v18

    move-object v0, v8

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v19, v19, v9

    move-object v0, v8

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v17

    move-object v0, v8

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v21, v12, v21

    move-object v0, v8

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v22, v5, v22

    invoke-virtual/range {v18 .. v22}, Landroid/widget/ImageView;->layout(IIII)V

    .line 345
    move v15, v12

    .line 346
    .local v15, textContainerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->mTextContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 348
    .local v14, textContainerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v0, v14

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v18, v18, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->mTextContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    add-int v11, v18, v19

    .line 350
    .local v11, measuredRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->isCollapsed()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getShuffle()Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    move/from16 v6, v18

    .line 351
    .local v6, buttonWidth:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->getWidth()I

    move-result v18

    move-object v0, v14

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v10, v18, v6

    .line 352
    .local v10, maxRight:I
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 353
    .local v16, textContainerRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->mTextContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object v0, v14

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v19, v19, v15

    add-int v20, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->mTextContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v21, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;->mTextContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 358
    return-void

    .line 350
    .end local v6           #buttonWidth:I
    .end local v10           #maxRight:I
    .end local v16           #textContainerRight:I
    :cond_0
    const/16 v18, 0x0

    move/from16 v6, v18

    goto :goto_0
.end method
