.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;
.super Landroid/view/animation/Animation;
.source "SinglePageZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomAnimation"
.end annotation


# instance fields
.field private ds:F

.field private dx:F

.field private dy:F

.field private lastInterpolatedTime:F

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FFF)V
    .locals 1
    .parameter
    .parameter "dx"
    .parameter "dy"
    .parameter "ds"

    .prologue
    .line 588
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 583
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 584
    iput p2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->dx:F

    .line 585
    iput p3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->dy:F

    .line 586
    iput p4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->ds:F

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->lastInterpolatedTime:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 592
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->lastInterpolatedTime:F

    sub-float v0, p1, v1

    .line 593
    .local v0, dt:F
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->lastInterpolatedTime:F

    .line 594
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$4(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->dx:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$11(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V

    .line 595
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$4(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$12(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V

    .line 596
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->dy:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$13(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V

    .line 597
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$14(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V

    .line 598
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->ds:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$7(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V

    .line 599
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->invalidate()V

    .line 600
    return-void
.end method
