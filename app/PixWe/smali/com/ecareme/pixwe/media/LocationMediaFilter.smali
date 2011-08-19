.class public Lcom/ecareme/pixwe/media/LocationMediaFilter;
.super Lcom/ecareme/pixwe/media/MediaFilter;
.source "LocationMediaFilter.java"


# static fields
.field public static final EARTH_RADIUS_METERS:I = 0x615299

.field public static final LAT_MAX:I = 0x5a

.field public static final LAT_MIN:I = -0x5a

.field public static final LON_MAX:I = 0xb4

.field public static final LON_MIN:I = -0xb4


# instance fields
.field private mCenterLat:D

.field private mCenterLon:D

.field private mRadius:D


# direct methods
.method constructor <init>(DDD)V
    .locals 0
    .parameter "centerLatitude"
    .parameter "centerLongitude"
    .parameter "thresholdRadius"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaFilter;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mCenterLat:D

    .line 31
    iput-wide p3, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mCenterLon:D

    .line 32
    iput-wide p5, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mRadius:D

    .line 33
    return-void
.end method

.method constructor <init>(DDDD)V
    .locals 2
    .parameter "latitude1"
    .parameter "longitude1"
    .parameter "latitude2"
    .parameter "longitude2"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaFilter;-><init>()V

    .line 36
    invoke-static {p1, p2, p5, p6}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->centerLat(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mCenterLat:D

    .line 37
    invoke-static {p3, p4, p7, p8}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->centerLon(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mCenterLon:D

    .line 38
    invoke-static/range {p1 .. p8}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mRadius:D

    .line 39
    return-void
.end method

.method public static final centerLat(DD)D
    .locals 2
    .parameter "lat1"
    .parameter "lat2"

    .prologue
    .line 42
    const/16 v0, 0x5a

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->centerOfAngles(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final centerLon(DD)D
    .locals 2
    .parameter "lon1"
    .parameter "lon2"

    .prologue
    .line 46
    const/16 v0, 0xb4

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->centerOfAngles(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final centerOfAngles(DDI)D
    .locals 7
    .parameter "ang1"
    .parameter "ang2"
    .parameter "wrapAroundThreshold"

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, wrapAround:Z
    sub-double v3, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    int-to-double v5, p4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 52
    const/4 v2, 0x1

    .line 54
    :cond_0
    add-double v3, p0, p2

    const-wide/high16 v5, 0x3fe0

    mul-double v0, v3, v5

    .line 55
    .local v0, center:D
    if-eqz v2, :cond_1

    .line 56
    int-to-double v3, p4

    add-double/2addr v0, v3

    .line 57
    int-to-double v3, p4

    rem-double/2addr v0, v3

    .line 59
    :cond_1
    return-wide v0
.end method

.method public static distanceBetween(DDDD)D
    .locals 4
    .parameter "lat1"
    .parameter "lon1"
    .parameter "lat2"
    .parameter "lon2"

    .prologue
    .line 63
    sub-double v0, p4, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 64
    .local v0, dLat:D
    sub-double p2, p6, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    .end local p2
    move-result-wide p2

    .line 65
    .local p2, dLon:D
    const-wide/high16 p6, 0x4000

    div-double p6, v0, p6

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    .end local p6
    move-result-wide p6

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .end local v0           #dLat:D
    move-result-wide v0

    mul-double/2addr p6, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .end local p0
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    .end local p4
    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double/2addr p0, p4

    .line 66
    const-wide/high16 p4, 0x4000

    div-double p4, p2, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double/2addr p0, p4

    const-wide/high16 p4, 0x4000

    div-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .end local p2           #dLon:D
    move-result-wide p2

    mul-double/2addr p0, p2

    .line 65
    add-double/2addr p0, p6

    .line 67
    .local p0, a:D
    const-wide/high16 p2, 0x4000

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    const-wide/high16 p6, 0x3ff0

    sub-double p0, p6, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .end local p0           #a:D
    move-result-wide p0

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double/2addr p0, p2

    .line 68
    .local p0, c:D
    const-wide p2, 0x415854a640000000L

    mul-double/2addr p0, p2

    .end local p0           #c:D
    return-wide p0
.end method

.method public static final toKm(D)D
    .locals 2
    .parameter "meter"

    .prologue
    .line 72
    const-wide v0, 0x408f400000000000L

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static final toMile(D)D
    .locals 2
    .parameter "meter"

    .prologue
    .line 76
    const-wide v0, 0x4099240000000000L

    div-double v0, p0, v0

    return-wide v0
.end method


# virtual methods
.method public pass(Lcom/ecareme/pixwe/media/MediaItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mCenterLat:D

    iget-wide v2, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mCenterLon:D

    iget-wide v4, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    iget-wide v6, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    invoke-static/range {v0 .. v7}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v8

    .line 82
    .local v8, radius:D
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/LocationMediaFilter;->mRadius:D

    cmpg-double v0, v8, v0

    if-gtz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
