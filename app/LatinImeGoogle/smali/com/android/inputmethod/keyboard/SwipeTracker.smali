.class public Lcom/android/inputmethod/keyboard/SwipeTracker;
.super Ljava/lang/Object;
.source "SwipeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;
    }
.end annotation


# instance fields
.field final mBuffer:Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/SwipeTracker;->mBuffer:Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;

    .line 94
    return-void
.end method

.method private addPoint(FFJ)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/SwipeTracker;->mBuffer:Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;

    .line 45
    .local v0, buffer:Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;
    :goto_0
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 47
    .local v1, lastT:J
    const-wide/16 v3, 0xc8

    sub-long v3, p3, v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 51
    .end local v1           #lastT:J
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->add(FFJ)V

    .line 52
    return-void

    .line 49
    .restart local v1       #lastT:J
    :cond_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->dropOldest()V

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 32
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/SwipeTracker;->mBuffer:Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->clear()V

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 36
    .local v2, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 37
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/inputmethod/keyboard/SwipeTracker;->addPoint(FFJ)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/inputmethod/keyboard/SwipeTracker;->addPoint(FFJ)V

    goto :goto_0
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .parameter "units"

    .prologue
    .line 55
    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Lcom/android/inputmethod/keyboard/SwipeTracker;->computeCurrentVelocity(IF)V

    .line 56
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 16
    .parameter "units"
    .parameter "maxVelocity"

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/SwipeTracker;->mBuffer:Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;

    move-object v4, v0

    .line 60
    .local v4, buffer:Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->getX(I)F

    move-result v10

    .line 61
    .local v10, oldestX:F
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->getY(I)F

    move-result v11

    .line 62
    .local v11, oldestY:F
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v8

    .line 64
    .local v8, oldestTime:J
    const/4 v2, 0x0

    .line 65
    .local v2, accumX:F
    const/4 v3, 0x0

    .line 66
    .local v3, accumY:F
    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->size()I

    move-result v5

    .line 67
    .local v5, count:I
    const/4 v12, 0x1

    .local v12, pos:I
    :goto_0
    if-ge v12, v5, :cond_3

    .line 68
    invoke-virtual {v4, v12}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v14

    sub-long/2addr v14, v8

    long-to-int v7, v14

    .line 69
    .local v7, dur:I
    if-nez v7, :cond_0

    .line 67
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v4, v12}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->getX(I)F

    move-result v14

    sub-float v6, v14, v10

    .line 71
    .local v6, dist:F
    int-to-float v14, v7

    div-float v14, v6, v14

    move/from16 v0, p1

    int-to-float v0, v0

    move v15, v0

    mul-float v13, v14, v15

    .line 72
    .local v13, vel:F
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-nez v14, :cond_1

    move v2, v13

    .line 75
    :goto_2
    invoke-virtual {v4, v12}, Lcom/android/inputmethod/keyboard/SwipeTracker$EventRingBuffer;->getY(I)F

    move-result v14

    sub-float v6, v14, v11

    .line 76
    int-to-float v14, v7

    div-float v14, v6, v14

    move/from16 v0, p1

    int-to-float v0, v0

    move v15, v0

    mul-float v13, v14, v15

    .line 77
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-nez v14, :cond_2

    move v3, v13

    goto :goto_1

    .line 73
    :cond_1
    add-float v14, v2, v13

    const/high16 v15, 0x3f00

    mul-float v2, v14, v15

    goto :goto_2

    .line 78
    :cond_2
    add-float v14, v3, v13

    const/high16 v15, 0x3f00

    mul-float v3, v14, v15

    goto :goto_1

    .line 80
    .end local v6           #dist:F
    .end local v7           #dur:I
    .end local v13           #vel:F
    :cond_3
    const/4 v14, 0x0

    cmpg-float v14, v2, v14

    if-gez v14, :cond_4

    move/from16 v0, p2

    neg-float v0, v0

    move v14, v0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :goto_3
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/SwipeTracker;->mXVelocity:F

    .line 82
    const/4 v14, 0x0

    cmpg-float v14, v3, v14

    if-gez v14, :cond_5

    move/from16 v0, p2

    neg-float v0, v0

    move v14, v0

    invoke-static {v3, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :goto_4
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/SwipeTracker;->mYVelocity:F

    .line 84
    return-void

    .line 80
    :cond_4
    move v0, v2

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_3

    .line 82
    :cond_5
    move v0, v3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_4
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/inputmethod/keyboard/SwipeTracker;->mYVelocity:F

    return v0
.end method
