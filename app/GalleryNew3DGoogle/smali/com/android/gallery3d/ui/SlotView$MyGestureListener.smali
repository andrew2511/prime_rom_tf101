.class Lcom/android/gallery3d/ui/SlotView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SlotView;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x0

    .line 556
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 557
    .local v0, scrollLimit:I
    if-nez v0, :cond_0

    move v2, v4

    .line 562
    :goto_0
    return v2

    .line 558
    :cond_0
    move v1, p3

    .line 559
    .local v1, velocity:F
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v2

    neg-float v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 560
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 561
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 562
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->lockRendering()V

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 592
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->unlockRendering()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 568
    move v1, p3

    .line 569
    .local v1, distance:F
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/ScrollerHelper;->startScroll(III)Z

    move-result v0

    .line 571
    .local v0, canMove:Z
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$500(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$600(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/Paper;->overScroll(F)V

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 575
    const/4 v2, 0x1

    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 580
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 583
    :goto_0
    return v1

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 582
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    :cond_1
    move v1, v4

    .line 583
    goto :goto_0
.end method
