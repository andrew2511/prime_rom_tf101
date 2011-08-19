.class public abstract Lcom/layar/data/BasePOI;
.super Ljava/lang/Object;
.source "BasePOI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/BasePOI$POIObject;,
        Lcom/layar/data/BasePOI$PoiComparator;
    }
.end annotation


# static fields
.field public static final MIDDLE_SCOPE:I = 0x28

.field public static final OUTER_SCOPE:I = 0x46


# instance fields
.field public actions:[Lcom/layar/data/PoiAction;

.field public altitude:F

.field public animations:Lcom/layar/core/animation/AnimationsContainer;

.field public bearing:F

.field public dimension:I

.field public geodistance:I

.field public hasAltitude:Z

.field public hasRelativeAlt:Z

.field public id:Ljava/lang/String;

.field public inFocus:Z

.field public latitude:D

.field public longitude:D

.field public object:Lcom/layar/data/BasePOI$POIObject;

.field outValues:[F

.field public poiType:I

.field public relativeAlt:F

.field public showBiwOnClick:Z

.field public showSmallBiw:Z

.field public title:Ljava/lang/String;

.field public transform:Lcom/layar/data/Transform;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Lcom/layar/data/BasePOI;->dimension:I

    .line 37
    iput-boolean v1, p0, Lcom/layar/data/BasePOI;->hasAltitude:Z

    .line 39
    iput-boolean v1, p0, Lcom/layar/data/BasePOI;->hasRelativeAlt:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    .line 42
    iput-boolean v1, p0, Lcom/layar/data/BasePOI;->inFocus:Z

    .line 48
    iput-boolean v2, p0, Lcom/layar/data/BasePOI;->showSmallBiw:Z

    .line 49
    iput-boolean v2, p0, Lcom/layar/data/BasePOI;->showBiwOnClick:Z

    .line 51
    new-instance v0, Lcom/layar/core/animation/AnimationsContainer;

    invoke-direct {v0}, Lcom/layar/core/animation/AnimationsContainer;-><init>()V

    iput-object v0, p0, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/layar/data/BasePOI;->outValues:[F

    .line 9
    return-void
.end method


# virtual methods
.method public calcutePosition(Landroid/location/Location;)V
    .locals 10
    .parameter "curLoc"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/layar/data/BasePOI;->latitude:D

    iget-wide v6, p0, Lcom/layar/data/BasePOI;->longitude:D

    iget-object v8, p0, Lcom/layar/data/BasePOI;->outValues:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 75
    iget-object v0, p0, Lcom/layar/data/BasePOI;->outValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/layar/data/BasePOI;->geodistance:I

    .line 76
    iget-object v0, p0, Lcom/layar/data/BasePOI;->outValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/layar/data/BasePOI;->bearing:F

    .line 78
    iget v0, p0, Lcom/layar/data/BasePOI;->bearing:F

    float-to-double v0, v0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    double-to-float v9, v0

    .line 79
    .local v9, angle:F
    iget v0, p0, Lcom/layar/data/BasePOI;->geodistance:I

    int-to-float v0, v0

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/layar/data/BasePOI;->y:F

    .line 80
    iget v0, p0, Lcom/layar/data/BasePOI;->geodistance:I

    int-to-float v0, v0

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/layar/data/BasePOI;->x:F

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 60
    .end local p1
    :goto_0
    return v0

    .line 58
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/layar/data/POI;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/layar/data/BasePOI;->id:Ljava/lang/String;

    check-cast p1, Lcom/layar/data/POI;

    .end local p1
    iget-object v1, p1, Lcom/layar/data/POI;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 60
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayPart(I)I
    .locals 2
    .parameter "scope"

    .prologue
    .line 84
    iget v0, p0, Lcom/layar/data/BasePOI;->geodistance:I

    .line 85
    .local v0, distance:I
    if-le v0, p1, :cond_0

    .line 86
    const/4 v1, -0x1

    .line 91
    :goto_0
    return v1

    .line 87
    :cond_0
    mul-int/lit8 v1, p1, 0x46

    div-int/lit8 v1, v1, 0x64

    if-lt v0, v1, :cond_1

    .line 88
    const/4 v1, 0x2

    goto :goto_0

    .line 89
    :cond_1
    mul-int/lit8 v1, p1, 0x28

    div-int/lit8 v1, v1, 0x64

    if-lt v0, v1, :cond_2

    .line 90
    const/4 v1, 0x1

    goto :goto_0

    .line 91
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getIconType()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/layar/data/BasePOI;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
