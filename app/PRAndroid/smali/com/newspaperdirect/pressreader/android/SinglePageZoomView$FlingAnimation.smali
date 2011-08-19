.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;
.super Landroid/view/animation/Animation;
.source "SinglePageZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

.field private vx:F

.field private vy:F


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V
    .locals 0
    .parameter
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 626
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 627
    iput p2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->vx:F

    .line 628
    iput p3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->vy:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 633
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getWidth()I

    move-result v5

    .line 634
    .local v5, w:I
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getHeight()I

    move-result v4

    .line 635
    .local v4, h:I
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v6, v6, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v7

    mul-float v1, v6, v7

    .line 636
    .local v1, bmw:F
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v6, v6, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v7

    mul-float v0, v6, v7

    .line 637
    .local v0, bmh:F
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->vx:F

    sub-float v7, v9, p1

    mul-float v2, v6, v7

    .line 638
    .local v2, dx:F
    int-to-float v6, v5

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_3

    const/4 v2, 0x0

    .line 641
    :cond_0
    :goto_0
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->vy:F

    sub-float v7, v9, p1

    mul-float v3, v6, v7

    .line 642
    .local v3, dy:F
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$16(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    add-float/2addr v6, v3

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$16(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    neg-float v3, v6

    .line 644
    :cond_1
    :goto_1
    float-to-int v6, v2

    if-nez v6, :cond_2

    float-to-int v6, v3

    if-eqz v6, :cond_6

    :cond_2
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6, v2, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V

    .line 649
    :goto_2
    return-void

    .line 639
    .end local v3           #dy:F
    :cond_3
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$15(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    add-float/2addr v6, v2

    cmpl-float v6, v6, v8

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$15(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    neg-float v2, v6

    goto :goto_0

    .line 640
    :cond_4
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$15(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    add-float/2addr v6, v2

    int-to-float v7, v5

    sub-float/2addr v7, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    int-to-float v6, v5

    sub-float/2addr v6, v1

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$15(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v7

    sub-float v2, v6, v7

    goto :goto_0

    .line 643
    .restart local v3       #dy:F
    :cond_5
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$16(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    add-float/2addr v6, v3

    int-to-float v7, v4

    sub-float/2addr v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    int-to-float v6, v4

    sub-float/2addr v6, v0

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$16(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v7

    sub-float v3, v6, v7

    goto :goto_1

    .line 646
    :cond_6
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->clearAnimation()V

    .line 647
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$9(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Z

    goto :goto_2
.end method
