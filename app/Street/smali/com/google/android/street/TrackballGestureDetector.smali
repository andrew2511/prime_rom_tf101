.class Lcom/google/android/street/TrackballGestureDetector;
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

.field private mLongPressEndTime:J

.field private mLongPressRepeatRateMs:I

.field private mLongpressTimeMs:I

.field private mOurLongPressRunnable:Ljava/lang/Runnable;

.field private mPressed:Z

.field private mScrollX:F

.field private mScrollY:F

.field private mUserLongPressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/street/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    .line 48
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongpressTimeMs:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongPressRepeatRateMs:I

    .line 50
    new-instance v0, Lcom/google/android/street/TrackballGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/google/android/street/TrackballGestureDetector$1;-><init>(Lcom/google/android/street/TrackballGestureDetector;)V

    iput-object v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/street/TrackballGestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/street/TrackballGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method private dispatchLongPress()V
    .locals 4

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mInLongPress:Z

    .line 138
    iget-object v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 142
    iget v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongPressRepeatRateMs:I

    if-lez v0, :cond_1

    .line 143
    iget-wide v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongPressEndTime:J

    iget v2, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongPressRepeatRateMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongPressEndTime:J

    .line 144
    iget-object v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/street/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongPressEndTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_1
    return-void
.end method


# virtual methods
.method public analyze(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 72
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 73
    .local v3, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 75
    .local v2, x:F
    iput-boolean v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mIsScroll:Z

    .line 76
    iput-boolean v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mIsTap:Z

    .line 77
    iput-boolean v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mIsDoubleTap:Z

    .line 79
    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iput v2, p0, Lcom/google/android/street/TrackballGestureDetector;->mLastMotionX:F

    .line 83
    iput v3, p0, Lcom/google/android/street/TrackballGestureDetector;->mLastMotionY:F

    .line 84
    iget v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mCurrentDownX:F

    iput v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mFirstDownX:F

    .line 85
    iget v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mCurrentDownY:F

    iput v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mFirstDownY:F

    .line 86
    iput v2, p0, Lcom/google/android/street/TrackballGestureDetector;->mCurrentDownX:F

    .line 87
    iput v3, p0, Lcom/google/android/street/TrackballGestureDetector;->mCurrentDownY:F

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mDownTime:J

    .line 89
    iput-boolean v7, p0, Lcom/google/android/street/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    .line 90
    iput-boolean v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mInLongPress:Z

    .line 91
    iput-boolean v7, p0, Lcom/google/android/street/TrackballGestureDetector;->mPressed:Z

    .line 92
    iget-object v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/street/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-wide v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mDownTime:J

    iget v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongpressTimeMs:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongPressEndTime:J

    .line 94
    iget-object v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/street/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mLongPressEndTime:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 99
    :pswitch_1
    iget-boolean v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mInLongPress:Z

    if-nez v4, :cond_0

    .line 102
    iget v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mLastMotionX:F

    sub-float/2addr v4, v2

    iput v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mScrollX:F

    .line 103
    iget v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mLastMotionY:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mScrollY:F

    .line 104
    iput v2, p0, Lcom/google/android/street/TrackballGestureDetector;->mLastMotionX:F

    .line 105
    iput v3, p0, Lcom/google/android/street/TrackballGestureDetector;->mLastMotionY:F

    .line 106
    iget v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mCurrentDownX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/google/android/street/TrackballGestureDetector;->mCurrentDownY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 108
    .local v1, manhattanTapDistance:I
    const/4 v4, 0x5

    if-le v1, v4, :cond_1

    .line 109
    iput-boolean v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    .line 110
    iget-object v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/street/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    :cond_1
    iput-boolean v7, p0, Lcom/google/android/street/TrackballGestureDetector;->mIsScroll:Z

    goto :goto_0

    .line 116
    .end local v1           #manhattanTapDistance:I
    :pswitch_2
    iput-boolean v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mPressed:Z

    .line 117
    iget-object v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/street/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-boolean v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mInLongPress:Z

    if-eqz v4, :cond_2

    .line 119
    iput-boolean v6, p0, Lcom/google/android/street/TrackballGestureDetector;->mInLongPress:Z

    goto :goto_0

    .line 122
    :cond_2
    iget-boolean v4, p0, Lcom/google/android/street/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v4, :cond_0

    .line 123
    iput-boolean v7, p0, Lcom/google/android/street/TrackballGestureDetector;->mIsTap:Z

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isScroll()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mIsScroll:Z

    return v0
.end method

.method public isTap()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/android/street/TrackballGestureDetector;->mIsTap:Z

    return v0
.end method
