.class public Lcom/splashtop/remote/touch/TouchSupport;
.super Ljava/lang/Object;
.source "TouchSupport.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/touch/TouchSupport$Mode;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private initialMultiTouchCenterPoint:Landroid/graphics/PointF;

.field private initialMultiTouchZoom:F

.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastClickX:F

.field private mLastClickY:F

.field private mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

.field private mRenderType:I

.field private mScaledMaximumFlingVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

.field private multiTouchSupport:Lcom/splashtop/remote/touch/MultiTouchSupport;

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private timeOfMouseDown:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "renderType"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "IRISClient"

    iput-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->DEBUG:Z

    .line 29
    sget-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    iput-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    .line 45
    iput-object p1, p0, Lcom/splashtop/remote/touch/TouchSupport;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mGestureDetector:Landroid/view/GestureDetector;

    .line 48
    new-instance v0, Lcom/splashtop/remote/touch/MultiTouchSupport;

    invoke-direct {v0, p1, p0}, Lcom/splashtop/remote/touch/MultiTouchSupport;-><init>(Landroid/content/Context;Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;)V

    iput-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->multiTouchSupport:Lcom/splashtop/remote/touch/MultiTouchSupport;

    .line 49
    if-nez p2, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/splashtop/remote/touch/TouchSupport;->initCanvasTouchSupport()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/splashtop/remote/touch/TouchSupport;->initOpenGLTouchSupport()V

    goto :goto_0
.end method

.method private initCanvasTouchSupport()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-direct {v0}, Lcom/splashtop/remote/zoom/DynamicZoomControl;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    .line 58
    iget-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mScaledMaximumFlingVelocity:I

    .line 59
    return-void
.end method

.method private initOpenGLTouchSupport()V
    .locals 1

    .prologue
    .line 62
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/splashtop/remote/zoom/OpenGLZoomState;->setmZoom(F)V

    .line 63
    return-void
.end method


# virtual methods
.method public eventLoop(FFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "action"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->multiTouchSupport:Lcom/splashtop/remote/touch/MultiTouchSupport;

    invoke-virtual {v0}, Lcom/splashtop/remote/touch/MultiTouchSupport;->isInTwoFingerMode()Z

    move-result v0

    if-nez v0, :cond_0

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-static {v0, v1, p3}, Lcom/splashtop/remote/JNILib;->nativeEventLoop(III)V

    .line 189
    :cond_0
    return-void
.end method

.method public getmZoomControl()Lcom/splashtop/remote/zoom/DynamicZoomControl;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 75
    iget v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-virtual {v0}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->stopFling()V

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->timeOfMouseDown:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 77
    sget-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DOUBLE_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    iput-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    .line 79
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 115
    sget-object v2, Lcom/splashtop/remote/touch/TouchSupport$Mode;->LONG_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    iput-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 117
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 118
    .local v1, y:F
    iget-boolean v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->TAG:Ljava/lang/String;

    const-string v3, "TouchSupport::onLongPress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/splashtop/remote/touch/TouchSupport;->eventLoop(FFI)V

    .line 120
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x1

    .line 93
    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    sget-object v3, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DOUBLE_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    if-ne v2, v3, :cond_1

    .line 94
    iget-boolean v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->TAG:Ljava/lang/String;

    const-string v3, "TouchSupport::onScroll Mode.DOUBLE_CLICK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3, v5}, Lcom/splashtop/remote/touch/TouchSupport;->eventLoop(FFI)V

    .line 96
    sget-object v2, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DRAG:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    iput-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    .line 110
    :goto_0
    return v5

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    sget-object v3, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DRAG:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    if-ne v2, v3, :cond_3

    .line 98
    iget-boolean v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->DEBUG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->TAG:Ljava/lang/String;

    const-string v3, "TouchSupport::onScroll Mode.DRAG"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/splashtop/remote/touch/TouchSupport;->eventLoop(FFI)V

    goto :goto_0

    .line 101
    :cond_3
    iget v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceWidth:I

    int-to-float v2, v2

    div-float v0, p3, v2

    .line 102
    .local v0, offsetX:F
    iget v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceHeight:I

    int-to-float v2, v2

    div-float v1, p4, v2

    .line 103
    .local v1, offsetY:F
    sget-object v2, Lcom/splashtop/remote/touch/TouchSupport$Mode;->PAN:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    iput-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    .line 104
    iget v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    if-nez v2, :cond_4

    .line 105
    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-virtual {v2, v0, v1}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->pan(FF)V

    goto :goto_0

    .line 107
    :cond_4
    invoke-static {p3, p4}, Lcom/splashtop/remote/JNILib;->nativeOnPan(FF)V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 84
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceWidth:I

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceHeight:I

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 132
    .local v1, pointCount:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 133
    .local v0, action:I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_b

    .line 134
    iget v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    if-nez v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 136
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 138
    :cond_0
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 140
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 184
    :goto_1
    return v4

    .line 142
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->timeOfMouseDown:J

    .line 143
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    sget-object v5, Lcom/splashtop/remote/touch/TouchSupport$Mode;->PAN:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    if-ne v4, v5, :cond_4

    .line 144
    iget v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    if-nez v4, :cond_2

    .line 145
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/splashtop/remote/touch/TouchSupport;->mScaledMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 146
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    iget-object v5, p0, Lcom/splashtop/remote/touch/TouchSupport;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    neg-float v5, v5

    iget v6, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/splashtop/remote/touch/TouchSupport;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    neg-float v6, v6

    iget v7, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->startFling(FF)V

    .line 171
    :cond_2
    :goto_2
    iget v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    if-nez v4, :cond_3

    .line 172
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 173
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 175
    :cond_3
    sget-object v4, Lcom/splashtop/remote/touch/TouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    iput-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    goto :goto_0

    .line 148
    :cond_4
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->multiTouchSupport:Lcom/splashtop/remote/touch/MultiTouchSupport;

    invoke-virtual {v4}, Lcom/splashtop/remote/touch/MultiTouchSupport;->isInTwoFingerMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 149
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->multiTouchSupport:Lcom/splashtop/remote/touch/MultiTouchSupport;

    invoke-virtual {v4, v6}, Lcom/splashtop/remote/touch/MultiTouchSupport;->setInTwoFingerMode(Z)V

    .line 150
    iget v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    if-nez v4, :cond_2

    .line 151
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-virtual {v4, v8, v8}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->startFling(FF)V

    goto :goto_2

    .line 153
    :cond_5
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    sget-object v5, Lcom/splashtop/remote/touch/TouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    if-ne v4, v5, :cond_7

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 155
    .local v2, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 156
    .local v3, y:F
    iput v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mLastClickX:F

    .line 157
    iput v3, p0, Lcom/splashtop/remote/touch/TouchSupport;->mLastClickY:F

    .line 158
    iget-boolean v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->DEBUG:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->TAG:Ljava/lang/String;

    const-string v5, "TouchSupport::onTouch Mode.UNDEFINED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_6
    invoke-virtual {p0, v2, v3, v7}, Lcom/splashtop/remote/touch/TouchSupport;->eventLoop(FFI)V

    .line 160
    invoke-virtual {p0, v2, v3, v6}, Lcom/splashtop/remote/touch/TouchSupport;->eventLoop(FFI)V

    goto :goto_2

    .line 161
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_7
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    sget-object v5, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DOUBLE_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    if-ne v4, v5, :cond_9

    .line 162
    iget-boolean v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->DEBUG:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->TAG:Ljava/lang/String;

    const-string v5, "TouchSupport::onTouch Mode.DOUBLE_CLICK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_8
    iget v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mLastClickX:F

    iget v5, p0, Lcom/splashtop/remote/touch/TouchSupport;->mLastClickY:F

    invoke-virtual {p0, v4, v5, v7}, Lcom/splashtop/remote/touch/TouchSupport;->eventLoop(FFI)V

    .line 164
    iget v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mLastClickX:F

    iget v5, p0, Lcom/splashtop/remote/touch/TouchSupport;->mLastClickY:F

    invoke-virtual {p0, v4, v5, v6}, Lcom/splashtop/remote/touch/TouchSupport;->eventLoop(FFI)V

    goto :goto_2

    .line 165
    :cond_9
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->mMode:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    sget-object v5, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DRAG:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    if-ne v4, v5, :cond_2

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 167
    .restart local v2       #x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 168
    .restart local v3       #y:F
    iget-boolean v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->DEBUG:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->TAG:Ljava/lang/String;

    const-string v5, "TouchSupport::onTouch Mode.DRAG"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_a
    invoke-virtual {p0, v2, v3, v6}, Lcom/splashtop/remote/touch/TouchSupport;->eventLoop(FFI)V

    goto/16 :goto_2

    .line 182
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_b
    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->multiTouchSupport:Lcom/splashtop/remote/touch/MultiTouchSupport;

    invoke-virtual {v4, p2}, Lcom/splashtop/remote/touch/MultiTouchSupport;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v4, v7

    .line 184
    goto/16 :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onWheelMove(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchSupport::onWheelMove x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    float-to-int v0, p1

    float-to-int v1, p2

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/splashtop/remote/JNILib;->nativeEventLoop(III)V

    .line 230
    return-void
.end method

.method public onZoomEnded(FF)V
    .locals 6
    .parameter "distance"
    .parameter "relativeToStart"

    .prologue
    .line 221
    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff8

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 222
    .local v1, dz:F
    iget v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchZoom:F

    add-float v0, v2, v1

    .line 223
    .local v0, calcZoom:F
    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    iget-object v3, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchCenterPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchCenterPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->zoom(FFF)V

    .line 224
    return-void
.end method

.method public onZoomStarted(FLandroid/graphics/PointF;)V
    .locals 1
    .parameter "distance"
    .parameter "centerPoint"

    .prologue
    .line 196
    iput-object p2, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchCenterPoint:Landroid/graphics/PointF;

    .line 197
    iget v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-virtual {v0}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getZoomState()Lcom/splashtop/remote/zoom/ZoomState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoom()F

    move-result v0

    iput v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchZoom:F

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/splashtop/remote/zoom/OpenGLZoomState;->getmZoom()F

    move-result v0

    iput v0, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchZoom:F

    goto :goto_0
.end method

.method public onZooming(FF)V
    .locals 6
    .parameter "distance"
    .parameter "relativeToStart"

    .prologue
    .line 206
    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff8

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 207
    .local v1, dz:F
    iget v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchZoom:F

    add-float v0, v2, v1

    .line 209
    .local v0, calcZoom:F
    iget v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchZoom:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 210
    iget v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mRenderType:I

    if-nez v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    iget-object v3, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchCenterPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchCenterPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/splashtop/remote/touch/TouchSupport;->surfaceHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->zoom(FFF)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-static {v0}, Lcom/splashtop/remote/zoom/OpenGLZoomState;->setmZoom(F)V

    .line 214
    iget-object v2, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchCenterPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/splashtop/remote/touch/TouchSupport;->initialMultiTouchCenterPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/splashtop/remote/zoom/OpenGLZoomState;->getmZoom()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/splashtop/remote/JNILib;->nativeOnZoom(FFF)V

    goto :goto_0
.end method

.method public setmZoomControl(Lcom/splashtop/remote/zoom/DynamicZoomControl;)V
    .locals 0
    .parameter "mZoomControl"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/splashtop/remote/touch/TouchSupport;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    .line 71
    return-void
.end method
