.class public Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field static final DEBUG_COMPAT:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field static final TAG:Ljava/lang/String; = "Display"

.field private static volatile sCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private static sInitialized:Z

.field private static final sStaticInit:Ljava/lang/Object;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field private mDensity:F

.field private final mDisplay:I

.field private mDpiX:F

.field private mDpiY:F

.field private mLastGetTime:F

.field private mPixelFormat:I

.field private mRefreshRate:F

.field private final mTmpMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    .line 315
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/Display;->sInitialized:Z

    return-void
.end method

.method constructor <init>(ILandroid/view/CompatibilityInfoHolder;)V
    .registers 5
    .parameter "display"
    .parameter "compatInfo"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    .line 311
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    .line 47
    sget-object v0, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_14
    sget-boolean v1, Landroid/view/Display;->sInitialized:Z

    if-nez v1, :cond_1e

    .line 49
    invoke-static {}, Landroid/view/Display;->nativeClassInit()V

    .line 50
    const/4 v1, 0x1

    sput-boolean v1, Landroid/view/Display;->sInitialized:Z

    .line 52
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2a

    .line 53
    if-eqz p2, :cond_2d

    move-object v0, p2

    :goto_22
    iput-object v0, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 54
    iput p1, p0, Landroid/view/Display;->mDisplay:I

    .line 55
    invoke-direct {p0, p1}, Landroid/view/Display;->init(I)V

    .line 56
    return-void

    .line 52
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1

    .line 53
    :cond_2d
    new-instance v0, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v0}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    goto :goto_22
.end method

.method public static createCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;
    .registers 3
    .parameter "displayId"
    .parameter "compat"

    .prologue
    .line 325
    new-instance v0, Landroid/view/Display;

    invoke-direct {v0, p0, p1}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method static native getDisplayCount()I
.end method

.method private getNonSizeMetrics(Landroid/util/DisplayMetrics;)V
    .registers 4
    .parameter "outMetrics"

    .prologue
    .line 272
    iget v0, p0, Landroid/view/Display;->mDensity:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 274
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 275
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 277
    iget v0, p0, Landroid/view/Display;->mDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 278
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 279
    iget v0, p0, Landroid/view/Display;->mDpiX:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 280
    iget v0, p0, Landroid/view/Display;->mDpiY:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 281
    return-void
.end method

.method private getSizeInternal(Landroid/graphics/Point;Z)V
    .registers 9
    .parameter "outSize"
    .parameter "doCompat"

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    .line 105
    .local v2, wm:Landroid/view/IWindowManager;
    if-eqz v2, :cond_48

    .line 106
    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getDisplaySize(Landroid/graphics/Point;)V

    .line 108
    if-eqz p2, :cond_3a

    iget-object v3, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_3a

    .line 109
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    monitor-enter v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_3e

    .line 110
    :try_start_16
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 111
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 112
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p0, Landroid/view/Display;->mDensity:F

    iput v5, v4, Landroid/util/DisplayMetrics;->density:F

    .line 113
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v4}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 115
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 116
    monitor-exit v3

    .line 128
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v2           #wm:Landroid/view/IWindowManager;
    :cond_3a
    :goto_3a
    return-void

    .line 116
    .restart local v0       #ci:Landroid/content/res/CompatibilityInfo;
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :catchall_3b
    move-exception v4

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v4
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 125
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v2           #wm:Landroid/view/IWindowManager;
    :catch_3e
    move-exception v3

    move-object v1, v3

    .line 126
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Display"

    const-string v4, "Unable to get display size"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 121
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :cond_48
    :try_start_48
    invoke-virtual {p0}, Landroid/view/Display;->getRealWidth()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 122
    invoke-virtual {p0}, Landroid/view/Display;->getRealHeight()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_54} :catch_3e

    goto :goto_3a
.end method

.method static getWindowManager()Landroid/view/IWindowManager;
    .registers 2

    .prologue
    .line 284
    sget-object v0, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    sget-object v1, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_14

    .line 286
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    .line 289
    :cond_14
    sget-object v1, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    monitor-exit v0

    return-object v1

    .line 290
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method

.method public static setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 2
    .parameter "compatInfo"

    .prologue
    .line 60
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 62
    :cond_e
    sput-object p0, Landroid/view/Display;->sCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 66
    :goto_10
    return-void

    .line 64
    :cond_11
    const/4 v0, 0x0

    sput-object v0, Landroid/view/Display;->sCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_10
.end method


# virtual methods
.method public getDisplayId()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Landroid/view/Display;->mDisplay:I

    return v0
.end method

.method public getHeight()I
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v2

    .line 176
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 177
    .local v0, now:J
    long-to-float v3, v0

    iget v4, p0, Landroid/view/Display;->mLastGetTime:F

    const/high16 v5, 0x41a0

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    .line 178
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 179
    long-to-float v3, v0

    iput v3, p0, Landroid/view/Display;->mLastGetTime:F

    .line 181
    :cond_1a
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    monitor-exit v2

    return v3

    .line 182
    .end local v0           #now:J
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v3
.end method

.method public getMaximumSizeDimension()I
    .registers 5

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 148
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->getMaximumSizeDimension()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v2

    .line 151
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_8
    return v2

    .line 149
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Display"

    const-string v3, "Unable to get display maximum size dimension"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .registers 6
    .parameter "outMetrics"

    .prologue
    .line 243
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v1

    .line 244
    :try_start_3
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 245
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 246
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 247
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_25

    .line 248
    invoke-direct {p0, p1}, Landroid/view/Display;->getNonSizeMetrics(Landroid/util/DisplayMetrics;)V

    .line 250
    iget-object v1, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 251
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_24

    .line 252
    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 257
    :cond_24
    return-void

    .line 247
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public native getOrientation()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPixelFormat()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Landroid/view/Display;->mPixelFormat:I

    return v0
.end method

.method public native getRawHeight()I
.end method

.method public native getRawWidth()I
.end method

.method public native getRealHeight()I
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .registers 3
    .parameter "outMetrics"

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/view/Display;->getRealWidth()I

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 267
    invoke-virtual {p0}, Landroid/view/Display;->getRealHeight()I

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 268
    invoke-direct {p0, p1}, Landroid/view/Display;->getNonSizeMetrics(Landroid/util/DisplayMetrics;)V

    .line 269
    return-void
.end method

.method public native getRealWidth()I
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .registers 7
    .parameter "outSize"

    .prologue
    .line 134
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 136
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getRefreshRate()F
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Landroid/view/Display;->mRefreshRate:F

    return v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .registers 3
    .parameter "outSize"

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 92
    return-void
.end method

.method public getWidth()I
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v2

    .line 161
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 162
    .local v0, now:J
    long-to-float v3, v0

    iget v4, p0, Landroid/view/Display;->mLastGetTime:F

    const/high16 v5, 0x41a0

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    .line 163
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 164
    long-to-float v3, v0

    iput v3, p0, Landroid/view/Display;->mLastGetTime:F

    .line 166
    :cond_1a
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    monitor-exit v2

    return v3

    .line 167
    .end local v0           #now:J
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v3
.end method
