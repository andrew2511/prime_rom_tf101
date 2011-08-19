.class Lcom/google/android/maps/ZoomHelper;
.super Ljava/lang/Object;
.source "ZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/ZoomHelper$1;,
        Lcom/google/android/maps/ZoomHelper$Snapshot;
    }
.end annotation


# instance fields
.field private final mAnimations:Landroid/view/animation/AnimationSet;

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mCommitTime:J

.field private final mController:Lcom/google/android/maps/MapController;

.field private mFading:Z

.field private final mLastDrawnScale:Landroid/view/animation/Transformation;

.field private mManualZoomActive:Z

.field private final mMapView:Lcom/google/android/maps/MapView;

.field private mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

.field private mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field protected final mTempPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;Lcom/google/android/maps/MapController;)V
    .registers 5
    .parameter "mapView"
    .parameter "controller"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    .line 63
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mTempMatrix:Landroid/graphics/Matrix;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    .line 80
    iput-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    .line 84
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mTempPoint:Landroid/graphics/Point;

    .line 97
    iput-object p1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    .line 98
    iput-object p2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    .line 101
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 104
    new-instance v1, Lcom/google/android/maps/PixelConverter;

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    invoke-direct {v1, v0}, Lcom/google/android/maps/PixelConverter;-><init>(Lcom/google/android/maps/PixelConverter;)V

    iput-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    .line 105
    return-void
.end method

.method private addFade()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 421
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 422
    .local v0, fade:Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 423
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 424
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    .line 425
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 426
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 427
    return-void
.end method

.method private addScale(J)V
    .registers 12
    .parameter "time"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    .line 400
    .local v1, fromFactor:F
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid_maps_conflict_avoidance/com/google/map/Zoom;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)F

    move-result v2

    .line 402
    .local v2, toFactor:F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    aget v5, v3, v7

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    aget v6, v3, v8

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 406
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v8}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 407
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 408
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 409
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->startNow()V

    .line 410
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 412
    iput-boolean v7, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    .line 413
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 414
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 415
    return-void
.end method

.method private static calculateRoundedZoom(FI)I
    .registers 9
    .parameter "scale"
    .parameter "startingZoomLevel"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    .line 307
    cmpg-float v3, p0, v4

    if-gez v3, :cond_16

    move v2, v5

    .line 308
    .local v2, zoomOut:Z
    :goto_8
    if-eqz v2, :cond_d

    div-float v3, v4, p0

    move p0, v3

    .line 309
    :cond_d
    float-to-int v1, p0

    .line 310
    .local v1, intZoom:I
    const/4 v0, 0x0

    .line 311
    .local v0, i:I
    :goto_f
    if-le v1, v5, :cond_19

    .line 312
    shr-int/lit8 v1, v1, 0x1

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 307
    .end local v0           #i:I
    .end local v1           #intZoom:I
    .end local v2           #zoomOut:Z
    :cond_16
    const/4 v3, 0x0

    move v2, v3

    goto :goto_8

    .line 319
    .restart local v0       #i:I
    .restart local v1       #intZoom:I
    .restart local v2       #zoomOut:Z
    :cond_19
    const-wide/high16 v3, 0x3ff0

    float-to-double v5, p0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fd0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_29

    .line 320
    add-int/lit8 v0, v0, 0x1

    .line 322
    :cond_29
    if-eqz v2, :cond_2e

    neg-int v3, v0

    :goto_2c
    add-int/2addr v3, p1

    return v3

    :cond_2e
    move v3, v0

    goto :goto_2c
.end method

.method private createSnapshot()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 443
    new-instance v1, Lcom/google/android/maps/ZoomHelper$Snapshot;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/ZoomHelper$Snapshot;-><init>(Lcom/google/android/maps/ZoomHelper$1;)V

    .line 444
    .local v1, snapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    .line 447
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 448
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 449
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2, v0, v5}, Lcom/google/android/maps/MapView;->drawMap(Landroid/graphics/Canvas;Z)Z

    .line 450
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 451
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 452
    iput-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    .line 453
    return-void
.end method

.method private getScale(Landroid_maps_conflict_avoidance/com/google/map/Zoom;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)F
    .registers 5
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 384
    invoke-virtual {p2, p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->isMoreZoomedIn(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    int-to-float v0, v0

    :goto_b
    return v0

    :cond_c
    const/high16 v0, 0x3f80

    invoke-virtual {p2, p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_b
.end method

.method private stepAnimation(JLcom/google/android/maps/PixelConverter;)V
    .registers 10
    .parameter "when"
    .parameter "converter"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 462
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v2, v2, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid_maps_conflict_avoidance/com/google/map/Zoom;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)F

    move-result v2

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    const/4 v5, 0x1

    aget v5, v0, v5

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/PixelConverter;->setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V

    .line 467
    return-void
.end method

.method private updateSnapshotFixedPoint(FF)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    .line 267
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mTempMatrix:Landroid/graphics/Matrix;

    .line 268
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 269
    const-string v2, "ZoomHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Singular matrix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_34
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V

    .line 273
    return-void
.end method

.method private updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V
    .registers 10
    .parameter "pc"
    .parameter "inverse"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/PixelConverter;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    aput p3, v0, v3

    .line 289
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    aput p4, v0, v4

    .line 290
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    aput p3, v0, v3

    .line 291
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    aput p4, v0, v4

    .line 292
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 293
    return-void
.end method


# virtual methods
.method beginZoom(FF)V
    .registers 5
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    .line 194
    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->createSnapshot()V

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(FF)V

    .line 197
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    .line 198
    .local v0, pc:Lcom/google/android/maps/PixelConverter;
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/PixelConverter;->setMatricesFrom(Lcom/google/android/maps/PixelConverter;)V

    .line 199
    return-void
.end method

.method doZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;ZII)Z
    .registers 11
    .parameter "newZoom"
    .parameter "delay"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    if-nez v2, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->createSnapshot()V

    .line 154
    :cond_7
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    .line 156
    .local v0, pc:Lcom/google/android/maps/PixelConverter;
    int-to-float v2, p3

    int-to-float v3, p4

    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(FF)V

    .line 160
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/MapController;->zoomTo(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 163
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ne p3, v2, :cond_2d

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-eq p4, v2, :cond_42

    .line 165
    :cond_2d
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v2, v2, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v1

    .line 166
    .local v1, realLocationOfFixedPoint:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p3

    iget v4, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    .line 170
    .end local v1           #realLocationOfFixedPoint:Landroid/graphics/Point;
    :cond_42
    const-wide/16 v2, 0x12c

    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->addScale(J)V

    .line 175
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    .line 178
    if-eqz p2, :cond_5b

    .line 179
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x258

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    .line 184
    :goto_59
    const/4 v2, 0x1

    return v2

    .line 181
    :cond_5b
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->preLoad()V

    goto :goto_59
.end method

.method doZoom(ZZII)Z
    .registers 9
    .parameter "zoomIn"
    .parameter "delay"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    .line 131
    .local v0, currentZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextHigherZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    move-object v1, v2

    .line 135
    .local v1, newZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :goto_d
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v3

    if-le v2, v3, :cond_23

    .line 137
    :cond_1b
    const/4 v2, 0x0

    .line 140
    :goto_1c
    return v2

    .line 131
    .end local v1           #newZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :cond_1d
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    move-object v1, v2

    goto :goto_d

    .line 140
    .restart local v1       #newZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :cond_23
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/android/maps/ZoomHelper;->doZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;ZII)Z

    move-result v2

    goto :goto_1c
.end method

.method endZoom()V
    .registers 16

    .prologue
    .line 226
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v7

    check-cast v7, Lcom/google/android/maps/PixelConverter;

    .line 230
    .local v7, pc:Lcom/google/android/maps/PixelConverter;
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    const/high16 v13, 0x3f80

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v9

    .line 231
    .local v9, scaleFactorBegin:F
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v6

    .line 232
    .local v6, oldZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v12

    invoke-static {v9, v12}, Lcom/google/android/maps/ZoomHelper;->calculateRoundedZoom(FI)I

    move-result v4

    .line 233
    .local v4, newLevel:I
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    .line 235
    .local v5, newZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v12, v5}, Lcom/google/android/maps/MapController;->zoomTo(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 238
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    const/4 v13, 0x0

    aget v2, v12, v13

    .line 239
    .local v2, focusX:F
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    const/4 v13, 0x1

    aget v3, v12, v13

    .line 240
    .local v3, focusY:F
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v0, v12

    .line 241
    .local v0, centerX:F
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v1, v12

    .line 242
    .local v1, centerY:F
    float-to-int v10, v2

    .line 243
    .local v10, xOffset:I
    float-to-int v11, v3

    .line 244
    .local v11, yOffset:I
    int-to-float v12, v10

    cmpl-float v12, v12, v0

    if-nez v12, :cond_57

    int-to-float v12, v11

    cmpl-float v12, v12, v1

    if-eqz v12, :cond_6c

    .line 245
    :cond_57
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v12, v13, v14}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v8

    .line 246
    .local v8, realLocationOfFixedPoint:Landroid/graphics/Point;
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    iget v13, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v10

    iget v14, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v11

    invoke-virtual {v12, v13, v14}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    .line 251
    .end local v8           #realLocationOfFixedPoint:Landroid/graphics/Point;
    :cond_6c
    const-wide/16 v12, 0xc8

    invoke-direct {p0, v12, v13}, Lcom/google/android/maps/ZoomHelper;->addScale(J)V

    .line 256
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    invoke-direct {p0, v12, v13, v7}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    .line 259
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->preLoad()V

    .line 261
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    .line 262
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v2, 0xff

    const/4 v4, 0x0

    .line 331
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    if-nez v0, :cond_b

    move v0, v4

    .line 377
    :goto_a
    return v0

    .line 332
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    .line 333
    invoke-virtual {p0, p3, p4}, Lcom/google/android/maps/ZoomHelper;->shouldDrawMap(J)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 334
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 337
    :cond_1c
    iget-wide v1, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    cmp-long v1, p3, v1

    if-lez v1, :cond_2e

    .line 338
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->preLoad()V

    .line 339
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    .line 342
    :cond_2e
    iget-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    if-nez v1, :cond_35

    .line 344
    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    .line 348
    :cond_35
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 351
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 352
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v1, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 355
    iget-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    if-nez v1, :cond_99

    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 356
    iget-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    if-eqz v1, :cond_7f

    .line 359
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 360
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    .line 361
    iput-boolean v4, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    .line 362
    invoke-virtual {v0}, Lcom/google/android/maps/PixelConverter;->resetMatrix()V

    move v0, v4

    .line 363
    goto :goto_a

    .line 364
    :cond_7f
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->canCoverCenter()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 367
    iput-boolean v5, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    .line 368
    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->addFade()V

    move v0, v5

    .line 369
    goto/16 :goto_a

    .line 374
    :cond_8f
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v0, v0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView$Repainter;->repaint()V

    move v0, v4

    .line 375
    goto/16 :goto_a

    :cond_99
    move v0, v5

    .line 377
    goto/16 :goto_a
.end method

.method shouldDrawMap(J)Z
    .registers 4
    .parameter "when"

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method updateZoom(FFF)V
    .registers 11
    .parameter "scale"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 208
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    invoke-virtual {v3}, Lcom/google/android/maps/PixelConverter;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V

    .line 210
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 212
    .local v1, m:Landroid/graphics/Matrix;
    neg-float v2, p2

    neg-float v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 213
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 214
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 216
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/PixelConverter;

    .line 217
    .local v0, pc:Lcom/google/android/maps/PixelConverter;
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid_maps_conflict_avoidance/com/google/map/Zoom;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v4, v4, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    iget-object v5, v5, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/PixelConverter;->setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V

    .line 219
    return-void
.end method
