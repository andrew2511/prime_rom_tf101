.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationIconTouchListener"
.end annotation


# instance fields
.field mInitialTouchX:F

.field mInitialTouchY:F

.field mPeekIndex:I

.field mTouchSlop:I

.field mVT:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1422
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    .line 1423
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v11, 0x3e8

    const/4 v8, 0x0

    const/16 v10, 0x3ea

    const/4 v9, 0x1

    .line 1426
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    move v5, v9

    .line 1427
    .local v5, peeking:Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v3

    .line 1428
    .local v3, panelShowing:Z
    if-eqz v3, :cond_1

    move v6, v8

    .line 1511
    :goto_1
    return v6

    .end local v3           #panelShowing:Z
    .end local v5           #peeking:Z
    :cond_0
    move v5, v8

    .line 1426
    goto :goto_0

    .line 1430
    .restart local v3       #panelShowing:Z
    .restart local v5       #peeking:Z
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    .line 1431
    .local v2, numIcons:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v1, v6

    .line 1432
    .local v1, newPeekIndex:I
    sub-int v6, v2, v9

    if-le v1, v6, :cond_3

    sub-int v1, v2, v9

    .line 1435
    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1436
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    move v6, v8

    .line 1511
    goto :goto_1

    .line 1433
    .end local v0           #action:I
    :cond_3
    if-gez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 1438
    .restart local v0       #action:I
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    .line 1439
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchX:F

    .line 1440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchY:F

    .line 1441
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    .line 1448
    :pswitch_1
    iget v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    if-eq v1, v6, :cond_4

    .line 1449
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    .line 1452
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1453
    .local v4, peekMsg:Landroid/os/Message;
    iget v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1455
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1457
    if-eqz v5, :cond_8

    .line 1459
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendMessage(Landroid/os/Message;)Z

    .line 1467
    .end local v4           #peekMsg:Landroid/os/Message;
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_7

    .line 1468
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1469
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1471
    if-nez v3, :cond_7

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    neg-int v7, v7

    mul-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 1474
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1475
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1476
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const/16 v7, 0x3eb

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1477
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    :cond_7
    move v6, v9

    .line 1480
    goto/16 :goto_1

    .line 1462
    .restart local v4       #peekMsg:Landroid/os/Message;
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 1483
    .end local v4           #peekMsg:Landroid/os/Message;
    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1484
    if-nez v5, :cond_9

    .line 1485
    if-ne v0, v9, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1491
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1492
    .restart local v4       #peekMsg:Landroid/os/Message;
    iget v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1493
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1494
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendMessage(Landroid/os/Message;)Z

    .line 1496
    invoke-virtual {p1, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1497
    invoke-virtual {p1, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 1499
    const/4 v5, 0x1

    .line 1503
    .end local v4           #peekMsg:Landroid/os/Message;
    :cond_9
    if-eqz v5, :cond_a

    .line 1504
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->resetNotificationPeekFadeTimer()V

    .line 1507
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 1508
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    move v6, v9

    .line 1509
    goto/16 :goto_1

    .line 1436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
