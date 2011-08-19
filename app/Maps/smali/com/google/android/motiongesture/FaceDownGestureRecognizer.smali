.class public Lcom/google/android/motiongesture/FaceDownGestureRecognizer;
.super Lcom/google/android/motiongesture/MotionRecognizerBase;
.source "FaceDownGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/motiongesture/FaceDownGestureRecognizer$1;,
        Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;
    }
.end annotation


# static fields
.field private static final DOWN_ANGLE_TOLERANCE:F = 10.0f

.field private static final MAX_DURATION:J = 0x59682f00L

.field private static final MIN_DURATION:J = 0x1dcd6500L

.field private static final TAG:Ljava/lang/String; = "FaceDownGestureRecognizer"

.field private static final UP_ANGLE_TOLERANCE:F = 45.0f


# instance fields
.field private mCurrentTime:J

.field private mFaceDownOrientation:Z

.field private mFaceUpOrientation:Z

.field private mProximityDetected:Z

.field private mStartTime:J

.field private mState:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/MotionRecognizerBase;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    iput-object v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mState:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    .line 47
    iput-boolean v1, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mProximityDetected:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mFaceUpOrientation:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mFaceDownOrientation:Z

    .line 57
    return-void
.end method

.method private setState(Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    const-string v0, "FaceDownGestureRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mState:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    .line 115
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$1;->$SwitchMap$com$google$android$motiongesture$FaceDownGestureRecognizer$State:[I

    iget-object v1, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mState:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mCurrentTime:J

    iput-wide v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mStartTime:J

    goto :goto_0

    .line 124
    :pswitch_2
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->PlaceFaceDown:Lcom/google/android/motiongesture/GestureEvent$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    goto :goto_0

    .line 127
    :pswitch_3
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->PlaceFaceDown:Lcom/google/android/motiongesture/GestureEvent$Type;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    .line 128
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->setState(Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public processAccelerometerEvent(Lcom/google/android/motiongesture/Acceleration;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4334

    const/high16 v5, 0x4234

    const/high16 v4, 0x4120

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/google/android/motiongesture/Acceleration;->getAngleXZ()F

    move-result v0

    .line 62
    invoke-virtual {p1}, Lcom/google/android/motiongesture/Acceleration;->getAngleYZ()F

    move-result v1

    .line 64
    invoke-virtual {p0, v0, v3, v5}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->angleWithinTolerance(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v3, v5}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->angleWithinTolerance(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mFaceUpOrientation:Z

    .line 66
    invoke-virtual {p0, v0, v6, v4}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->angleWithinTolerance(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v6, v4}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->angleWithinTolerance(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mFaceDownOrientation:Z

    .line 69
    iget-wide v0, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    iput-wide v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mCurrentTime:J

    .line 70
    invoke-virtual {p0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->processEvents()V

    .line 71
    return-void

    :cond_0
    move v2, v7

    .line 64
    goto :goto_0

    :cond_1
    move v0, v7

    .line 66
    goto :goto_1
.end method

.method public processEvents()V
    .locals 4

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$1;->$SwitchMap$com$google$android$motiongesture$FaceDownGestureRecognizer$State:[I

    iget-object v1, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mState:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mFaceUpOrientation:Z

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->FACE_UP:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->setState(Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mFaceUpOrientation:Z

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->NOT_FACE_UP:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->setState(Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mCurrentTime:J

    iget-wide v2, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1dcd6500

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 94
    iget-boolean v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mProximityDetected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mFaceDownOrientation:Z

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->setState(Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-wide v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mCurrentTime:J

    iget-wide v2, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x59682f00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 97
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->INITIAL:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->setState(Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;)V

    goto :goto_0

    .line 102
    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mProximityDetected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mFaceDownOrientation:Z

    if-nez v0, :cond_0

    .line 103
    :cond_2
    sget-object v0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;->GESTURE_RESET:Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->setState(Lcom/google/android/motiongesture/FaceDownGestureRecognizer$State;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processProximityEvent(ZJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mProximityDetected:Z

    .line 76
    iput-wide p2, p0, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->mCurrentTime:J

    .line 77
    invoke-virtual {p0}, Lcom/google/android/motiongesture/FaceDownGestureRecognizer;->processEvents()V

    .line 78
    return-void
.end method
