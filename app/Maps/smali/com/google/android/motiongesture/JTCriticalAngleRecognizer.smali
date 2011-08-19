.class public Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;
.super Lcom/google/android/motiongesture/MotionRecognizerBase;
.source "JTCriticalAngleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;,
        Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;,
        Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;,
        Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final FILTER_FACTOR:F = 0.4f

.field private static final GESTURE_DEBOUNCE_TIME:J = 0x6a4L

.field private static final MAX_RANGE_XY:F = 80.0f

.field private static final MAX_RANGE_YZ:F = 120.0f

.field private static final MIN_RANGE_XY:F = 20.0f

.field private static final MIN_RANGE_YZ:F = 50.0f

.field private static final TAG:Ljava/lang/String; = "JTCriticalAngleRecognizer"

.field private static final WAITING_FOR_ANGLE_TIMEOUT:J = 0x3e8L

.field private static final WAITING_FOR_PROXIMITY_TIMEOUT:J = 0x4b0L

.field private static final WHAT_MSG_TIMEOUT:I


# instance fields
.field private final mCriticalAngleProcessor:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;

.field private mGestureDetectedTime:J

.field private mHandler:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;

.field private mProximityDetected:Z

.field private mState:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

.field private mTimeNow:J

.field private mTimerExpiredEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/MotionRecognizerBase;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    iput-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mState:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 67
    new-instance v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;

    invoke-direct {v0, p0, v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;-><init>(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;)V

    iput-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mCriticalAngleProcessor:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;

    .line 68
    new-instance v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;-><init>(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;)V

    iput-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mHandler:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;

    .line 69
    return-void
.end method

.method static synthetic access$202(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mTimerExpiredEvent:Z

    return p1
.end method

.method private setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    iget-object v1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mState:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    iput-object p1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mState:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 149
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    iget-object v1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mState:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 174
    :goto_1
    :pswitch_1
    return-void

    .line 129
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->stopTimers()V

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->stopTimers()V

    goto :goto_0

    .line 151
    :pswitch_4
    iput-boolean v2, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mProximityDetected:Z

    goto :goto_1

    .line 155
    :pswitch_5
    const-wide/16 v0, 0x4b0

    invoke-direct {p0, v0, v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->startTimer(J)V

    goto :goto_1

    .line 161
    :pswitch_6
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->startTimer(J)V

    goto :goto_1

    .line 164
    :pswitch_7
    iget-wide v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mTimeNow:J

    iput-wide v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mGestureDetectedTime:J

    .line 165
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->BringToEar:Lcom/google/android/motiongesture/GestureEvent$Type;

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    goto :goto_1

    .line 169
    :pswitch_8
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->BringToEar:Lcom/google/android/motiongesture/GestureEvent$Type;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    .line 171
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private startTimer(J)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mTimerExpiredEvent:Z

    .line 178
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mHandler:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mHandler:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 180
    return-void
.end method

.method private stopTimers()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mHandler:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;->removeMessages(I)V

    .line 184
    return-void
.end method


# virtual methods
.method public processAccelerometerEvent(Lcom/google/android/motiongesture/Acceleration;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mCriticalAngleProcessor:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;

    invoke-virtual {v0, p1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->addAcceleration(Lcom/google/android/motiongesture/Acceleration;)V

    .line 81
    iget-wide v0, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    iput-wide v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mTimeNow:J

    .line 82
    invoke-virtual {p0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->processEvents()V

    .line 83
    return-void
.end method

.method public processEvents()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mCriticalAngleProcessor:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;

    invoke-virtual {v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$CriticalAngleProcessor;->isAtCriticalAngle()Z

    move-result v0

    .line 95
    sget-object v1, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;->$SwitchMap$com$google$android$motiongesture$JTCriticalAngleRecognizer$State:[I

    iget-object v2, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mState:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-virtual {v2}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_PROXIMITY:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mProximityDetected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_ANGLE:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mTimerExpiredEvent:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->WAITING_FOR_PROXIMITY_EXPIRED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mProximityDetected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_0

    .line 105
    :pswitch_2
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_0

    .line 108
    :pswitch_3
    iget-boolean v1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mTimerExpiredEvent:Z

    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_0

    .line 109
    :cond_3
    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_0

    .line 112
    :pswitch_4
    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mTimeNow:J

    iget-wide v2, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mGestureDetectedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x6a4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->GESTURE_ENDED:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->setState(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public processProximityEvent(ZJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mProximityDetected:Z

    .line 88
    iput-wide p2, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mTimeNow:J

    .line 89
    invoke-virtual {p0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->processEvents()V

    .line 90
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->stopTimers()V

    .line 74
    sget-object v0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    iput-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->mState:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$State;

    .line 75
    invoke-super {p0}, Lcom/google/android/motiongesture/MotionRecognizerBase;->stop()V

    .line 76
    return-void
.end method
