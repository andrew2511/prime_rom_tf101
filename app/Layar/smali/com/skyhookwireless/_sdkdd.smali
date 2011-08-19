.class public Lcom/skyhookwireless/_sdkdd;
.super Ljava/lang/Object;


# static fields
.field public static final DEGREE_TO_RADIAN:D = 0.017453292519943278

.field public static final PI:D = 3.14159265358979

.field public static final RADIAN_TO_DEGREE:D = 57.29577951308238


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _sdka(DDDD)D
    .locals 7

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    const-wide v1, 0x3f91df46a2529d34L

    mul-double/2addr p0, v1

    const-wide v1, 0x3f91df46a2529d34L

    mul-double/2addr p2, v1

    const-wide v1, 0x3f91df46a2529d34L

    mul-double/2addr p4, v1

    const-wide v1, 0x3f91df46a2529d34L

    mul-double/2addr p6, v1

    const-wide v1, 0x41584f7000000000L

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double/2addr p0, p4

    sub-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    add-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    mul-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 p0, 0x0

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    if-eqz v0, :cond_0

    sget p2, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    goto :goto_0
.end method

.method public static _sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)D
    .locals 8

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/skyhookwireless/_sdkdd;->_sdka(DDDD)D

    move-result-wide v0

    return-wide v0
.end method
