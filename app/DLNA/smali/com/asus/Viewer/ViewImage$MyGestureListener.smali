.class Lcom/asus/Viewer/ViewImage$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;


# direct methods
.method private constructor <init>(Lcom/asus/Viewer/ViewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/Viewer/ViewImage;Lcom/asus/Viewer/ViewImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/asus/Viewer/ViewImage$MyGestureListener;-><init>(Lcom/asus/Viewer/ViewImage;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    .line 444
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1200(Lcom/asus/Viewer/ViewImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 456
    :goto_0
    return v1

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v2}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asus/Viewer/BitmapCache;->getError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_0

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1300(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v1

    aget-object v0, v1, v5

    .line 448
    .local v0, imageView:Lcom/asus/Viewer/ImageViewTouchBase;
    invoke-virtual {v0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 449
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1300(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v3}, Lcom/asus/Viewer/ImageViewTouchBase;->zoomTo(F)V

    :goto_1
    move v1, v5

    .line 456
    goto :goto_0

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/asus/Viewer/ViewImage;->access$000(Lcom/asus/Viewer/ViewImage;I)V

    .line 454
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1300(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v1

    aget-object v1, v1, v5

    const/high16 v2, 0x4040

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/Viewer/ImageViewTouchBase;->zoomToPoint(FFF)V

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 461
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1200(Lcom/asus/Viewer/ViewImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 469
    :goto_0
    return v0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/BitmapCache;->getError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$900(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    if-nez v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/asus/Viewer/ViewImage;->access$000(Lcom/asus/Viewer/ViewImage;I)V

    .line 465
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1300(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/Viewer/ImageViewTouchBase;->zoomByFactor(FFF)V

    move v0, v4

    .line 467
    goto :goto_0

    :cond_2
    move v0, v2

    .line 469
    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 478
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 400
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1200(Lcom/asus/Viewer/ViewImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 420
    :goto_0
    return v1

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_3

    .line 405
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v2, 0x31

    invoke-static {v1, v2}, Lcom/asus/Viewer/ViewImage;->access$000(Lcom/asus/Viewer/ViewImage;I)V

    .line 411
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$800(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 412
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1300(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v1

    aget-object v0, v1, v3

    .line 413
    .local v0, imageView:Lcom/asus/Viewer/ImageViewTouchBase;
    invoke-virtual {v0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 414
    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/asus/Viewer/ImageViewTouchBase;->postTranslateCenter(FF)V

    .end local v0           #imageView:Lcom/asus/Viewer/ImageViewTouchBase;
    :cond_2
    :goto_2
    move v1, v3

    .line 420
    goto :goto_0

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_1

    .line 408
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    goto :goto_1

    .line 416
    .restart local v0       #imageView:Lcom/asus/Viewer/ImageViewTouchBase;
    :cond_4
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$500(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/ViewImageLayout;

    move-result-object v1

    float-to-int v2, p3

    invoke-virtual {v1, v2, v4}, Lcom/asus/Viewer/ViewImageLayout;->scrollBy(II)V

    .line 417
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    float-to-int v2, p3

    invoke-static {v1, v2}, Lcom/asus/Viewer/ViewImage;->access$912(Lcom/asus/Viewer/ViewImage;I)I

    goto :goto_2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1200(Lcom/asus/Viewer/ViewImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 439
    :goto_0
    return v0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lcom/asus/Viewer/ViewImage;->access$000(Lcom/asus/Viewer/ViewImage;I)V

    .line 439
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 426
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1200(Lcom/asus/Viewer/ViewImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$MyGestureListener;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    move v0, v1

    .line 428
    goto :goto_0
.end method
