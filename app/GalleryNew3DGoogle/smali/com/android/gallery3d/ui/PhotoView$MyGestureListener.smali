.class Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/high16 v6, 0x3fc0

    const/4 v5, 0x1

    .line 937
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    .line 949
    :goto_0
    return v2

    .line 938
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-result-object v0

    .line 939
    .local v0, controller:Lcom/android/gallery3d/ui/PhotoView$PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1200(Lcom/android/gallery3d/ui/PhotoView$PositionController;)F

    move-result v1

    .line 942
    .local v1, scale:F
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v2, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$2402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 943
    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-lez v2, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$2000(Lcom/android/gallery3d/ui/PhotoView$PositionController;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2600(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 944
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    mul-float v4, v1, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->zoomIn(FFF)V

    :goto_1
    move v2, v5

    .line 949
    goto :goto_0

    .line 947
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->resetToFullView()V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 928
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 929
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0, p3}, Lcom/android/gallery3d/ui/PhotoView;->access$2500(Lcom/android/gallery3d/ui/PhotoView;F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->up()V

    .line 932
    :cond_0
    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v2, 0x1

    .line 911
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 914
    :goto_0
    return v0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->scrollBy(FFI)V

    move v0, v2

    .line 914
    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;->onSingleTapUp(II)V

    .line 922
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
