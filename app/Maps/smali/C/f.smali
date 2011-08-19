.class public LC/f;
.super LC/g;


# instance fields
.field public final a:Landroid/location/Location;


# direct methods
.method public constructor <init>(JLandroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LC/g;-><init>(J)V

    iput-object p3, p0, LC/f;->a:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Writer;)V
    .locals 5

    const-string v0, "<%s %s=\'%s\' %s=\'%s\' %s=\'%s\' %s=\'%s\' %s=\'%s\' %s=\'%s\' />\n"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "location-scan"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, LC/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "provider"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, LC/f;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "latitude"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, LC/f;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "longitude"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, LC/f;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "accuracy"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, LC/f;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "speed"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p0, LC/f;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
