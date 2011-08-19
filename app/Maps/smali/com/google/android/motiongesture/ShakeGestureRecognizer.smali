.class public Lcom/google/android/motiongesture/ShakeGestureRecognizer;
.super Lcom/google/android/motiongesture/MotionRecognizerBase;
.source "ShakeGestureRecognizer.java"


# static fields
.field private static final DECREASING:I = 0x1

.field private static final DELTA:F = 8.0f

.field private static final INCREASING:I = 0x0

.field private static final INITIAL:I = -0x2

.field private static final STOP_TIME_WINDOW:J = 0x17d78400L

.field private static final STOP_TURNS:I = 0x1

.field private static final TIME_WINDOW:J = 0x47868c00L

.field private static final TURNS:I = 0x6

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private mLastDirection:[I

.field private mMax:[F

.field private mMin:[F

.field private mShaking:Z

.field private mStopTurns:[Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTurns:[Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/MotionRecognizerBase;-><init>(Landroid/content/Context;)V

    .line 86
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMin:[F

    .line 87
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMax:[F

    .line 88
    new-array v0, v3, [Ljava/util/Queue;

    iput-object v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mTurns:[Ljava/util/Queue;

    .line 89
    new-array v0, v3, [Ljava/util/Queue;

    iput-object v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    .line 90
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mLastDirection:[I

    .line 91
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mTurns:[Ljava/util/Queue;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v1, v0

    .line 93
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method private expireHistory([Ljava/util/Queue;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 111
    :goto_1
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, p2

    cmp-long v1, v1, p4

    if-gez v1, :cond_0

    .line 112
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public processAccelerometerEvent(Lcom/google/android/motiongesture/Acceleration;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 119
    new-array v6, v9, [F

    .line 120
    iget v0, p1, Lcom/google/android/motiongesture/Acceleration;->mX:F

    aput v0, v6, v8

    .line 121
    iget v0, p1, Lcom/google/android/motiongesture/Acceleration;->mY:F

    aput v0, v6, v7

    .line 122
    iget v0, p1, Lcom/google/android/motiongesture/Acceleration;->mZ:F

    aput v0, v6, v11

    .line 124
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mTurns:[Ljava/util/Queue;

    const-wide/32 v2, 0x47868c00

    iget-wide v4, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->expireHistory([Ljava/util/Queue;JJ)V

    .line 125
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    const-wide/32 v2, 0x17d78400

    iget-wide v4, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->expireHistory([Ljava/util/Queue;JJ)V

    move v0, v8

    .line 126
    :goto_0
    if-ge v0, v9, :cond_5

    .line 127
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mLastDirection:[I

    aget v1, v1, v0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 129
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mLastDirection:[I

    aput v10, v1, v0

    .line 130
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMin:[F

    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMax:[F

    aget v3, v6, v0

    aput v3, v2, v0

    aput v3, v1, v0

    .line 126
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    aget v1, v6, v0

    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMin:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMin:[F

    aget v2, v6, v0

    aput v2, v1, v0

    move v1, v7

    .line 142
    :goto_2
    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMax:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMin:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x4100

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMin:[F

    iget-object v3, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMax:[F

    aget v4, v6, v0

    aput v4, v3, v0

    aput v4, v2, v0

    .line 145
    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mLastDirection:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mTurns:[Ljava/util/Queue;

    aget-object v2, v2, v0

    iget-wide v3, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    aget-object v2, v2, v0

    iget-wide v3, p1, Lcom/google/android/motiongesture/Acceleration;->mTimeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mLastDirection:[I

    aput v1, v2, v0

    .line 153
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mShaking:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mTurns:[Ljava/util/Queue;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 155
    iput-boolean v7, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mShaking:Z

    .line 156
    new-instance v1, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v2, Lcom/google/android/motiongesture/GestureEvent$Type;->Shake:Lcom/google/android/motiongesture/GestureEvent$Type;

    invoke-direct {v1, v2, v8}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    goto :goto_1

    .line 138
    :cond_4
    aget v1, v6, v0

    iget-object v2, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMax:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 139
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mMax:[F

    aget v2, v6, v0

    aput v2, v1, v0

    move v1, v8

    .line 140
    goto :goto_2

    .line 160
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mShaking:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    aget-object v0, v0, v8

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gt v0, v7, :cond_7

    iget-object v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    aget-object v0, v0, v7

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gt v0, v7, :cond_7

    iget-object v0, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    aget-object v0, v0, v11

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gt v0, v7, :cond_7

    .line 164
    iput-boolean v8, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mShaking:Z

    move v0, v8

    .line 165
    :goto_3
    if-ge v0, v9, :cond_6

    .line 166
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mTurns:[Ljava/util/Queue;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 167
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 169
    :cond_6
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->Shake:Lcom/google/android/motiongesture/GestureEvent$Type;

    invoke-direct {v0, v1, v7}, Lcom/google/android/motiongesture/GestureEvent;-><init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V

    .line 172
    :cond_7
    return-void

    :cond_8
    move v1, v10

    goto/16 :goto_2
.end method

.method public processProximityEvent(ZJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method public start(Lcom/google/android/motiongesture/MotionRecognizerListener;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 99
    move v0, v3

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mTurns:[Ljava/util/Queue;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 101
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mStopTurns:[Ljava/util/Queue;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 102
    iget-object v1, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mLastDirection:[I

    const/4 v2, -0x2

    aput v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/motiongesture/ShakeGestureRecognizer;->mShaking:Z

    .line 105
    invoke-super {p0, p1}, Lcom/google/android/motiongesture/MotionRecognizerBase;->start(Lcom/google/android/motiongesture/MotionRecognizerListener;)Z

    move-result v0

    return v0
.end method
