.class public Lcom/google/android/motiongesture/FreeFallRecognizer;
.super Lcom/google/android/motiongesture/MotionRecognizerBase;
.source "FreeFallRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/motiongesture/FreeFallRecognizer$1;,
        Lcom/google/android/motiongesture/FreeFallRecognizer$State;
    }
.end annotation


# static fields
.field private static final MAX_SUM_OF_SQUARES:F = 5.0f

.field private static final MIN_DURATION:J = 0x510ff40L

.field private static final TAG:Ljava/lang/String; = "FreeFallRecognizer"


# instance fields
.field private mStartFall:J

.field private mState:Lcom/google/android/motiongesture/FreeFallRecognizer$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/MotionRecognizerBase;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private isFalling(Lcom/google/android/motiongesture/Acceleration;)Z
    .locals 3
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    iget v1, p1, Lcom/google/android/motiongesture/Acceleration;->mX:F

    iget v2, p1, Lcom/google/android/motiongesture/Acceleration;->mX:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 96
    iget v1, p1, Lcom/google/android/motiongesture/Acceleration;->mY:F

    iget v2, p1, Lcom/google/android/motiongesture/Acceleration;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 97
    iget v1, p1, Lcom/google/android/motiongesture/Acceleration;->mZ:F

    iget v2, p1, Lcom/google/android/motiongesture/Acceleration;->mZ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 98
    const/high16 v1, 0x40a0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setState(Lcom/google/android/motiongesture/FreeFallRecognizer$State;)V
    .locals 3
    .parameter

    .prologue
    .line 89
    const-string v0, "FreeFallRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entered state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-object p1, p0, Lcom/google/android/motiongesture/FreeFallRecognizer;->mState:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    .line 91
    return-void
.end method


# virtual methods
.method protected processAccelerometerEvent(Lcom/google/android/motiongesture/Acceleration;)V
    .locals 4
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$1;->$SwitchMap$com$google$android$motiongesture$FreeFallRecognizer$State:[I

    iget-object v1, p0, Lcom/google/android/motiongesture/FreeFallRecognizer;->mState:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    invoke-virtual {v1}, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/FreeFallRecognizer;->isFalling(Lcom/google/android/motiongesture/Acceleration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-wide v0, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    iput-wide v0, p0, Lcom/google/android/motiongesture/FreeFallRecognizer;->mStartFall:J

    .line 66
    sget-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FreeFallRecognizer;->setState(Lcom/google/android/motiongesture/FreeFallRecognizer$State;)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/FreeFallRecognizer;->isFalling(Lcom/google/android/motiongesture/Acceleration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-wide v0, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    iget-wide v2, p0, Lcom/google/android/motiongesture/FreeFallRecognizer;->mStartFall:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x510ff40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 72
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->Drop:Lcom/google/android/motiongesture/GestureEvent$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/motiongesture/FreeFallRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    .line 73
    sget-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FreeFallRecognizer;->setState(Lcom/google/android/motiongesture/FreeFallRecognizer$State;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->NOT_FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FreeFallRecognizer;->setState(Lcom/google/android/motiongesture/FreeFallRecognizer$State;)V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/FreeFallRecognizer;->isFalling(Lcom/google/android/motiongesture/Acceleration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->Drop:Lcom/google/android/motiongesture/GestureEvent$Type;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/motiongesture/FreeFallRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    .line 82
    sget-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->NOT_FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    invoke-direct {p0, v0}, Lcom/google/android/motiongesture/FreeFallRecognizer;->setState(Lcom/google/android/motiongesture/FreeFallRecognizer$State;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected processProximityEvent(ZJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public start(Lcom/google/android/motiongesture/MotionRecognizerListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->NOT_FALLING:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    iput-object v0, p0, Lcom/google/android/motiongesture/FreeFallRecognizer;->mState:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/motiongesture/MotionRecognizerBase;->start(Lcom/google/android/motiongesture/MotionRecognizerListener;)Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/motiongesture/FreeFallRecognizer;->mState:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    sget-object v1, Lcom/google/android/motiongesture/FreeFallRecognizer$State;->GESTURE_DETECTED:Lcom/google/android/motiongesture/FreeFallRecognizer$State;

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->Drop:Lcom/google/android/motiongesture/GestureEvent$Type;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/motiongesture/FreeFallRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/google/android/motiongesture/MotionRecognizerBase;->stop()V

    .line 58
    return-void
.end method
