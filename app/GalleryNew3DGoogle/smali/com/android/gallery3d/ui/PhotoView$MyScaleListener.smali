.class Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    .line 958
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 959
    .local v0, scale:F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 963
    :goto_0
    return v1

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->scaleBy(FFF)V

    move v1, v4

    .line 963
    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 971
    :goto_0
    return v0

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->beginScale(FF)V

    .line 971
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->endScale()V

    .line 977
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2500(Lcom/android/gallery3d/ui/PhotoView;F)Z

    .line 978
    return-void
.end method
