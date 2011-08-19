.class public final Lcom/google/android/maps/MapController;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MapController$1;,
        Lcom/google/android/maps/MapController$VertPanState;,
        Lcom/google/android/maps/MapController$HorizPanState;
    }
.end annotation


# static fields
.field private static final EMPTY_TRANSFORM:Landroid/view/animation/Transformation;


# instance fields
.field private mAnimationCompletedMessage:Landroid/os/Message;

.field private mAnimationCompletedRunnable:Ljava/lang/Runnable;

.field private mDeferredLatSpanE6:I

.field private mDeferredLonSpanE6:I

.field private final mDeltas:[I

.field private volatile mDirty:Z

.field private mHasBeenMeasured:Z

.field private mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

.field private final mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private final mOrigin:[F

.field private mPanAnimation:Landroid/view/animation/Animation;

.field private mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private mVertPan:Lcom/google/android/maps/MapController$VertPanState;

.field private mXPanSpeed:F

.field private mYPanSpeed:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    sput-object v0, Lcom/google/android/maps/MapController;->EMPTY_TRANSFORM:Landroid/view/animation/Transformation;

    return-void
.end method

.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Lcom/google/android/maps/MapView;)V
    .registers 8
    .parameter "map"
    .parameter "mapView"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v4, [F

    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    .line 46
    new-array v0, v4, [I

    fill-array-data v0, :array_40

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    .line 47
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    .line 48
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    .line 49
    iput v2, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    .line 50
    iput v2, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    .line 51
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    .line 52
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 54
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    .line 55
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    .line 56
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    .line 63
    iput v3, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    .line 64
    iput v3, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    .line 76
    iput-object p1, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    .line 77
    iput-object p2, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    .line 78
    return-void

    .line 45
    nop

    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_40
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V
    .registers 16
    .parameter "point"
    .parameter "runnable"
    .parameter "message"

    .prologue
    const v11, 0x49742400

    const/4 v10, 0x0

    .line 230
    iput-object p2, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    .line 231
    iput-object p3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    .line 232
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    .line 233
    .local v4, mapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {p0, v10}, Lcom/google/android/maps/MapController;->stopAnimation(Z)V

    .line 234
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v5, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->preLoad(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 235
    iput-object v4, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 236
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    .line 237
    .local v1, center:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelDistanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 239
    .local v2, distance:D
    const-wide/high16 v5, 0x4069

    const-wide/high16 v7, 0x4024

    mul-double/2addr v7, v2

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4089

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    double-to-int v0, v5

    .line 240
    .local v0, animateMillis:I
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    .line 243
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 244
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->startNow()V

    .line 245
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 247
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    .line 248
    return-void
.end method

.method private centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .registers 3
    .parameter "mapPoint"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 353
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    .line 354
    return-void
.end method

.method private curve(FF)F
    .registers 5
    .parameter "last"
    .parameter "max"

    .prologue
    .line 196
    sub-float v0, p2, p1

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private onKeyDown(I)Z
    .registers 4
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x1

    .line 175
    packed-switch p1, :pswitch_data_1e

    .line 189
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 177
    :pswitch_6
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->UP:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    move v0, v1

    .line 178
    goto :goto_5

    .line 180
    :pswitch_c
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->DOWN:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    move v0, v1

    .line 181
    goto :goto_5

    .line 183
    :pswitch_12
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    move v0, v1

    .line 184
    goto :goto_5

    .line 186
    :pswitch_18
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    move v0, v1

    .line 187
    goto :goto_5

    .line 175
    :pswitch_data_1e
    .packed-switch 0x13
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method

.method private onKeyUp(I)Z
    .registers 6
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    packed-switch p1, :pswitch_data_40

    move v0, v2

    .line 171
    :goto_6
    return v0

    .line 147
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->UP:Lcom/google/android/maps/MapController$VertPanState;

    if-ne v0, v1, :cond_13

    .line 148
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    move v0, v3

    .line 149
    goto :goto_6

    :cond_13
    move v0, v2

    .line 151
    goto :goto_6

    .line 153
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->DOWN:Lcom/google/android/maps/MapController$VertPanState;

    if-ne v0, v1, :cond_21

    .line 154
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    move v0, v3

    .line 155
    goto :goto_6

    :cond_21
    move v0, v2

    .line 157
    goto :goto_6

    .line 159
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    if-ne v0, v1, :cond_2f

    .line 160
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    move v0, v3

    .line 161
    goto :goto_6

    :cond_2f
    move v0, v2

    .line 163
    goto :goto_6

    .line 165
    :pswitch_31
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    if-ne v0, v1, :cond_3d

    .line 166
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    move v0, v3

    .line 167
    goto :goto_6

    :cond_3d
    move v0, v2

    .line 169
    goto :goto_6

    .line 145
    nop

    :pswitch_data_40
    .packed-switch 0x13
        :pswitch_7
        :pswitch_15
        :pswitch_23
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public animateTo(Lcom/google/android/maps/GeoPoint;)V
    .registers 3
    .parameter "point"

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    .line 204
    return-void
.end method

.method public animateTo(Lcom/google/android/maps/GeoPoint;Landroid/os/Message;)V
    .registers 4
    .parameter "point"
    .parameter "message"

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    .line 214
    return-void
.end method

.method public animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "point"
    .parameter "runnable"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    .line 226
    return-void
.end method

.method clean()V
    .registers 2

    .prologue
    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    .line 499
    return-void
.end method

.method getDeltas()[I
    .registers 6

    .prologue
    const/high16 v4, 0x4100

    const/4 v3, 0x0

    const/high16 v2, -0x3f00

    .line 96
    sget-object v0, Lcom/google/android/maps/MapController$1;->$SwitchMap$com$google$android$maps$MapController$HorizPanState:[I

    iget-object v1, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    invoke-virtual {v1}, Lcom/google/android/maps/MapController$HorizPanState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 106
    :goto_12
    sget-object v0, Lcom/google/android/maps/MapController$1;->$SwitchMap$com$google$android$maps$MapController$VertPanState:[I

    iget-object v1, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    invoke-virtual {v1}, Lcom/google/android/maps/MapController$VertPanState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    .line 116
    :goto_1f
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    float-to-int v2, v2

    aput v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    float-to-int v2, v2

    aput v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    return-object v0

    .line 98
    :pswitch_32
    iget v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/MapController;->curve(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    goto :goto_12

    .line 101
    :pswitch_3b
    iget v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    invoke-direct {p0, v0, v4}, Lcom/google/android/maps/MapController;->curve(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    goto :goto_12

    .line 104
    :pswitch_44
    iput v3, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    goto :goto_12

    .line 108
    :pswitch_47
    iget v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/MapController;->curve(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    goto :goto_1f

    .line 111
    :pswitch_50
    iget v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    invoke-direct {p0, v0, v4}, Lcom/google/android/maps/MapController;->curve(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    goto :goto_1f

    .line 114
    :pswitch_59
    iput v3, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    goto :goto_1f

    .line 96
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_32
        :pswitch_3b
        :pswitch_44
    .end packed-switch

    .line 106
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_47
        :pswitch_50
        :pswitch_59
    .end packed-switch
.end method

.method isDirty()Z
    .registers 2

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :pswitch_26
    invoke-direct {p0, p2}, Lcom/google/android/maps/MapController;->onKeyDown(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 129
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    move v0, v2

    .line 138
    :goto_30
    return v0

    :cond_31
    move v0, v1

    .line 132
    goto :goto_30

    .line 134
    :pswitch_33
    invoke-direct {p0, p2}, Lcom/google/android/maps/MapController;->onKeyUp(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 135
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    move v0, v2

    .line 136
    goto :goto_30

    :cond_3e
    move v0, v1

    .line 138
    goto :goto_30

    .line 126
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_26
        :pswitch_33
    .end packed-switch
.end method

.method onMeasure()V
    .registers 3

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    if-nez v0, :cond_12

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    .line 487
    iget v0, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    if-ltz v0, :cond_12

    .line 488
    iget v0, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    iget v1, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 491
    :cond_12
    return-void
.end method

.method repaint()V
    .registers 2

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    .line 338
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 339
    return-void
.end method

.method public scrollBy(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 303
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapController;->stopAnimation(Z)V

    .line 304
    iget-object v1, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    .line 306
    .local v0, newCenter:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 307
    return-void
.end method

.method scrollByTrackball(II)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 322
    iget-object v2, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_17

    .line 323
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 325
    .local v0, delta:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    .line 330
    .end local v0           #delta:J
    :goto_16
    return-void

    .line 329
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    goto :goto_16
.end method

.method public setCenter(Lcom/google/android/maps/GeoPoint;)V
    .registers 3
    .parameter "point"

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 346
    return-void
.end method

.method public setZoom(I)I
    .registers 4
    .parameter "zoomLevel"

    .prologue
    .line 394
    const/16 v0, 0x16

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 395
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapController;->zoomTo(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 396
    return p1
.end method

.method stepAnimation(J)Z
    .registers 13
    .parameter "drawTime"

    .prologue
    const/4 v4, 0x0

    const-wide v8, 0x412e848000000000L

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->getDeltas()[I

    move-result-object v1

    .line 263
    .local v1, panDeltas:[I
    aget v3, v1, v5

    if-nez v3, :cond_15

    aget v3, v1, v6

    if-eqz v3, :cond_1e

    .line 264
    :cond_15
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    move v3, v6

    .line 293
    :goto_1d
    return v3

    .line 268
    :cond_1e
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_7b

    .line 269
    sget-object v2, Lcom/google/android/maps/MapController;->EMPTY_TRANSFORM:Landroid/view/animation/Transformation;

    .line 270
    .local v2, xform:Landroid/view/animation/Transformation;
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 271
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 272
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    aput v4, v3, v5

    .line 273
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    aput v4, v3, v6

    .line 274
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 275
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget-object v3, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    aget v3, v3, v5

    float-to-double v3, v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    aget v4, v4, v6

    float-to-double v4, v4

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    .line 277
    .local v0, newCenter:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    move v3, v6

    .line 278
    goto :goto_1d

    .line 280
    .end local v0           #newCenter:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :cond_58
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct {p0, v3}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 281
    iput-object v7, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 282
    iput-object v7, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    .line 283
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    if-eqz v3, :cond_6c

    .line 284
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 285
    iput-object v7, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    .line 287
    :cond_6c
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_79

    .line 288
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v4, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->post(Ljava/lang/Runnable;)Z

    .line 289
    iput-object v7, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    :cond_79
    move v3, v5

    .line 291
    goto :goto_1d

    .end local v2           #xform:Landroid/view/animation/Transformation;
    :cond_7b
    move v3, v5

    .line 293
    goto :goto_1d
.end method

.method public stopAnimation(Z)V
    .registers 5
    .parameter "jumpToFinish"

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_14

    .line 366
    if-eqz p1, :cond_10

    .line 367
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    monitor-enter v0

    .line 368
    :try_start_a
    iget-object v1, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct {p0, v1}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 369
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_17

    .line 371
    :cond_10
    iput-object v2, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    .line 372
    iput-object v2, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 374
    :cond_14
    iput-object v2, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    .line 375
    return-void

    .line 369
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public stopPanning()V
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    .line 87
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    .line 88
    return-void
.end method

.method public zoomIn()Z
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .registers 5
    .parameter "xPixel"
    .parameter "yPixel"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .registers 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .registers 5
    .parameter "xPixel"
    .parameter "yPixel"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    move-result v0

    return v0
.end method

.method zoomTo(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .registers 3
    .parameter "zoom"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    .line 380
    return-void
.end method

.method public zoomToSpan(II)V
    .registers 4
    .parameter "latSpanE6"
    .parameter "lonSpanE6"

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    if-eqz v0, :cond_d

    .line 410
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->zoomToSpan(II)V

    .line 411
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    .line 416
    :goto_c
    return-void

    .line 413
    :cond_d
    iput p1, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    .line 414
    iput p2, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    goto :goto_c
.end method
