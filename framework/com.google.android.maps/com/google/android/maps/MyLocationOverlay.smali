.class public Lcom/google/android/maps/MyLocationOverlay;
.super Lcom/google/android/maps/Overlay;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/hardware/SensorListener;
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/maps/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MyLocationOverlay$NameAndDate;
    }
.end annotation


# static fields
.field private static final DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

.field private static final LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

.field private static final LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;


# instance fields
.field private mCompassArrow:Landroid/graphics/drawable/Drawable;

.field private mCompassBase:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/google/android/maps/MapController;

.field private final mEnabledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/MyLocationOverlay$NameAndDate;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsCompassEnabled:Z

.field private volatile mIsMyLocationEnabled:Z

.field private volatile mIsOnScreen:Z

.field private volatile mLastFix:Landroid/location/Location;

.field private volatile mLocationChangedSinceLastDraw:Z

.field private mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

.field private mLocationDotHalfHeight:I

.field private mLocationDotHalfWidth:I

.field private final mMapView:Lcom/google/android/maps/MapView;

.field private volatile mMyLocation:Lcom/google/android/maps/GeoPoint;

.field private volatile mMyLocationTime:J

.field mNetworkLocation:Landroid/location/Location;

.field mNetworkLocationHandler:Landroid/os/Handler;

.field private volatile mOrientation:F

.field private volatile mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

.field private final mRunOnFirstFix:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gps"

    aput-object v1, v0, v2

    const-string v1, "network"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    .line 140
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 141
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    .line 144
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 145
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    const/high16 v1, 0x4020

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V
    .registers 6
    .parameter "context"
    .parameter "mapView"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    .line 78
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    .line 89
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    .line 90
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    .line 91
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    .line 93
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    .line 94
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    .line 127
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    .line 130
    new-instance v0, Lcom/google/android/maps/MyLocationOverlay$1;

    invoke-direct {v0, p0}, Lcom/google/android/maps/MyLocationOverlay$1;-><init>(Lcom/google/android/maps/MyLocationOverlay;)V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    .line 159
    if-nez p2, :cond_48

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapView == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_48
    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    .line 164
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    .line 165
    return-void
.end method

.method private clearNetworkLocationRebroadcasts()V
    .registers 3

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    .line 396
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    return-void
.end method

.method private getCompassArrow()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    .line 191
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2c

    .line 192
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/maps/InternalR$drawable;->compass_arrow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 195
    .local v1, w:I
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 196
    .local v0, h:I
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    neg-int v3, v1

    const/16 v4, -0x1c

    const/16 v5, 0x1c

    sub-int v5, v0, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_2c
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method private getCompassBase()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 180
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_29

    .line 181
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/maps/InternalR$drawable;->compass_base:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 184
    .local v1, w:I
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 185
    .local v0, h:I
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    neg-int v3, v1

    neg-int v4, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_29
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method private getLocationDot()Landroid/graphics/drawable/LevelListDrawable;
    .registers 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    if-nez v0, :cond_37

    .line 169
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$drawable;->ic_maps_indicator_current_position_anim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    .line 171
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    .line 172
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    .line 173
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    iget v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    neg-int v1, v1

    iget v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    iget v4, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/LevelListDrawable;->setBounds(IIII)V

    .line 176
    :cond_37
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method private isCloseToPoint(IILcom/google/android/maps/MapView;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 462
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    if-nez v0, :cond_7

    move v0, v6

    .line 469
    :goto_6
    return v0

    .line 464
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 466
    int-to-long v0, p1

    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 467
    int-to-long v2, p2

    iget-object v4, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 468
    const/high16 v4, 0x4200

    .line 469
    mul-long/2addr v0, v0

    mul-long/2addr v2, v2

    add-long/2addr v0, v2

    long-to-float v0, v0

    mul-float v1, v4, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_36

    const/4 v0, 0x1

    goto :goto_6

    :cond_36
    move v0, v6

    goto :goto_6
.end method

.method private isLocationOnScreen(Lcom/google/android/maps/MapView;Lcom/google/android/maps/GeoPoint;)Z
    .registers 8
    .parameter "mapView"
    .parameter "location"

    .prologue
    const/4 v4, 0x0

    .line 320
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 321
    .local v1, tempPoint:Landroid/graphics/Point;
    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 323
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .local v0, screen:Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private isect(FFF)F
    .registers 8
    .parameter "c"
    .parameter "radius"
    .parameter "isect"

    .prologue
    const/4 v3, 0x0

    .line 523
    mul-float v1, p2, p2

    mul-float v2, p1, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v2, p1

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    mul-float v2, p3, p3

    sub-float v0, v1, v2

    .line 524
    .local v0, disc:F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1a

    .line 525
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 527
    :goto_19
    return v1

    :cond_1a
    move v1, v3

    goto :goto_19
.end method


# virtual methods
.method public declared-synchronized disableCompass()V
    .registers 4

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    if-eqz v1, :cond_1e

    .line 227
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 228
    .local v0, sm:Landroid/hardware/SensorManager;
    if-eqz v0, :cond_16

    .line 229
    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 231
    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 234
    .end local v0           #sm:Landroid/hardware/SensorManager;
    :cond_1e
    monitor-exit p0

    return-void

    .line 226
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disableMyLocation()V
    .registers 3

    .prologue
    .line 288
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 290
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    .line 294
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 295
    monitor-exit p0

    return-void

    .line 288
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dispatchTap()Z
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .registers 14
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"
    .parameter "when"

    .prologue
    const/4 v7, 0x0

    .line 495
    monitor-enter p0

    if-eqz p3, :cond_7

    move v0, v7

    .line 512
    :goto_5
    monitor-exit p0

    return v0

    .line 497
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_24

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocationTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_37

    .line 500
    iget-object v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    iget-object v4, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/MyLocationOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Landroid/location/Location;Lcom/google/android/maps/GeoPoint;J)V

    .line 508
    :cond_24
    :goto_24
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_35

    .line 509
    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/MyLocationOverlay;->drawCompass(Landroid/graphics/Canvas;F)V

    :cond_35
    move v0, v7

    .line 512
    goto :goto_5

    .line 503
    :cond_37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    .line 504
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_40

    goto :goto_24

    .line 495
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected drawCompass(Landroid/graphics/Canvas;F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 674
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 675
    const/high16 v0, 0x4248

    const/high16 v1, 0x4268

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 677
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassBase()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0, v2, v2, v2}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    .line 678
    neg-float v0, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 679
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassArrow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0, v2, v2, v2}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    .line 680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 681
    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Landroid/location/Location;Lcom/google/android/maps/GeoPoint;J)V
    .registers 36
    .parameter "canvas"
    .parameter "mapView"
    .parameter "lastFix"
    .parameter "myLocation"
    .parameter "when"

    .prologue
    .line 546
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    move v5, v0

    if-nez v5, :cond_8

    .line 664
    :goto_7
    return-void

    .line 550
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/MyLocationOverlay;->getLocationDot()Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v22

    .line 551
    .local v22, locationDot:Landroid/graphics/drawable/LevelListDrawable;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/LevelListDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 553
    .local v15, bounds:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v16

    .line 554
    .local v16, converter:Lcom/google/android/maps/Projection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    .line 556
    .local v27, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    .line 557
    .local v28, y:I
    const/16 v23, 0x0

    .line 558
    .local v23, radius:F
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Lcom/google/android/maps/Projection;->metersToEquatorPixels(F)F

    move-result v23

    .line 565
    :cond_4a
    const-wide/16 v5, 0x3e8

    rem-long v5, p5, v5

    long-to-int v5, v5

    mul-int/lit16 v5, v5, 0x2710

    move v0, v5

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    .line 566
    .local v21, level:I
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 568
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v26

    .line 569
    .local v26, width:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v19

    .line 572
    .local v19, height:I
    const/4 v5, 0x0

    cmpl-float v5, v23, v5

    if-lez v5, :cond_150

    .line 573
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move v6, v0

    sget-object v7, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move/from16 v3, v23

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 574
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move v6, v0

    sget-object v7, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move/from16 v3, v23

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 602
    const/high16 v7, 0x3f80

    .line 605
    .local v7, lineCenter:F
    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v23

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    move-result v18

    .line 606
    .local v18, halfChord:F
    const/4 v5, 0x0

    cmpl-float v5, v18, v5

    if-lez v5, :cond_bb

    .line 607
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    sub-float v6, v5, v18

    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    add-float v8, v5, v18

    sget-object v10, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 610
    :cond_bb
    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v23

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    move-result v18

    .line 611
    const/4 v5, 0x0

    cmpl-float v5, v18, v5

    if-lez v5, :cond_f2

    .line 612
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    sub-float v9, v5, v18

    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    sub-float v10, v5, v7

    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    add-float v11, v5, v18

    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    sub-float v12, v5, v7

    sget-object v13, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 615
    :cond_f2
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v23

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    move-result v18

    .line 616
    const/4 v5, 0x0

    cmpl-float v5, v18, v5

    if-lez v5, :cond_119

    .line 617
    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    sub-float v8, v5, v18

    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    add-float v10, v5, v18

    sget-object v11, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v9, v7

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 620
    :cond_119
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v6, v0

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v23

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    move-result v18

    .line 621
    const/4 v5, 0x0

    cmpl-float v5, v18, v5

    if-lez v5, :cond_150

    .line 622
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    sub-float v9, v5, v7

    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    sub-float v10, v5, v18

    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    sub-float v11, v5, v7

    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    add-float v12, v5, v18

    sget-object v13, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 628
    .end local v7           #lineCenter:F
    .end local v18           #halfChord:F
    :cond_150
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v28

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v26

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v6, v15, Landroid/graphics/Rect;->left:I

    add-int v6, v6, v27

    iget v7, v15, Landroid/graphics/Rect;->top:I

    add-int v7, v7, v28

    iget v8, v15, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v27

    iget v9, v15, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v28

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    .line 635
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    move v5, v0

    if-eqz v5, :cond_207

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    move-object v5, v0

    if-eqz v5, :cond_207

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    div-int/lit8 v6, v26, 0x14

    div-int/lit8 v7, v19, 0x14

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    .line 638
    .local v20, isOnScreenInset:Z
    if-nez v20, :cond_207

    .line 640
    const/16 v25, 0x0

    .line 641
    .local v25, wasOnScreen:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    move-object v5, v0

    if-eqz v5, :cond_1e7

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    .line 647
    :cond_1e7
    if-eqz v25, :cond_207

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 657
    .end local v20           #isOnScreenInset:Z
    .end local v25           #wasOnScreen:Z
    :cond_207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    move v5, v0

    if-eqz v5, :cond_22c

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    move/from16 v24, v0

    .line 659
    .local v24, w:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    move/from16 v17, v0

    .line 660
    .local v17, h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    move-object v8, v0

    const-wide/16 v9, 0xfa

    sub-int v11, v27, v24

    sub-int v12, v28, v17

    add-int v13, v27, v24

    add-int v14, v28, v17

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/maps/MapView;->postInvalidateDelayed(JIIII)V

    .line 663
    .end local v17           #h:I
    .end local v24           #w:I
    :cond_22c
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    goto/16 :goto_7
.end method

.method public declared-synchronized enableCompass()Z
    .registers 4

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    if-nez v1, :cond_1f

    .line 209
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 210
    .local v0, sm:Landroid/hardware/SensorManager;
    if-eqz v0, :cond_23

    .line 211
    const/16 v1, 0x80

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    .line 214
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 219
    .end local v0           #sm:Landroid/hardware/SensorManager;
    :cond_1f
    :goto_1f
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_2b

    monitor-exit p0

    return v1

    .line 216
    .restart local v0       #sm:Landroid/hardware/SensorManager;
    :cond_23
    :try_start_23
    const-string v1, "Maps.MyLocationOverlay"

    const-string v2, "Compass SensorManager was unavailable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    goto :goto_1f

    .line 208
    .end local v0           #sm:Landroid/hardware/SensorManager;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableMyLocation()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 254
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 255
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 256
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 257
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    .line 259
    sget-object v6, Lcom/google/android/maps/MyLocationOverlay;->DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

    array-length v7, v6

    move v8, v2

    :goto_1b
    if-ge v8, v7, :cond_aa

    aget-object v1, v6, v8
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_7e

    .line 261
    :try_start_1f
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 262
    if-nez v2, :cond_29

    .line 259
    :goto_25
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1b

    .line 265
    :cond_29
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    .line 266
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;

    invoke-direct {v3, v1}, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 268
    const-string v2, "Maps.MyLocationOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request updates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_1f .. :try_end_55} :catchall_7e
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_55} :catch_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_55} :catch_81

    goto :goto_25

    .line 269
    :catch_56
    move-exception v2

    .line 270
    :try_start_57
    const-string v3, "Maps.MyLocationOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t get provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_57 .. :try_end_7d} :catchall_7e

    goto :goto_25

    .line 254
    :catchall_7e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :catch_81
    move-exception v2

    .line 272
    :try_start_82
    const-string v3, "Maps.MyLocationOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t get provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 275
    :cond_aa
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    if-nez v0, :cond_b5

    .line 276
    const-string v0, "Maps.MyLocationOverlay"

    const-string v1, "None of the desired Location Providers are available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_b5
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z
    :try_end_b7
    .catchall {:try_start_82 .. :try_end_b7} :catchall_7e

    monitor-exit p0

    return v0
.end method

.method public getLastFix()Landroid/location/Location;
    .registers 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lcom/google/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method public getOrientation()F
    .registers 2

    .prologue
    .line 707
    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    return v0
.end method

.method public isCompassEnabled()Z
    .registers 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .registers 2

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    return v0
.end method

.method public onAccuracyChanged(II)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 748
    return-void
.end method

.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .registers 13
    .parameter

    .prologue
    const-wide v9, 0x412e848000000000L

    .line 335
    monitor-enter p0

    :try_start_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 336
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    if-nez v0, :cond_37

    .line 338
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    .line 342
    :goto_23
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    :cond_31
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_3d

    if-nez v0, :cond_40

    .line 392
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    .line 340
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_23

    .line 335
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 360
    :cond_40
    :try_start_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 361
    const-wide/16 v3, 0x2710

    sub-long v3, v1, v3

    .line 363
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    .line 364
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;

    .line 365
    iget-object v7, v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 366
    iput-wide v1, v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->date:J

    .line 374
    :cond_68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    .line 375
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    .line 376
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v9

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v9

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocationTime:J

    .line 379
    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    .line 382
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/MyLocationOverlay;->isLocationOnScreen(Lcom/google/android/maps/MapView;Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 383
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 387
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_35

    .line 388
    const-string v1, "Maps.MyLocationOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running deferred on first fix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_99

    .line 368
    :cond_c4
    iget-object v7, v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->name:Ljava/lang/String;

    const-string v8, "gps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    iget-wide v7, v0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->date:J

    cmp-long v0, v7, v3

    if-lez v0, :cond_52

    .line 369
    const-string v0, "Maps.MyLocationOverlay"

    const-string v1, "Got fallback update soon after preferred udpate, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_40 .. :try_end_db} :catchall_3d

    goto/16 :goto_35
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 421
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 422
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->clearNetworkLocationRebroadcasts()V

    .line 424
    :cond_b
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 415
    return-void
.end method

.method public declared-synchronized onSensorChanged(I[F)V
    .registers 9
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    if-eqz v1, :cond_27

    .line 302
    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    .line 303
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassBase()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 304
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x32

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x3a

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x32

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x3a

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/maps/MapView;->postInvalidate(IIII)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 310
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_27
    monitor-exit p0

    return-void

    .line 301
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/google/android/maps/MapView;)Z
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "snapPoint"
    .parameter "mapView"

    .prologue
    .line 427
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/MyLocationOverlay;->isCloseToPoint(IILcom/google/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 428
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 429
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 404
    const/4 v0, 0x2

    if-eq p2, v0, :cond_e

    .line 405
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->clearNetworkLocationRebroadcasts()V

    .line 408
    :cond_e
    return-void
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .registers 6
    .parameter "p"
    .parameter "map"

    .prologue
    const/4 v2, 0x0

    .line 444
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_23

    .line 445
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v0, p1, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 446
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/maps/MyLocationOverlay;->isCloseToPoint(IILcom/google/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 447
    invoke-virtual {p0}, Lcom/google/android/maps/MyLocationOverlay;->dispatchTap()Z

    .line 448
    const/4 v0, 0x1

    .line 453
    :goto_20
    return v0

    :cond_21
    move v0, v2

    .line 450
    goto :goto_20

    :cond_23
    move v0, v2

    .line 453
    goto :goto_20
.end method

.method public declared-synchronized runOnFirstFix(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "runnable"

    .prologue
    .line 727
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_b

    .line 728
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 729
    const/4 v0, 0x1

    .line 732
    :goto_9
    monitor-exit p0

    return v0

    .line 731
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    .line 732
    const/4 v0, 0x0

    goto :goto_9

    .line 727
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
