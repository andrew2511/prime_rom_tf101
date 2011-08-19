.class public Lcom/google/android/opengl/glview/Scroller;
.super Lcom/google/android/opengl/glview/GLViewGroup;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/Scroller$ScrollBar;,
        Lcom/google/android/opengl/glview/Scroller$ThumbBar;,
        Lcom/google/android/opengl/glview/Scroller$BaseBar;,
        Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;
    }
.end annotation


# static fields
.field public static final SCROLL_MODE_NONE:I = 0x0

.field public static final SCROLL_MODE_SCROLL_BAR:I = 0x2

.field public static final SCROLL_MODE_THUMB_BAR:I = 0x1


# instance fields
.field private mBackgroundView:Lcom/google/android/opengl/glview/GLView;

.field private mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

.field private mHorizontalScrolling:Z

.field private mOverlay:Lcom/google/android/opengl/glview/GLView;

.field private mOverlayFollowsThumb:Z

.field private mStartMargin:F

.field private mTransformer:Lcom/google/android/opengl/glview/Transformer;


# direct methods
.method public constructor <init>(IFF)V
    .locals 2
    .parameter "id"
    .parameter "minSizeW"
    .parameter "minSizeH"

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>(I)V

    .line 490
    new-instance v0, Lcom/google/android/opengl/glview/Transformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/opengl/glview/Transformer;-><init>(IFF)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    .line 491
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;-><init>(Lcom/google/android/opengl/glview/Scroller;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

    .line 492
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 494
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/opengl/glview/Scroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayFollowsThumb:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    return-object v0
.end method

.method private layout()V
    .locals 4

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->x()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->y()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/opengl/glview/Scroller;->setContentRect(FFFF)V

    .line 569
    return-void
.end method


# virtual methods
.method public childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller;->layout()V

    .line 574
    return-void
.end method

.method public getChildTransformer()Lcom/google/android/opengl/glview/Transformer;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    return-object v0
.end method

.method public getMinLength(Z)F
    .locals 5
    .parameter "horizontal"

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->getChildCount()I

    move-result v0

    .line 559
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 560
    .local v2, length:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 561
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/Scroller;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    .line 562
    .local v3, v:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v3, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v3           #v:Lcom/google/android/opengl/glview/GLView;
    :cond_0
    return v2
.end method

.method public layout(ZFF)V
    .locals 8
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 531
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Scroller;->internalLayout(ZFF)V

    .line 532
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/Transformer;->layout(ZFF)V

    .line 534
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 539
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mHorizontalScrolling:Z

    if-ne p1, v0, :cond_2

    .line 541
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller;->mStartMargin:F

    add-float v7, p2, v0

    .line 542
    .local v7, barStart:F
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller;->mStartMargin:F

    sub-float v6, p3, v0

    .line 543
    .local v6, barLength:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

    invoke-virtual {v0, p1, v7, v6}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->layout(ZFF)V

    .line 550
    .end local v7           #barStart:F
    :goto_0
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayFollowsThumb:Z

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v4

    const/16 v5, 0x9

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 554
    :cond_1
    return-void

    .line 546
    .end local v6           #barLength:F
    :cond_2
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->getMinLength(Z)F

    move-result v6

    .line 547
    .restart local v6       #barLength:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

    add-float v1, p2, p3

    sub-float/2addr v1, v6

    invoke-virtual {v0, p1, v1, v6}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->layout(ZFF)V

    goto :goto_0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 578
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->updateThumbPosition()V

    .line 582
    :cond_0
    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLViewGroup;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundView(Lcom/google/android/opengl/glview/GLView;)V
    .locals 2
    .parameter "background"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 517
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 519
    :cond_0
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    .line 520
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/opengl/glview/Scroller;->addView(Lcom/google/android/opengl/glview/GLView;I)V

    .line 521
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller;->layout()V

    .line 522
    return-void
.end method

.method public setMaximumOverScroll(FF)V
    .locals 1
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/opengl/glview/Transformer;->setMaxOverScroll(FF)V

    .line 526
    return-void
.end method

.method public setScrollParameters(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;ZZF)V
    .locals 1
    .parameter "thumb"
    .parameter "track"
    .parameter "overlay"
    .parameter "horizontal"
    .parameter "overlayFollowsThumb"
    .parameter "startMargin"

    .prologue
    .line 503
    iput-boolean p4, p0, Lcom/google/android/opengl/glview/Scroller;->mHorizontalScrolling:Z

    .line 504
    iput-boolean p5, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayFollowsThumb:Z

    .line 505
    iput p6, p0, Lcom/google/android/opengl/glview/Scroller;->mStartMargin:F

    .line 506
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$BaseBar;

    invoke-virtual {v0, p1, p2, p4}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->setViews(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Z)V

    .line 507
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 510
    :cond_0
    iput-object p3, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    .line 511
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller;->layout()V

    .line 512
    return-void
.end method
