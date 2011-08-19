.class public Lcom/splashtop/remote/touch/MultiTouchSupport;
.super Ljava/lang/Object;
.source "MultiTouchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;,
        Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;
    }
.end annotation


# instance fields
.field private centerPoint:Landroid/graphics/PointF;

.field protected final ctx:Landroid/content/Context;

.field protected getPointerCount:Ljava/lang/reflect/Method;

.field protected getPointerId:Ljava/lang/reflect/Method;

.field protected getX:Ljava/lang/reflect/Method;

.field protected getY:Ljava/lang/reflect/Method;

.field private inTwoFingerMode:Z

.field private lastX1:F

.field private lastX2:F

.field private lastY1:F

.field private lastY2:F

.field private final listener:Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;

.field private mMode:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

.field private final mScale:F

.field private multiTouchAPISupported:Z

.field private previousZoom:F

.field private zoomStartedDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;)V
    .locals 2
    .parameter "ctx"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->multiTouchAPISupported:Z

    .line 35
    sget-object v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    iput-object v0, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->mMode:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    .line 72
    iput-boolean v1, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->inTwoFingerMode:Z

    .line 73
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->zoomStartedDistance:F

    .line 74
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->previousZoom:F

    .line 75
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->centerPoint:Landroid/graphics/PointF;

    .line 46
    iput-object p1, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->ctx:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->listener:Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->mScale:F

    .line 49
    invoke-direct {p0}, Lcom/splashtop/remote/touch/MultiTouchSupport;->initMethods()V

    .line 50
    return-void
.end method

.method private initMethods()V
    .locals 2

    .prologue
    .line 66
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->multiTouchAPISupported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->multiTouchAPISupported:Z

    goto :goto_0
.end method


# virtual methods
.method public isInTwoFingerMode()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->inTwoFingerMode:Z

    return v0
.end method

.method public isMultiTouchSupported()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->multiTouchAPISupported:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/splashtop/remote/touch/MultiTouchSupport;->isMultiTouchSupported()Z

    move-result v10

    if-nez v10, :cond_0

    .line 83
    const/4 v10, 0x0

    .line 127
    :goto_0
    return v10

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 86
    .local v0, actionCode:I
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 87
    .local v6, x1:F
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 88
    .local v7, x2:F
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 89
    .local v8, y1:F
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 90
    .local v9, y2:F
    sub-float v10, v7, v6

    sub-float v11, v7, v6

    mul-float/2addr v10, v11

    sub-float v11, v9, v8

    sub-float v12, v9, v8

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-static {v10}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 92
    .local v1, distance:F
    iget v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->zoomStartedDistance:F

    div-float v10, v1, v10

    iput v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->previousZoom:F

    .line 93
    const/4 v10, 0x5

    if-ne v0, v10, :cond_1

    .line 94
    new-instance v10, Landroid/graphics/PointF;

    add-float v11, v6, v7

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v12, v8, v9

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->centerPoint:Landroid/graphics/PointF;

    .line 95
    iget-object v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->listener:Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;

    iget-object v11, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->centerPoint:Landroid/graphics/PointF;

    invoke-interface {v10, v1, v11}, Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;->onZoomStarted(FLandroid/graphics/PointF;)V

    .line 96
    iput v1, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->zoomStartedDistance:F

    .line 97
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->inTwoFingerMode:Z

    .line 98
    iput v8, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastY1:F

    .line 99
    iput v9, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastY2:F

    .line 100
    iput v6, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastX1:F

    .line 101
    iput v7, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastX2:F

    .line 102
    const/4 v10, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v10, 0x6

    if-ne v0, v10, :cond_3

    .line 104
    iget-boolean v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->inTwoFingerMode:Z

    if-eqz v10, :cond_2

    .line 105
    sget-object v10, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    iput-object v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->mMode:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    .line 107
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 108
    :cond_3
    iget-boolean v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->inTwoFingerMode:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    .line 109
    iget v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastX1:F

    sub-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 110
    .local v2, tempX1:F
    iget v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastX2:F

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 111
    .local v3, tempX2:F
    iget v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastY1:F

    sub-float v4, v10, v8

    .line 112
    .local v4, tempY1:F
    iget v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastY2:F

    sub-float v5, v10, v9

    .line 113
    .local v5, tempY2:F
    add-float v10, v2, v3

    const/high16 v11, 0x4248

    iget v12, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->mScale:F

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    mul-float v10, v4, v5

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 114
    sget-object v10, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->WHEEL:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    iput-object v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->mMode:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    .line 115
    iget-object v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->listener:Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;

    const/4 v11, 0x0

    iget v12, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastY1:F

    sub-float/2addr v12, v8

    invoke-interface {v10, v11, v12}, Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;->onWheelMove(FF)V

    .line 116
    iput v8, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastY1:F

    .line 117
    iput v9, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastY2:F

    .line 118
    iput v6, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastX1:F

    .line 119
    iput v7, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->lastX2:F

    .line 124
    :cond_4
    :goto_1
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 120
    :cond_5
    iget-object v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->mMode:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    sget-object v11, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->WHEEL:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    if-eq v10, v11, :cond_4

    .line 121
    sget-object v10, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->ZOOM:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    iput-object v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->mMode:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    .line 122
    iget-object v10, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->listener:Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;

    iget v11, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->previousZoom:F

    invoke-interface {v10, v1, v11}, Lcom/splashtop/remote/touch/MultiTouchSupport$MultiTouchZoomListener;->onZooming(FF)V

    goto :goto_1

    .line 127
    .end local v2           #tempX1:F
    .end local v3           #tempX2:F
    .end local v4           #tempY1:F
    .end local v5           #tempY2:F
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public setInTwoFingerMode(Z)V
    .locals 0
    .parameter "inTwoFingerMode"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/splashtop/remote/touch/MultiTouchSupport;->inTwoFingerMode:Z

    .line 62
    return-void
.end method
