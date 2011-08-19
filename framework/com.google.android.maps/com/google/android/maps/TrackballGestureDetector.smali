.class public Lcom/google/android/maps/TrackballGestureDetector;
.super Ljava/lang/Object;
.source "TrackballGestureDetector.java"


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mCurrentDownX:F

.field private mCurrentDownY:F

.field private mDownTime:J

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTap:Z

.field private mIsScroll:Z

.field private mIsTap:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOurLongPressRunnable:Ljava/lang/Runnable;

.field private mPreviousDownTime:J

.field private mScrollX:F

.field private mScrollY:F

.field private mUserLongPressRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/google/android/maps/TrackballGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/google/android/maps/TrackballGestureDetector$1;-><init>(Lcom/google/android/maps/TrackballGestureDetector;)V

    iput-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/maps/TrackballGestureDetector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/maps/TrackballGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method private dispatchLongPress()V
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 152
    :cond_c
    return-void
.end method


# virtual methods
.method public analyze(Landroid/view/MotionEvent;)V
    .registers 14
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 77
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 78
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 80
    .local v4, x:F
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    .line 81
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    .line 82
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    .line 84
    packed-switch v0, :pswitch_data_ae

    .line 135
    :cond_17
    :goto_17
    return-void

    .line 87
    :pswitch_18
    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    .line 88
    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    .line 89
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownX:F

    .line 90
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownY:F

    .line 91
    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    .line 92
    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    .line 93
    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    iput-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mPreviousDownTime:J

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    .line 95
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    .line 96
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    .line 97
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    iget-wide v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    const-wide/16 v10, 0x5dc

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_17

    .line 103
    :pswitch_4a
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    if-nez v6, :cond_17

    .line 106
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollX:F

    .line 107
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    sub-float/2addr v6, v5

    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollY:F

    .line 108
    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    .line 109
    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    .line 110
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 112
    .local v3, manhattanTapDistance:I
    const/4 v6, 0x5

    if-le v3, v6, :cond_7a

    .line 113
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    .line 114
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    :cond_7a
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    goto :goto_17

    .line 120
    .end local v3           #manhattanTapDistance:I
    :pswitch_7d
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    if-eqz v6, :cond_84

    .line 121
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    goto :goto_17

    .line 124
    :cond_84
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v6, :cond_98

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 126
    .local v1, eventTime:J
    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mPreviousDownTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x258

    cmp-long v6, v6, v8

    if-gez v6, :cond_a1

    .line 127
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    .line 132
    .end local v1           #eventTime:J
    :cond_98
    :goto_98
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_17

    .line 128
    .restart local v1       #eventTime:J
    :cond_a1
    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gez v6, :cond_98

    .line 129
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    goto :goto_98

    .line 84
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_18
        :pswitch_7d
        :pswitch_4a
    .end packed-switch
.end method

.method public getCurrentDownX()F
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    return v0
.end method

.method public getCurrentDownY()F
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    return v0
.end method

.method public getFirstDownX()F
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownX:F

    return v0
.end method

.method public getFirstDownY()F
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownY:F

    return v0
.end method

.method public isDoubleTap()Z
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    return v0
.end method

.method public isScroll()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    return v0
.end method

.method public isTap()Z
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    return v0
.end method

.method public registerLongPressCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "runnable"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    .line 145
    return-void
.end method

.method public scrollX()F
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollX:F

    return v0
.end method

.method public scrollY()F
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollY:F

    return v0
.end method
