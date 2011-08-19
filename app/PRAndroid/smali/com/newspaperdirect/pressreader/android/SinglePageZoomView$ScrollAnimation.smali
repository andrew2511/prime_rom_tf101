.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;
.super Landroid/view/animation/Animation;
.source "SinglePageZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimation"
.end annotation


# instance fields
.field private dx:F

.field private dy:F

.field private lastInterpolatedTime:F

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V
    .locals 1
    .parameter
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 612
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 608
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 609
    iput p2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->dx:F

    .line 610
    iput p3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->dy:F

    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->lastInterpolatedTime:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 616
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->lastInterpolatedTime:F

    sub-float v0, p1, v1

    .line 617
    .local v0, dt:F
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->lastInterpolatedTime:F

    .line 618
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->dx:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;->dy:F

    mul-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V

    .line 619
    return-void
.end method
