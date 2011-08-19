.class public abstract Lcom/google/android/music/MediaPlaybackLayout;
.super Landroid/view/ViewGroup;
.source "MediaPlaybackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;,
        Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;
    }
.end annotation


# instance fields
.field private mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mFrame:Landroid/widget/ImageView;

.field private mIsCollapsed:Z

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mRepeat:Landroid/widget/ImageView;

.field private mShuffle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private setupSideButtonAnimation(ZLandroid/view/View;JLandroid/view/animation/Interpolator;)V
    .locals 10
    .parameter "show"
    .parameter "target"
    .parameter "animationDuration"
    .parameter "interpolator"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    int-to-float v9, v2

    .line 155
    .local v9, dx:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_0

    move v2, v9

    :goto_0
    if-eqz p1, :cond_1

    move v4, v6

    :goto_1
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 160
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 161
    invoke-virtual {v0, p5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 162
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 164
    new-instance v1, Lcom/google/android/music/MediaPlaybackLayout$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/MediaPlaybackLayout$1;-><init>(Lcom/google/android/music/MediaPlaybackLayout;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 180
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    return-void

    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    move v2, v6

    .line 155
    goto :goto_0

    :cond_1
    move v4, v9

    goto :goto_1
.end method


# virtual methods
.method public animate(ZJLandroid/view/animation/Interpolator;)V
    .locals 16
    .parameter "toCollapsed"
    .parameter "animationDuration"
    .parameter "interpolator"

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    move v6, v0

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 119
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->requestLayout()V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getCollapsedScale()F

    move-result v14

    .line 125
    .local v14, collapsedScale:F
    if-eqz p1, :cond_1

    const/high16 v6, 0x3f80

    div-float/2addr v6, v14

    move v4, v6

    .line 126
    .local v4, fromScale:F
    :goto_1
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumScaleCenterX()F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumScaleCenterY()F

    move-result v11

    move v6, v4

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 130
    .local v3, albumAnimation:Landroid/view/animation/Animation;
    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 131
    move-object v0, v3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    .local v15, frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumScaleCenterX()F

    move-result v8

    add-float v11, v6, v8

    const/4 v12, 0x0

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumScaleCenterY()F

    move-result v8

    add-float v13, v6, v8

    move v6, v4

    move v8, v4

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 140
    .local v5, albumFrameAnimation:Landroid/view/animation/Animation;
    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 141
    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mRepeat:Landroid/widget/ImageView;

    move-object v8, v0

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/music/MediaPlaybackLayout;->setupSideButtonAnimation(ZLandroid/view/View;JLandroid/view/animation/Interpolator;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mShuffle:Landroid/widget/ImageView;

    move-object v8, v0

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/music/MediaPlaybackLayout;->setupSideButtonAnimation(ZLandroid/view/View;JLandroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .end local v3           #albumAnimation:Landroid/view/animation/Animation;
    .end local v4           #fromScale:F
    .end local v5           #albumFrameAnimation:Landroid/view/animation/Animation;
    .end local v15           #frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    move v4, v14

    .line 125
    goto/16 :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 113
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 103
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 108
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    return-object v0
.end method

.method protected getAlbumMarginLeft()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method protected getAlbumMarginRight()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method

.method protected getAlbumMarginTop()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v0
.end method

.method protected abstract getAlbumScaleCenterX()F
.end method

.method protected abstract getAlbumScaleCenterY()F
.end method

.method protected getAlbumSize()I
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected abstract getCollapsedScale()F
.end method

.method protected getExpandedAlbumSize()I
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 87
    .local v0, albumMaxHeight:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 90
    .local v1, maxWidth:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public getFrame()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLoadingProgress()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected getRepeat()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mRepeat:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getCollapsedScale()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method protected getShuffle()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mShuffle:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected isCollapsed()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 194
    const v0, 0x7f0f0016

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 195
    const v0, 0x7f0f000d

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mFrame:Landroid/widget/ImageView;

    .line 196
    const v0, 0x7f0f0017

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 197
    const v0, 0x7f0f0018

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mShuffle:Landroid/widget/ImageView;

    .line 198
    const v0, 0x7f0f0019

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mRepeat:Landroid/widget/ImageView;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    .line 200
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getShuffle()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 215
    .local v13, shuffleLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getShuffle()Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v15

    add-int v12, v14, v15

    .line 216
    .local v12, shuffleBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getShuffle()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getShuffle()Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v15

    sub-int v15, p4, v15

    move-object v0, v13

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v0

    move-object v0, v14

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, p4

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getRepeat()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 222
    .local v10, repeatLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v12

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v11, v14, v15

    .line 224
    .local v11, repeatTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getRepeat()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getRepeat()Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v15

    sub-int v15, p4, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getRepeat()Landroid/widget/ImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v11

    move-object v0, v14

    move v1, v15

    move v2, v11

    move/from16 v3, p4

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v5

    .line 231
    .local v5, expandedAlbumSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object v14, v0

    invoke-virtual {v14, v5, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVirtualSize(II)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v9, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    .local v9, loadingProgressWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v8, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    .local v8, loadingProgressHeight:I
    if-lez v9, :cond_0

    if-gtz v8, :cond_1

    .line 239
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "loadingProgress width/height should be exact"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/music/AsyncAlbumArtImageView;->getWidth()I

    move-result v14

    sub-int/2addr v14, v9

    div-int/lit8 v6, v14, 0x2

    .line 243
    .local v6, loadProgressHorizontalOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/music/AsyncAlbumArtImageView;->getHeight()I

    move-result v14

    sub-int/2addr v14, v8

    div-int/lit8 v7, v14, 0x2

    .line 244
    .local v7, loadProgressVerticalOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLeft()I

    move-result v15

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/AsyncAlbumArtImageView;->getTop()I

    move-result v16

    add-int v16, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/AsyncAlbumArtImageView;->getRight()I

    move-result v17

    sub-int v17, v17, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/AsyncAlbumArtImageView;->getBottom()I

    move-result v18

    sub-int v18, v18, v7

    invoke-virtual/range {v14 .. v18}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 248
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackLayout;->measureChildren(II)V

    .line 206
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/music/MediaPlaybackLayout;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/android/music/MediaPlaybackLayout;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackLayout;->setMeasuredDimension(II)V

    .line 208
    return-void
.end method
