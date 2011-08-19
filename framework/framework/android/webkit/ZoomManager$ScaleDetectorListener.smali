.class Landroid/webkit/ZoomManager$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field private mAccumulatedSpan:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method private constructor <init>(Landroid/webkit/ZoomManager;)V
    .registers 2
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 779
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 9
    .parameter "detector"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 815
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v3

    mul-float v1, v2, v3

    .line 819
    .local v1, scale:F
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, v1}, Landroid/webkit/ZoomManager;->isScaleOverLimits(F)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_79

    :cond_20
    move v0, v5

    .line 823
    .local v0, isScaleLimited:Z
    :goto_21
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 825
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 826
    :cond_41
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v2, v5}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;Z)Z

    .line 828
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7b

    .line 829
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v2

    const/high16 v3, 0x3fa0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 833
    :goto_5d
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v1

    .line 835
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {}, Landroid/webkit/ZoomManager;->access$1100()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8a

    move v2, v0

    .line 843
    :goto_78
    return v2

    .end local v0           #isScaleLimited:Z
    :cond_79
    move v0, v6

    .line 819
    goto :goto_21

    .line 831
    .restart local v0       #isScaleLimited:Z
    :cond_7b
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_5d

    .line 838
    :cond_8a
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 839
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, v1, v6}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 840
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    move v2, v5

    .line 841
    goto :goto_78

    :cond_a7
    move v2, v0

    .line 843
    goto :goto_78
.end method

.method public isPanningOnly(Landroid/view/ScaleGestureDetector;)Z
    .registers 11
    .parameter "detector"

    .prologue
    const/4 v8, 0x0

    .line 795
    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v2

    .line 796
    .local v2, prevFocusX:F
    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)F

    move-result v3

    .line 797
    .local v3, prevFocusY:F
    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v5, v6}, Landroid/webkit/ZoomManager;->access$502(Landroid/webkit/ZoomManager;F)F

    .line 798
    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v5, v6}, Landroid/webkit/ZoomManager;->access$602(Landroid/webkit/ZoomManager;F)F

    .line 799
    cmpl-float v5, v2, v8

    if-nez v5, :cond_5a

    cmpl-float v5, v3, v8

    if-nez v5, :cond_5a

    move v1, v8

    .line 802
    .local v1, focusDelta:F
    :goto_28
    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v5

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->add(F)V
    invoke-static {v5, v1}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$700(Landroid/webkit/ZoomManager$FocusMovementQueue;F)V

    .line 803
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float v0, v5, v6

    .line 805
    .local v0, deltaSpan:F
    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v5

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->getSum()F
    invoke-static {v5}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$800(Landroid/webkit/ZoomManager$FocusMovementQueue;)F

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7f

    const/4 v5, 0x1

    move v4, v5

    .line 806
    .local v4, result:Z
    :goto_52
    if-eqz v4, :cond_82

    .line 807
    iget v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float/2addr v5, v0

    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 811
    :goto_59
    return v4

    .line 799
    .end local v0           #deltaSpan:F
    .end local v1           #focusDelta:F
    .end local v4           #result:Z
    :cond_5a
    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    sub-float/2addr v5, v2

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v6

    sub-float/2addr v6, v2

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)F

    move-result v6

    sub-float/2addr v6, v3

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    move v1, v5

    goto :goto_28

    .line 805
    .restart local v0       #deltaSpan:F
    .restart local v1       #focusDelta:F
    :cond_7f
    const/4 v5, 0x0

    move v4, v5

    goto :goto_52

    .line 809
    .restart local v4       #result:Z
    :cond_82
    iput v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    goto :goto_59
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 847
    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->isPanningOnly(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->handleScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 848
    :cond_c
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v0

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$300(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 849
    const/4 v0, 0x1

    .line 851
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .parameter "detector"

    .prologue
    .line 783
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$102(Landroid/webkit/ZoomManager;Z)Z

    .line 784
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 785
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v0

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$300(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 786
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->startZoom()V

    .line 787
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPinchToZoomAnimationStart()V

    .line 788
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 789
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 11
    .parameter "detector"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 855
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 856
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v1, v7}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;Z)Z

    .line 857
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$1300(Landroid/webkit/ZoomManager;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    #setter for: Landroid/webkit/ZoomManager;->mAnchorX:I
    invoke-static {v1, v2}, Landroid/webkit/ZoomManager;->access$1202(Landroid/webkit/ZoomManager;I)I

    .line 858
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$1500(Landroid/webkit/ZoomManager;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    #setter for: Landroid/webkit/ZoomManager;->mAnchorY:I
    invoke-static {v1, v2}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;I)I

    .line 861
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mTextWrapScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1600(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_a8

    :cond_71
    move v0, v8

    .line 864
    .local v0, reflowNow:Z
    :goto_72
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_aa

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_aa

    move v2, v8

    :goto_87
    invoke-virtual {v1, v2}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 867
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 870
    .end local v0           #reflowNow:Z
    :cond_93
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->endZoom()V

    .line 871
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V

    .line 872
    return-void

    :cond_a8
    move v0, v7

    .line 861
    goto :goto_72

    .restart local v0       #reflowNow:Z
    :cond_aa
    move v2, v7

    .line 864
    goto :goto_87
.end method
