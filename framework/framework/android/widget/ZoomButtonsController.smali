.class public Landroid/widget/ZoomButtonsController;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ZoomButtonsController$Container;,
        Landroid/widget/ZoomButtonsController$OnZoomListener;
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_ZOOM_CONTROLS:I = 0x3

.field private static final MSG_POST_CONFIGURATION_CHANGED:I = 0x2

.field private static final MSG_POST_SET_VISIBLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ZoomButtonsController"

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0x0

.field private static final ZOOM_CONTROLS_TOUCH_PADDING:I = 0x14


# instance fields
.field private mAutoDismissControls:Z

.field private mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContainer:Landroid/widget/FrameLayout;

.field private mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mContainerRawLocation:[I

.field private final mContext:Landroid/content/Context;

.field private mControls:Landroid/widget/ZoomControls;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private final mOwnerView:Landroid/view/View;

.field private final mOwnerViewRawLocation:[I

.field private mPostedVisibleInitializer:Ljava/lang/Runnable;

.field private mReleaseTouchListenerOnUp:Z

.field private final mTempIntArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchPaddingScaledSq:I

.field private mTouchTargetView:Landroid/view/View;

.field private final mTouchTargetWindowLocation:[I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 78
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter "ownerView"

    .prologue
    const/4 v1, 0x2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    .line 97
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    .line 104
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    .line 116
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    .line 132
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mTempIntArray:[I

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 150
    new-instance v0, Landroid/widget/ZoomButtonsController$1;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$1;-><init>(Landroid/widget/ZoomButtonsController;)V

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Landroid/widget/ZoomButtonsController$2;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$2;-><init>(Landroid/widget/ZoomButtonsController;)V

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 205
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    .line 206
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 208
    const/high16 v0, 0x41a0

    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    .line 210
    iget v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    iget v1, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    .line 212
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 213
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ZoomButtonsController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ZoomButtonsController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->onPostConfigurationChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ZoomButtonsController;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 74
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/ZoomButtonsController;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ZoomButtonsController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/ZoomButtonsController;Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->onContainerKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private createContainer()Landroid/widget/FrameLayout;
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 243
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 245
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 246
    const v3, 0x20218

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 250
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 251
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 252
    const/16 v3, 0x3e8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 253
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 254
    const v3, 0x1030128

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 255
    iput-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 257
    new-instance v0, Landroid/widget/ZoomButtonsController$Container;

    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/ZoomButtonsController$Container;-><init>(Landroid/widget/ZoomButtonsController;Landroid/content/Context;)V

    .line 258
    .local v0, container:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 261
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 263
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x10900a7

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 265
    const v3, 0x10202e2

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ZoomControls;

    iput-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    .line 266
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    new-instance v4, Landroid/widget/ZoomButtonsController$3;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController$3;-><init>(Landroid/widget/ZoomButtonsController;)V

    invoke-virtual {v3, v4}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    new-instance v4, Landroid/widget/ZoomButtonsController$4;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController$4;-><init>(Landroid/widget/ZoomButtonsController;)V

    invoke-virtual {v3, v4}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-object v0
.end method

.method private dismissControlsDelayed(I)V
    .registers 6
    .parameter "delay"

    .prologue
    const/4 v3, 0x3

    .line 440
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    if-eqz v0, :cond_10

    .line 441
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 444
    :cond_10
    return-void
.end method

.method private findViewForTouch(II)Landroid/view/View;
    .registers 16
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v12, 0x1

    .line 629
    iget-object v10, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int v3, p1, v10

    .line 630
    .local v3, containerCoordsX:I
    iget-object v10, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    aget v10, v10, v12

    sub-int v4, p2, v10

    .line 631
    .local v4, containerCoordsY:I
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    .line 633
    .local v8, frame:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 634
    .local v1, closestChild:Landroid/view/View;
    const v2, 0x7fffffff

    .line 636
    .local v2, closestChildDistanceSq:I
    iget-object v10, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    sub-int v9, v10, v12

    .local v9, i:I
    :goto_1c
    if-ltz v9, :cond_81

    .line 637
    iget-object v10, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 638
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_2d

    .line 636
    :cond_2a
    :goto_2a
    add-int/lit8 v9, v9, -0x1

    goto :goto_1c

    .line 642
    :cond_2d
    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 643
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_38

    move-object v10, v0

    .line 670
    .end local v0           #child:Landroid/view/View;
    :goto_37
    return-object v10

    .line 648
    .restart local v0       #child:Landroid/view/View;
    :cond_38
    iget v10, v8, Landroid/graphics/Rect;->left:I

    if-lt v3, v10, :cond_59

    iget v10, v8, Landroid/graphics/Rect;->right:I

    if-gt v3, v10, :cond_59

    .line 649
    const/4 v6, 0x0

    .line 655
    .local v6, distanceX:I
    :goto_41
    iget v10, v8, Landroid/graphics/Rect;->top:I

    if-lt v4, v10, :cond_6d

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v10, :cond_6d

    .line 656
    const/4 v7, 0x0

    .line 661
    .local v7, distanceY:I
    :goto_4a
    mul-int v10, v6, v6

    mul-int v11, v7, v7

    add-int v5, v10, v11

    .line 663
    .local v5, distanceSq:I
    iget v10, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    if-ge v5, v10, :cond_2a

    if-ge v5, v2, :cond_2a

    .line 665
    move-object v1, v0

    .line 666
    move v2, v5

    goto :goto_2a

    .line 651
    .end local v5           #distanceSq:I
    .end local v6           #distanceX:I
    .end local v7           #distanceY:I
    :cond_59
    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v8, Landroid/graphics/Rect;->right:I

    sub-int v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .restart local v6       #distanceX:I
    goto :goto_41

    .line 658
    :cond_6d
    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .restart local v7       #distanceY:I
    goto :goto_4a

    .end local v0           #child:Landroid/view/View;
    .end local v6           #distanceX:I
    .end local v7           #distanceY:I
    :cond_81
    move-object v10, v1

    .line 670
    goto :goto_37
.end method

.method private getOwnerViewRoot()Landroid/view/ViewRoot;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 530
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 531
    .local v1, rootViewOfOwner:Landroid/view/View;
    if-nez v1, :cond_b

    move-object v2, v3

    .line 539
    :goto_a
    return-object v2

    .line 535
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 536
    .local v0, parentOfRootView:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewRoot;

    if-eqz v2, :cond_17

    .line 537
    check-cast v0, Landroid/view/ViewRoot;

    .end local v0           #parentOfRootView:Landroid/view/ViewParent;
    move-object v2, v0

    goto :goto_a

    .restart local v0       #parentOfRootView:Landroid/view/ViewParent;
    :cond_17
    move-object v2, v3

    .line 539
    goto :goto_a
.end method

.method private isInterestingKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 515
    sparse-switch p1, :sswitch_data_8

    .line 525
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 523
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 515
    nop

    :sswitch_data_8
    .sparse-switch
        0x4 -> :sswitch_5
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method private onContainerKey(Landroid/view/KeyEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 476
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 477
    .local v1, keyCode:I
    invoke-direct {p0, v1}, Landroid/widget/ZoomButtonsController;->isInterestingKey(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 479
    const/4 v3, 0x4

    if-ne v1, v3, :cond_43

    .line 480
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2c

    .line 482
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    if-eqz v3, :cond_2a

    .line 483
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 484
    .local v0, ds:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2a

    .line 485
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .end local v0           #ds:Landroid/view/KeyEvent$DispatcherState;
    :cond_2a
    move v3, v4

    .line 510
    :goto_2b
    return v3

    .line 489
    :cond_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_48

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_48

    .line 491
    invoke-virtual {p0, v5}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    move v3, v4

    .line 492
    goto :goto_2b

    .line 496
    :cond_43
    sget v3, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v3}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    :cond_48
    move v3, v5

    .line 500
    goto :goto_2b

    .line 504
    :cond_4a
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->getOwnerViewRoot()Landroid/view/ViewRoot;

    move-result-object v2

    .line 505
    .local v2, viewRoot:Landroid/view/ViewRoot;
    if-eqz v2, :cond_53

    .line 506
    invoke-virtual {v2, p1}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;)V

    :cond_53
    move v3, v4

    .line 510
    goto :goto_2b
.end method

.method private onPostConfigurationChanged()V
    .registers 2

    .prologue
    .line 674
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 675
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V

    .line 676
    return-void
.end method

.method private refreshPositioningVariables()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 448
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_b

    .line 472
    :cond_a
    :goto_a
    return-void

    .line 451
    :cond_b
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 452
    .local v1, ownerHeight:I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 454
    .local v3, ownerWidth:I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int v0, v1, v4

    .line 457
    .local v0, containerOwnerYOffset:I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 458
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    aget v5, v5, v6

    aput v5, v4, v6

    .line 459
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    aget v5, v5, v7

    add-int/2addr v5, v0

    aput v5, v4, v7

    .line 461
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mTempIntArray:[I

    .line 462
    .local v2, ownerViewWindowLoc:[I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 465
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    aget v5, v2, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 466
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 467
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    aget v5, v2, v7

    add-int/2addr v5, v0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 468
    iget-boolean v4, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    if-eqz v4, :cond_a

    .line 469
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a
.end method

.method private setTouchTargetView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 614
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 615
    if-eqz p1, :cond_9

    .line 616
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 618
    :cond_9
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method public isAutoDismissed()Z
    .registers 2

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 335
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "v"
    .parameter "event"

    .prologue
    .line 548
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 550
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_d

    .line 552
    const/4 v8, 0x0

    .line 609
    :goto_c
    return v8

    .line 555
    :cond_d
    iget-boolean v8, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    if-eqz v8, :cond_26

    .line 557
    const/4 v8, 0x1

    if-eq v0, v8, :cond_17

    const/4 v8, 0x3

    if-ne v0, v8, :cond_24

    .line 558
    :cond_17
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 559
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    .line 560
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    .line 564
    :cond_24
    const/4 v8, 0x1

    goto :goto_c

    .line 567
    :cond_26
    sget v8, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v8}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 569
    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 571
    .local v5, targetView:Landroid/view/View;
    packed-switch v0, :pswitch_data_ac

    .line 583
    :goto_30
    :pswitch_30
    if-eqz v5, :cond_a8

    .line 585
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int v6, v8, v9

    .line 586
    .local v6, targetViewRawX:I
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int v7, v8, v9

    .line 588
    .local v7, targetViewRawY:I
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 591
    .local v1, containerEvent:Landroid/view/MotionEvent;
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v8, v6

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v9, v7

    int-to-float v9, v9

    invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 596
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 597
    .local v2, containerX:F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 598
    .local v3, containerY:F
    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-gez v8, :cond_77

    const/high16 v8, -0x3e60

    cmpl-float v8, v2, v8

    if-lez v8, :cond_77

    .line 599
    neg-float v8, v2

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 601
    :cond_77
    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gez v8, :cond_87

    const/high16 v8, -0x3e60

    cmpl-float v8, v3, v8

    if-lez v8, :cond_87

    .line 602
    const/4 v8, 0x0

    neg-float v9, v3

    invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 604
    :cond_87
    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 605
    .local v4, retValue:Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v8, v4

    .line 606
    goto/16 :goto_c

    .line 573
    .end local v1           #containerEvent:Landroid/view/MotionEvent;
    .end local v2           #containerX:F
    .end local v3           #containerY:F
    .end local v4           #retValue:Z
    .end local v6           #targetViewRawX:I
    .end local v7           #targetViewRawY:I
    :pswitch_91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {p0, v8, v9}, Landroid/widget/ZoomButtonsController;->findViewForTouch(II)Landroid/view/View;

    move-result-object v5

    .line 574
    invoke-direct {p0, v5}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    goto :goto_30

    .line 579
    :pswitch_a3
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    goto :goto_30

    .line 609
    :cond_a8
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 571
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_91
        :pswitch_a3
        :pswitch_30
        :pswitch_a3
    .end packed-switch
.end method

.method public setAutoDismissed(Z)V
    .registers 3
    .parameter "autoDismiss"

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    if-ne v0, p1, :cond_5

    .line 327
    :goto_4
    return-void

    .line 326
    :cond_5
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    goto :goto_4
.end method

.method public setFocusable(Z)V
    .registers 6
    .parameter "focusable"

    .prologue
    .line 299
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 300
    .local v0, oldFlags:I
    if-eqz p1, :cond_22

    .line 301
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 306
    :goto_e
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v0, :cond_21

    iget-boolean v1, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    if-eqz v1, :cond_21

    .line 307
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :cond_21
    return-void

    .line 303
    :cond_22
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_e
.end method

.method public setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 288
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 289
    return-void
.end method

.method public setVisible(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 345
    if-eqz p1, :cond_1f

    .line 346
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 352
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 353
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    :cond_19
    :goto_19
    return-void

    .line 358
    :cond_1a
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 361
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    if-eq v0, p1, :cond_19

    .line 364
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    .line 366
    if-eqz p1, :cond_63

    .line 367
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_37

    .line 368
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 371
    :cond_37
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    if-nez v0, :cond_4b

    .line 374
    new-instance v0, Landroid/widget/ZoomButtonsController$5;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$5;-><init>(Landroid/widget/ZoomButtonsController;)V

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    .line 385
    :cond_4b
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    iput-boolean v3, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    goto :goto_19

    .line 396
    :cond_63
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    if-eqz v0, :cond_89

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    .line 405
    :goto_6a
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 407
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 408
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    if-eqz v0, :cond_19

    .line 411
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-interface {v0, v3}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    goto :goto_19

    .line 401
    :cond_89
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_6a
.end method

.method public setZoomInEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 221
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 222
    return-void
.end method

.method public setZoomOutEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 231
    return-void
.end method

.method public setZoomSpeed(J)V
    .registers 4
    .parameter "speed"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 240
    return-void
.end method
