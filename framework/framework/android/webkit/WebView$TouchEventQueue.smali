.class Landroid/webkit/WebView$TouchEventQueue;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventQueue"
.end annotation


# static fields
.field private static final MAX_RECYCLED_QUEUED_TOUCH:I = 0xf

.field private static final QUEUED_GESTURE_TIMEOUT:I = 0x3e8


# instance fields
.field private mIgnoreUntilSequence:J

.field private mLastEventTime:J

.field private mLastHandledTouchSequence:J

.field private mNextTouchSequence:J

.field private mPreQueue:Landroid/webkit/WebView$QueuedTouch;

.field private mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

.field private mQueuedTouchRecycleCount:I

.field private mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .registers 6
    .parameter

    .prologue
    const-wide v2, -0x7fffffffffffffffL

    .line 7383
    iput-object p1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7384
    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    .line 7385
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7386
    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 7398
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7383
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method

.method private dropStaleGestures(Landroid/view/MotionEvent;J)Z
    .registers 16
    .parameter "ev"
    .parameter "sequence"

    .prologue
    .line 7622
    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4e

    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mConfirmMove:Z
    invoke-static {v8}, Landroid/webkit/WebView;->access$2400(Landroid/webkit/WebView;)Z

    move-result v8

    if-nez v8, :cond_4e

    .line 7627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v9

    sub-int v0, v8, v9

    .line 7628
    .local v0, dx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;)I

    move-result v9

    sub-int v1, v8, v9

    .line 7629
    .local v1, dy:I
    mul-int v8, v0, v0

    mul-int v9, v1, v1

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchSlopSquare:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$2700(Landroid/webkit/WebView;)I

    move-result v9

    if-le v8, v9, :cond_4e

    .line 7630
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 7631
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 7635
    .end local v0           #dx:I
    .end local v1           #dy:I
    :cond_4e
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v8, :cond_5c

    .line 7636
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, p2, v8

    if-gtz v8, :cond_5a

    const/4 v8, 0x1

    .line 7683
    :goto_59
    return v8

    .line 7636
    :cond_5a
    const/4 v8, 0x0

    goto :goto_59

    .line 7641
    :cond_5c
    if-eqz p1, :cond_95

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_95

    .line 7642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 7643
    .local v2, eventTime:J
    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 7644
    .local v4, lastHandledEventTime:J
    const-wide/16 v8, 0x3e8

    add-long/2addr v8, v4

    cmp-long v8, v2, v8

    if-lez v8, :cond_95

    .line 7645
    const-string/jumbo v8, "webview"

    const-string v9, "Got ACTION_DOWN but still waiting on stale event. Catching up."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7647
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runQueuedAndPreQueuedEvents()V

    .line 7650
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7651
    .local v6, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_7e
    if-eqz v6, :cond_8d

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v8, v8, p2

    if-gez v8, :cond_8d

    .line 7652
    move-object v7, v6

    .line 7653
    .local v7, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7654
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_7e

    .line 7656
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_8d
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7657
    const-wide/16 v8, 0x1

    sub-long v8, p2, v8

    iput-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7661
    .end local v2           #eventTime:J
    .end local v4           #lastHandledEventTime:J
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_95
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_bc

    .line 7662
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7663
    .restart local v6       #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_a2
    if-eqz v6, :cond_b3

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_b3

    .line 7664
    move-object v7, v6

    .line 7665
    .restart local v7       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7666
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_a2

    .line 7668
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_b3
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7669
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7672
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_bc
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v8, :cond_d5

    .line 7674
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7675
    .restart local v6       #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_c2
    if-eqz v6, :cond_d3

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_d3

    .line 7676
    move-object v7, v6

    .line 7677
    .restart local v7       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7678
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_c2

    .line 7680
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_d3
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7683
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_d5
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, p2, v8

    if-gtz v8, :cond_de

    const/4 v8, 0x1

    goto/16 :goto_59

    :cond_de
    const/4 v8, 0x0

    goto/16 :goto_59
.end method

.method private handleQueuedMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 7696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 7697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 7698
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    .line 7699
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->handleMultiTouchInWebView(Landroid/view/MotionEvent;)V

    .line 7711
    :goto_16
    return-void

    .line 7701
    :cond_17
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v1

    .line 7702
    .local v1, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v1, :cond_2f

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2f

    .line 7706
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7709
    :cond_2f
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    #calls: Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z
    invoke-static {v2, p1, v0, v3, v4}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;Landroid/view/MotionEvent;III)Z

    goto :goto_16
.end method

.method private handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V
    .registers 3
    .parameter "qt"

    .prologue
    .line 7687
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    if-eqz v0, :cond_a

    .line 7688
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 7693
    :goto_9
    return-void

    .line 7690
    :cond_a
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedMotionEvent(Landroid/view/MotionEvent;)V

    .line 7691
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_9
.end method

.method private handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V
    .registers 15
    .parameter "ted"

    .prologue
    const/4 v12, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 7714
    iget-object v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_11

    .line 7715
    iget-object v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 7717
    :cond_11
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    if-nez v0, :cond_58

    .line 7718
    iget v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)I

    move-result v0

    if-ne v0, v4, :cond_3f

    .line 7723
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v1, :cond_3d

    move v1, v2

    :goto_28
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;I)I

    .line 7733
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)I

    move-result v0

    if-ne v0, v2, :cond_3c

    .line 7734
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;
    invoke-static {v0}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 7811
    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    move v1, v5

    .line 7723
    goto :goto_28

    .line 7725
    :cond_3f
    iget v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    if-ne v0, v5, :cond_2b

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)I

    move-result v0

    if-ne v0, v5, :cond_2b

    .line 7730
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v1, :cond_56

    move v1, v2

    :goto_52
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;I)I

    goto :goto_2b

    :cond_56
    move v1, v3

    goto :goto_52

    .line 7737
    :cond_58
    iget-object v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    array-length v0, v0

    if-le v0, v4, :cond_7c

    .line 7738
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-nez v0, :cond_76

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)I

    move-result v0

    if-eq v0, v2, :cond_76

    .line 7739
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0, v3}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;I)I

    .line 7740
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->handleMultiTouchInWebView(Landroid/view/MotionEvent;)V

    goto :goto_3c

    .line 7742
    :cond_76
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0, v2}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;I)I

    goto :goto_3c

    .line 7749
    :cond_7c
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-nez v0, :cond_3c

    .line 7751
    iget v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    sparse-switch v0, :sswitch_data_1ba

    goto :goto_3c

    .line 7753
    :sswitch_86
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3202(Landroid/webkit/WebView;F)F

    .line 7754
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3302(Landroid/webkit/WebView;F)F

    .line 7755
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$3402(Landroid/webkit/WebView;I)I

    goto :goto_3c

    .line 7759
    :sswitch_a4
    iget-object v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v0, v0, v3

    iget v10, v0, Landroid/graphics/Point;->x:I

    .line 7760
    .local v10, x:I
    iget-object v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v0, v0, v3

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 7762
    .local v11, y:I
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)I

    move-result v0

    if-eq v0, v2, :cond_d5

    .line 7763
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v2}, Landroid/webkit/WebView;->access$3402(Landroid/webkit/WebView;I)I

    .line 7764
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v10

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3202(Landroid/webkit/WebView;F)F

    .line 7765
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v11

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3302(Landroid/webkit/WebView;F)F

    .line 7766
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v10

    int-to-float v2, v11

    #calls: Landroid/webkit/WebView;->startScrollingLayer(FF)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;FF)V

    .line 7767
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->startDrag()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)V

    .line 7769
    :cond_d5
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$3200(Landroid/webkit/WebView;)F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v10

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)I

    move-result v1

    sub-int v7, v0, v1

    .line 7772
    .local v7, deltaX:I
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;)F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v11

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)I

    move-result v1

    sub-int v8, v0, v1

    .line 7775
    .local v8, deltaY:I
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->doDrag(II)V
    invoke-static {v0, v7, v8}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;II)V

    .line 7776
    if-eqz v7, :cond_120

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v10

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3202(Landroid/webkit/WebView;F)F

    .line 7777
    :cond_120
    if-eqz v8, :cond_3c

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v11

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3302(Landroid/webkit/WebView;F)F

    goto/16 :goto_3c

    .line 7782
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :sswitch_12a
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)I

    move-result v0

    if-ne v0, v2, :cond_163

    .line 7784
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v2

    iget-object v4, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 7787
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 7788
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7789
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7791
    :cond_163
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v12}, Landroid/webkit/WebView;->access$3402(Landroid/webkit/WebView;I)I

    goto/16 :goto_3c

    .line 7795
    :sswitch_16a
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3202(Landroid/webkit/WebView;F)F

    .line 7796
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3302(Landroid/webkit/WebView;F)F

    .line 7797
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v0}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    .line 7798
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v12}, Landroid/webkit/WebView;->access$3402(Landroid/webkit/WebView;I)I

    goto/16 :goto_3c

    .line 7801
    :sswitch_1a0
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v9

    .line 7802
    .local v9, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v9, :cond_1b3

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static {v9}, Landroid/webkit/WebView$HitTestResult;->access$4400(Landroid/webkit/WebView$HitTestResult;)I

    move-result v0

    if-eqz v0, :cond_1b3

    .line 7804
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->performLongClick()Z

    .line 7806
    :cond_1b3
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v12}, Landroid/webkit/WebView;->access$3402(Landroid/webkit/WebView;I)I

    goto/16 :goto_3c

    .line 7751
    :sswitch_data_1ba
    .sparse-switch
        0x0 -> :sswitch_86
        0x1 -> :sswitch_12a
        0x2 -> :sswitch_a4
        0x3 -> :sswitch_12a
        0x100 -> :sswitch_1a0
        0x200 -> :sswitch_16a
    .end sparse-switch
.end method

.method private obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;
    .registers 4

    .prologue
    .line 7405
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_12

    .line 7406
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 7407
    .local v0, result:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 7408
    iget v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    move-object v1, v0

    .line 7411
    .end local v0           #result:Landroid/webkit/WebView$QueuedTouch;
    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Landroid/webkit/WebView$QueuedTouch;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/webkit/WebView$QueuedTouch;-><init>(Landroid/webkit/WebView$1;)V

    goto :goto_11
.end method

.method private recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V
    .registers 4
    .parameter "qd"

    .prologue
    .line 7473
    iget v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_12

    .line 7474
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    iput-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7475
    iput-object p1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 7476
    iget v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    .line 7478
    :cond_12
    return-void
.end method

.method private runNextQueuedEvents()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x1

    .line 7610
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7611
    .local v0, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_4
    if-eqz v0, :cond_1e

    iget-wide v2, v0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    .line 7612
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 7613
    move-object v1, v0

    .line 7614
    .local v1, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v0, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7615
    invoke-direct {p0, v1}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 7616
    iget-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    goto :goto_4

    .line 7618
    .end local v1           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_1e
    iput-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7619
    return-void
.end method

.method private runQueuedAndPreQueuedEvents()V
    .registers 16

    .prologue
    const-wide v13, 0x7fffffffffffffffL

    const-wide/16 v11, 0x1

    .line 7425
    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7426
    .local v5, qd:Landroid/webkit/WebView$QueuedTouch;
    const/4 v0, 0x1

    .line 7427
    .local v0, fromPreQueue:Z
    :goto_a
    if-eqz v5, :cond_55

    iget-wide v7, v5, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-nez v7, :cond_55

    .line 7428
    invoke-direct {p0, v5}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 7429
    move-object v6, v5

    .line 7430
    .local v6, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    if-eqz v0, :cond_45

    .line 7431
    iget-object v7, v5, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7435
    :goto_1f
    invoke-direct {p0, v6}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 7436
    iget-wide v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v7, v11

    iput-wide v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7438
    iget-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v7, :cond_4a

    iget-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v7, v7, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    move-wide v1, v7

    .line 7439
    .local v1, nextPre:J
    :goto_30
    iget-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v7, :cond_4c

    iget-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v7, v7, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    move-wide v3, v7

    .line 7441
    .local v3, nextQueued:J
    :goto_39
    cmp-long v7, v1, v3

    if-gez v7, :cond_4e

    const/4 v7, 0x1

    move v0, v7

    .line 7442
    :goto_3f
    if-eqz v0, :cond_51

    iget-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    move-object v5, v7

    .line 7443
    :goto_44
    goto :goto_a

    .line 7433
    .end local v1           #nextPre:J
    .end local v3           #nextQueued:J
    :cond_45
    iget-object v7, v5, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_1f

    :cond_4a
    move-wide v1, v13

    .line 7438
    goto :goto_30

    .restart local v1       #nextPre:J
    :cond_4c
    move-wide v3, v13

    .line 7439
    goto :goto_39

    .line 7441
    .restart local v3       #nextQueued:J
    :cond_4e
    const/4 v7, 0x0

    move v0, v7

    goto :goto_3f

    .line 7442
    :cond_51
    iget-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    move-object v5, v7

    goto :goto_44

    .line 7444
    .end local v1           #nextPre:J
    .end local v3           #nextQueued:J
    .end local v6           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_55
    return-void
.end method


# virtual methods
.method public enqueueTouchEvent(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "ev"

    .prologue
    const-wide/16 v5, 0x1

    .line 7586
    invoke-virtual {p0}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v1

    .line 7588
    .local v1, sequence:J
    invoke-direct {p0, p1, v1, v2}, Landroid/webkit/WebView$TouchEventQueue;->dropStaleGestures(Landroid/view/MotionEvent;J)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7607
    :goto_c
    return-void

    .line 7594
    :cond_d
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    .line 7596
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-nez v3, :cond_23

    .line 7597
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedMotionEvent(Landroid/view/MotionEvent;)V

    .line 7599
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7602
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    goto :goto_c

    .line 7604
    :cond_23
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/view/MotionEvent;J)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v0

    .line 7605
    .local v0, qd:Landroid/webkit/WebView$QueuedTouch;
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v3, :cond_33

    move-object v3, v0

    :goto_30
    iput-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_c

    :cond_33
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$QueuedTouch;->add(Landroid/webkit/WebView$QueuedTouch;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v3

    goto :goto_30
.end method

.method public enqueueTouchEvent(Landroid/webkit/WebViewCore$TouchEventData;)Z
    .registers 12
    .parameter "ted"

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x0

    .line 7521
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7522
    .local v0, preQueue:Landroid/webkit/WebView$QueuedTouch;
    if-eqz v0, :cond_13

    .line 7525
    iget-wide v3, v0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v5, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_42

    .line 7526
    iget-object v3, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7542
    :cond_13
    :goto_13
    iget-wide v3, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    iget-wide v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5c

    .line 7544
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stale touch event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    invoke-static {v5}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " received from webcore; ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 7573
    :goto_41
    return v3

    .line 7528
    :cond_42
    move-object v1, v0

    .line 7529
    .local v1, prev:Landroid/webkit/WebView$QueuedTouch;
    const/4 v0, 0x0

    .line 7530
    :goto_44
    iget-object v3, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v3, :cond_13

    .line 7531
    iget-object v3, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v3, v3, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v5, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_59

    .line 7532
    iget-object v0, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7533
    iget-object v3, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v3, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_13

    .line 7536
    :cond_59
    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_44

    .line 7549
    .end local v1           #prev:Landroid/webkit/WebView$QueuedTouch;
    :cond_5c
    iget-object v3, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    iget-wide v4, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-direct {p0, v3, v4, v5}, Landroid/webkit/WebView$TouchEventQueue;->dropStaleGestures(Landroid/view/MotionEvent;J)Z

    move-result v3

    if-eqz v3, :cond_68

    move v3, v7

    .line 7550
    goto :goto_41

    .line 7555
    :cond_68
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    .line 7557
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v8

    iget-wide v5, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_87

    .line 7558
    if-eqz v0, :cond_7a

    .line 7559
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 7560
    const/4 v0, 0x0

    .line 7562
    :cond_7a
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 7564
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7567
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    .line 7573
    :goto_85
    const/4 v3, 0x1

    goto :goto_41

    .line 7570
    :cond_87
    if-eqz v0, :cond_92

    move-object v2, v0

    .line 7571
    .local v2, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_8a
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v3, :cond_9c

    move-object v3, v2

    :goto_8f
    iput-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_85

    .line 7570
    .end local v2           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_92
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/webkit/WebViewCore$TouchEventData;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v3

    move-object v2, v3

    goto :goto_8a

    .line 7571
    .restart local v2       #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_9c
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView$QueuedTouch;->add(Landroid/webkit/WebView$QueuedTouch;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v3

    goto :goto_8f
.end method

.method public ignoreCurrentlyMissingEvents()V
    .registers 3

    .prologue
    .line 7418
    iget-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 7421
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runQueuedAndPreQueuedEvents()V

    .line 7422
    return-void
.end method

.method public nextTouchSequence()J
    .registers 5

    .prologue
    .line 7505
    iget-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    return-wide v0
.end method

.method public preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V
    .registers 8
    .parameter "ted"

    .prologue
    .line 7458
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/webkit/WebViewCore$TouchEventData;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v1

    .line 7459
    .local v1, newTouch:Landroid/webkit/WebView$QueuedTouch;
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v2, :cond_f

    .line 7460
    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7470
    :goto_e
    return-void

    .line 7462
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7464
    .local v0, insertionPoint:Landroid/webkit/WebView$QueuedTouch;
    :goto_11
    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v2, :cond_22

    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v2, v2, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v4, v1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    .line 7465
    iget-object v0, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_11

    .line 7467
    :cond_22
    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v2, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7468
    iput-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_e
.end method

.method public reset()V
    .registers 6

    .prologue
    const-wide v3, -0x7fffffffffffffffL

    .line 7485
    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    .line 7486
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7487
    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 7488
    :goto_d
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_1d

    .line 7489
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7490
    .local v0, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7491
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_d

    .line 7493
    .end local v0           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_1d
    :goto_1d
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_2d

    .line 7494
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7495
    .restart local v0       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7496
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_1d

    .line 7498
    .end local v0           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_2d
    return-void
.end method
