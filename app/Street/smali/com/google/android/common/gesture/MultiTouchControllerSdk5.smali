.class public Lcom/google/android/common/gesture/MultiTouchControllerSdk5;
.super Lcom/google/android/common/gesture/MultiTouchController;
.source "MultiTouchControllerSdk5.java"

# interfaces
.implements Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private isMultiTouchSupported:Z

.field private prevPressure:F

.field private scaleEventBeginTime:J

.field private scaleGestureDetector:Lcom/google/android/common/gesture/ScaleGestureDetector;

.field private scaleTotalSpan:F

.field private screenDensity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/android/common/gesture/MultiTouchController;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->isMultiTouchSupported:Z

    .line 66
    iput v1, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->prevPressure:F

    .line 78
    iput v1, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleTotalSpan:F

    return-void
.end method

.method private isTwoFingerTap(Lcom/google/android/common/gesture/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleEventBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleTotalSpan:F

    const/high16 v1, 0x41b0

    iget v2, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->screenDensity:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected initMultiTouchListenerInternal(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/common/gesture/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/android/common/gesture/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleGestureDetector:Lcom/google/android/common/gesture/ScaleGestureDetector;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->screenDensity:F

    .line 93
    return-void
.end method

.method public isMultiTouchSupported()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->isMultiTouchSupported:Z

    return v0
.end method

.method public onScale(Lcom/google/android/common/gesture/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 127
    iget v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleTotalSpan:F

    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleTotalSpan:F

    .line 129
    iget-object v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->multiTouchListener:Lcom/google/android/common/gesture/MultiTouchListener;

    new-instance v1, Lcom/google/android/common/gesture/ScaleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/android/common/gesture/ScaleEvent;-><init>(ILcom/google/android/common/gesture/ScaleGestureDetector;)V

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/MultiTouchListener;->handleScaleEvent(Lcom/google/android/common/gesture/ScaleEvent;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Lcom/google/android/common/gesture/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleTotalSpan:F

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleEventBeginTime:J

    .line 136
    iget-object v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->multiTouchListener:Lcom/google/android/common/gesture/MultiTouchListener;

    new-instance v1, Lcom/google/android/common/gesture/ScaleEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/google/android/common/gesture/ScaleEvent;-><init>(ILcom/google/android/common/gesture/ScaleGestureDetector;)V

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/MultiTouchListener;->handleScaleEvent(Lcom/google/android/common/gesture/ScaleEvent;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Lcom/google/android/common/gesture/ScaleGestureDetector;)V
    .locals 3
    .parameter "detector"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->isTwoFingerTap(Lcom/google/android/common/gesture/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->multiTouchListener:Lcom/google/android/common/gesture/MultiTouchListener;

    invoke-interface {v0}, Lcom/google/android/common/gesture/MultiTouchListener;->handleTwoFingerTap()V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->multiTouchListener:Lcom/google/android/common/gesture/MultiTouchListener;

    new-instance v1, Lcom/google/android/common/gesture/ScaleEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/google/android/common/gesture/ScaleEvent;-><init>(ILcom/google/android/common/gesture/ScaleGestureDetector;)V

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/MultiTouchListener;->handleScaleEvent(Lcom/google/android/common/gesture/ScaleEvent;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1

    move v0, v2

    .line 114
    .local v0, isMultiTouch:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->scaleGestureDetector:Lcom/google/android/common/gesture/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    :cond_0
    return v0

    .line 113
    .end local v0           #isMultiTouch:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setMultiTouchSupported(Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "packageManager"

    .prologue
    .line 97
    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/common/gesture/MultiTouchControllerSdk5;->isMultiTouchSupported:Z

    .line 99
    return-void
.end method
