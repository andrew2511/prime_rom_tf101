.class public final Lcom/google/android/street/MapPoint;
.super Ljava/lang/Object;
.source "MapPoint.java"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final hashCode:I

.field private final lat:D

.field private final lng:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/street/MapPoint;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/google/android/street/MapPoint;->lat:D

    .line 27
    iput-wide p3, p0, Lcom/google/android/street/MapPoint;->lng:D

    .line 29
    const-wide/16 v2, 0x11

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 30
    .local v0, temp:J
    const-wide/16 v2, 0x25

    mul-long/2addr v2, v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 31
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/street/MapPoint;->hashCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .parameter "latE6"
    .parameter "lngE6"

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    .line 36
    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/street/MapPoint;-><init>(DD)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter "mapPointProto"

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/MapPoint;-><init>(II)V

    .line 44
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/street/MapPoint;
    .locals 8
    .parameter "latLngString"

    .prologue
    const/4 v7, 0x0

    .line 123
    :try_start_0
    sget-object v2, Lcom/google/android/street/MapPoint;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, parts:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MapPoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    move-object v2, v7

    .line 132
    .end local v1           #parts:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 128
    .restart local v1       #parts:[Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/google/android/street/MapPoint;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/street/MapPoint;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v1           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 131
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MapPoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    move-object v2, v7

    .line 132
    goto :goto_0
.end method


# virtual methods
.method public angleTo(Lcom/google/android/street/MapPoint;)F
    .locals 9
    .parameter "other"

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/google/android/street/MapPoint;->getLat()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/street/MapPoint;->getLat()D

    move-result-wide v7

    sub-double v1, v5, v7

    .line 69
    .local v1, deltaLat:D
    invoke-virtual {p1}, Lcom/google/android/street/MapPoint;->getLng()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/street/MapPoint;->getLng()D

    move-result-wide v7

    sub-double v3, v5, v7

    .line 70
    .local v3, deltaLng:D
    invoke-virtual {p0}, Lcom/google/android/street/MapPoint;->getLat()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 73
    .local v0, degrees:F
    invoke-static {v0}, Lcom/google/android/street/StreetMath;->normalizeDegrees(F)F

    move-result v5

    return v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 98
    :goto_0
    return v2

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v6

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/street/MapPoint;

    move-object v1, v0

    .line 98
    .local v1, other:Lcom/google/android/street/MapPoint;
    iget-wide v2, p0, Lcom/google/android/street/MapPoint;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/street/MapPoint;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/street/MapPoint;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/street/MapPoint;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v2, v7

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/android/street/MapPoint;->lat:D

    return-wide v0
.end method

.method public getLatE6()I
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/street/MapPoint;->lat:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/android/street/MapPoint;->lng:D

    return-wide v0
.end method

.method public getLngE6()I
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/android/street/MapPoint;->lng:D

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/street/MapPoint;->hashCode:I

    return v0
.end method

.method public toMapPointProto()Lcom/google/mobile/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/google/mobile/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->MAP_POINT_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBufType;)V

    .line 79
    .local v0, mapPoint:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/street/MapPoint;->getLatE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 80
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/street/MapPoint;->getLngE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 81
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    new-instance v0, Ljava/util/Formatter;

    const/4 v1, 0x0

    check-cast v1, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 113
    .local v0, f:Ljava/util/Formatter;
    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/street/MapPoint;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/street/MapPoint;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
