.class public Lcom/splashtop/remote/zoom/DynamicZoomControl;
.super Ljava/lang/Object;
.source "DynamicZoomControl.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final FPS:I = 0x32

.field private static MAX_ZOOM:F = 0.0f

.field private static MIN_ZOOM:F = 0.0f

.field private static final PAN_OUTSIDE_SNAP_FACTOR:F = 0.4f

.field private static final REST_POSITION_TOLERANCE:F = 0.01f

.field private static final REST_VELOCITY_TOLERANCE:F = 0.004f


# instance fields
.field private mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

.field private final mHandler:Landroid/os/Handler;

.field private final mPanDynamicsX:Lcom/splashtop/remote/utils/SpringDynamics;

.field private final mPanDynamicsY:Lcom/splashtop/remote/utils/SpringDynamics;

.field private mPanMaxX:F

.field private mPanMaxY:F

.field private mPanMinX:F

.field private mPanMinY:F

.field private final mState:Lcom/splashtop/remote/zoom/ZoomState;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/high16 v0, 0x3f80

    sput v0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MIN_ZOOM:F

    .line 55
    const/high16 v0, 0x4120

    sput v0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MAX_ZOOM:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x4248

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/splashtop/remote/zoom/ZoomState;

    invoke-direct {v0}, Lcom/splashtop/remote/zoom/ZoomState;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    .line 79
    new-instance v0, Lcom/splashtop/remote/utils/SpringDynamics;

    invoke-direct {v0}, Lcom/splashtop/remote/utils/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsX:Lcom/splashtop/remote/utils/SpringDynamics;

    .line 85
    new-instance v0, Lcom/splashtop/remote/utils/SpringDynamics;

    invoke-direct {v0}, Lcom/splashtop/remote/utils/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsY:Lcom/splashtop/remote/utils/SpringDynamics;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mHandler:Landroid/os/Handler;

    .line 264
    new-instance v0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;-><init>(Lcom/splashtop/remote/zoom/DynamicZoomControl;)V

    iput-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 104
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsX:Lcom/splashtop/remote/utils/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/splashtop/remote/utils/SpringDynamics;->setFriction(F)V

    .line 105
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsY:Lcom/splashtop/remote/utils/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/splashtop/remote/utils/SpringDynamics;->setFriction(F)V

    .line 106
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsX:Lcom/splashtop/remote/utils/SpringDynamics;

    invoke-virtual {v0, v3, v1}, Lcom/splashtop/remote/utils/SpringDynamics;->setSpring(FF)V

    .line 107
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsY:Lcom/splashtop/remote/utils/SpringDynamics;

    invoke-virtual {v0, v3, v1}, Lcom/splashtop/remote/utils/SpringDynamics;->setSpring(FF)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/utils/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsX:Lcom/splashtop/remote/utils/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/utils/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsY:Lcom/splashtop/remote/utils/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/zoom/ZoomState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getMAX_ZOOM()F
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MAX_ZOOM:F

    return v0
.end method

.method public static getMIN_ZOOM()F
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MIN_ZOOM:F

    return v0
.end method

.method private getMaxPanDelta(F)F
    .locals 3
    .parameter "zoom"

    .prologue
    .line 319
    const/4 v0, 0x0

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private limitZoom()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoom()F

    move-result v0

    sget v1, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MIN_ZOOM:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    sget v1, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MIN_ZOOM:F

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/zoom/ZoomState;->setZoom(F)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoom()F

    move-result v0

    sget v1, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MAX_ZOOM:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    sget v1, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MAX_ZOOM:F

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/zoom/ZoomState;->setZoom(F)V

    goto :goto_0
.end method

.method public static setMAX_ZOOM(F)V
    .locals 0
    .parameter "mAX_ZOOM"

    .prologue
    .line 131
    sput p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MAX_ZOOM:F

    .line 132
    return-void
.end method

.method public static setMIN_ZOOM(F)V
    .locals 0
    .parameter "mIN_ZOOM"

    .prologue
    .line 119
    sput p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->MIN_ZOOM:F

    .line 120
    return-void
.end method

.method private updatePanLimits()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f00

    .line 337
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/AspectQuotient;->get()F

    move-result v0

    .line 339
    .local v0, aspectQuotient:F
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomX(F)F

    move-result v1

    .line 340
    .local v1, zoomX:F
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomY(F)F

    move-result v2

    .line 342
    .local v2, zoomY:F
    invoke-direct {p0, v1}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getMaxPanDelta(F)F

    move-result v3

    sub-float v3, v4, v3

    iput v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinX:F

    .line 343
    invoke-direct {p0, v1}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getMaxPanDelta(F)F

    move-result v3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxX:F

    .line 344
    invoke-direct {p0, v2}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getMaxPanDelta(F)F

    move-result v3

    sub-float v3, v4, v3

    iput v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinY:F

    .line 345
    invoke-direct {p0, v2}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getMaxPanDelta(F)F

    move-result v3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxY:F

    .line 346
    return-void
.end method


# virtual methods
.method public getZoomState()Lcom/splashtop/remote/zoom/ZoomState;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    return-object v0
.end method

.method public getmPanMaxX()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxX:F

    return v0
.end method

.method public getmPanMaxY()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxY:F

    return v0
.end method

.method public getmPanMinX()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinX:F

    return v0
.end method

.method public getmPanMinY()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinY:F

    return v0
.end method

.method public pan(FF)V
    .locals 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const v6, 0x3ecccccd

    const/4 v5, 0x0

    .line 240
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/AspectQuotient;->get()F

    move-result v0

    .line 242
    .local v0, aspectQuotient:F
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomX(F)F

    move-result v3

    div-float/2addr p1, v3

    .line 243
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomY(F)F

    move-result v3

    div-float/2addr p2, v3

    .line 245
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/ZoomState;->getPanX()F

    move-result v3

    iget v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    cmpl-float v3, p1, v5

    if-gtz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/ZoomState;->getPanX()F

    move-result v3

    iget v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinX:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 246
    :cond_1
    mul-float/2addr p1, v6

    .line 248
    :cond_2
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/ZoomState;->getPanY()F

    move-result v3

    iget v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    cmpl-float v3, p2, v5

    if-gtz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/ZoomState;->getPanY()F

    move-result v3

    iget v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinY:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    cmpg-float v3, p2, v5

    if-gez v3, :cond_5

    .line 249
    :cond_4
    mul-float/2addr p2, v6

    .line 252
    :cond_5
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/ZoomState;->getPanX()F

    move-result v3

    add-float v1, v3, p1

    .line 253
    .local v1, newPanX:F
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/ZoomState;->getPanY()F

    move-result v3

    add-float v2, v3, p2

    .line 255
    .local v2, newPanY:F
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3, v1}, Lcom/splashtop/remote/zoom/ZoomState;->setPanX(F)V

    .line 256
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3, v2}, Lcom/splashtop/remote/zoom/ZoomState;->setPanY(F)V

    .line 258
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/ZoomState;->notifyObservers()V

    .line 259
    return-void
.end method

.method public setAspectQuotient(Lcom/splashtop/remote/zoom/AspectQuotient;)V
    .locals 1
    .parameter "aspectQuotient"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-virtual {v0, p0}, Lcom/splashtop/remote/zoom/AspectQuotient;->deleteObserver(Ljava/util/Observer;)V

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    .line 195
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-virtual {v0, p0}, Lcom/splashtop/remote/zoom/AspectQuotient;->addObserver(Ljava/util/Observer;)V

    .line 196
    return-void
.end method

.method public setmPanMaxX(F)V
    .locals 0
    .parameter "mPanMaxX"

    .prologue
    .line 155
    iput p1, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxX:F

    .line 156
    return-void
.end method

.method public setmPanMaxY(F)V
    .locals 0
    .parameter "mPanMaxY"

    .prologue
    .line 179
    iput p1, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxY:F

    .line 180
    return-void
.end method

.method public setmPanMinX(F)V
    .locals 0
    .parameter "mPanMinX"

    .prologue
    .line 143
    iput p1, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinX:F

    .line 144
    return-void
.end method

.method public setmPanMinY(F)V
    .locals 0
    .parameter "mPanMinY"

    .prologue
    .line 167
    iput p1, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinY:F

    .line 168
    return-void
.end method

.method public startFling(FF)V
    .locals 6
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 291
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-virtual {v3}, Lcom/splashtop/remote/zoom/AspectQuotient;->get()F

    move-result v0

    .line 292
    .local v0, aspectQuotient:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 294
    .local v1, now:J
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsX:Lcom/splashtop/remote/utils/SpringDynamics;

    iget-object v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v4}, Lcom/splashtop/remote/zoom/ZoomState;->getPanX()F

    move-result v4

    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v5, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomX(F)F

    move-result v5

    div-float v5, p1, v5

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/splashtop/remote/utils/SpringDynamics;->setState(FFJ)V

    .line 295
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsY:Lcom/splashtop/remote/utils/SpringDynamics;

    iget-object v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v4}, Lcom/splashtop/remote/zoom/ZoomState;->getPanY()F

    move-result v4

    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v5, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomY(F)F

    move-result v5

    div-float v5, p2, v5

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/splashtop/remote/utils/SpringDynamics;->setState(FFJ)V

    .line 297
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsX:Lcom/splashtop/remote/utils/SpringDynamics;

    iget v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinX:F

    invoke-virtual {v3, v4}, Lcom/splashtop/remote/utils/SpringDynamics;->setMinPosition(F)V

    .line 298
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsX:Lcom/splashtop/remote/utils/SpringDynamics;

    iget v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxX:F

    invoke-virtual {v3, v4}, Lcom/splashtop/remote/utils/SpringDynamics;->setMaxPosition(F)V

    .line 299
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsY:Lcom/splashtop/remote/utils/SpringDynamics;

    iget v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMinY:F

    invoke-virtual {v3, v4}, Lcom/splashtop/remote/utils/SpringDynamics;->setMinPosition(F)V

    .line 300
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanDynamicsY:Lcom/splashtop/remote/utils/SpringDynamics;

    iget v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mPanMaxY:F

    invoke-virtual {v3, v4}, Lcom/splashtop/remote/utils/SpringDynamics;->setMaxPosition(F)V

    .line 302
    iget-object v3, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public stopFling()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->limitZoom()V

    .line 352
    invoke-direct {p0}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->updatePanLimits()V

    .line 353
    return-void
.end method

.method public zoom(FFF)V
    .locals 12
    .parameter "f"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v11, 0x3f00

    const/high16 v10, 0x3f80

    .line 215
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-virtual {v5}, Lcom/splashtop/remote/zoom/AspectQuotient;->get()F

    move-result v0

    .line 217
    .local v0, aspectQuotient:F
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v5, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomX(F)F

    move-result v3

    .line 218
    .local v3, prevZoomX:F
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v5, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomY(F)F

    move-result v4

    .line 220
    .local v4, prevZoomY:F
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v5, p1}, Lcom/splashtop/remote/zoom/ZoomState;->setZoom(F)V

    .line 221
    invoke-direct {p0}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->limitZoom()V

    .line 222
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v5, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomX(F)F

    move-result v1

    .line 223
    .local v1, newZoomX:F
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v5, v0}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomY(F)F

    move-result v2

    .line 225
    .local v2, newZoomY:F
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    iget-object v6, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v6}, Lcom/splashtop/remote/zoom/ZoomState;->getPanX()F

    move-result v6

    sub-float v7, p2, v11

    div-float v8, v10, v3

    div-float v9, v10, v1

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/zoom/ZoomState;->setPanX(F)V

    .line 226
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    iget-object v6, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v6}, Lcom/splashtop/remote/zoom/ZoomState;->getPanY()F

    move-result v6

    sub-float v7, p3, v11

    div-float v8, v10, v4

    div-float v9, v10, v2

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/zoom/ZoomState;->setPanY(F)V

    .line 228
    invoke-direct {p0}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->updatePanLimits()V

    .line 230
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v5}, Lcom/splashtop/remote/zoom/ZoomState;->notifyObservers()V

    .line 231
    return-void
.end method
