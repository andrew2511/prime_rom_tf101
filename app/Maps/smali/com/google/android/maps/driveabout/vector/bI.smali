.class public Lcom/google/android/maps/driveabout/vector/bI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cm;


# instance fields
.field private final a:LG/Q;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F


# direct methods
.method public constructor <init>(LG/Q;FFFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG/Q;

    invoke-virtual {p1}, LG/Q;->f()I

    move-result v1

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    const/high16 v0, 0x41a8

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    return-void
.end method

.method public static a(F)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    const-wide v2, 0x3ff7154760000000L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4200

    goto :goto_0
.end method

.method private static a(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static a(FFFF)F
    .locals 8

    const v0, 0x40490fdb

    mul-float/2addr v0, p2

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/bI;->b(F)F

    move-result v1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(F)F

    move-result v2

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p2

    mul-float/2addr v1, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    const-wide/high16 v2, 0x3fe0

    float-to-double v4, v0

    const-wide v6, 0x3ff3333333333333L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p3

    const-wide v6, 0x3fd999999999999aL

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x4320

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a(F)F

    move-result v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bI;FF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 10

    const/high16 v6, 0x4334

    const/high16 v4, 0x3f80

    const/high16 v8, 0x43b4

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v0, v1, p2}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    invoke-static {v1, v2, p2}, Lcom/google/android/maps/driveabout/vector/bI;->a(FFF)F

    move-result v1

    move v2, v1

    move-object v1, v0

    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    invoke-static {v0, v3, p2}, Lcom/google/android/maps/driveabout/vector/bI;->a(FFF)F

    move-result v3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    iget v4, p1, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    cmpl-float v5, v0, v4

    if-lez v5, :cond_1

    sub-float v5, v0, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    sub-float/2addr v0, v8

    move v9, v4

    move v4, v0

    move v0, v9

    :goto_1
    invoke-static {v4, v0, p2}, Lcom/google/android/maps/driveabout/vector/bI;->a(FFF)F

    move-result v0

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    add-float/2addr v0, v8

    move v4, v0

    :goto_2
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    iget v5, p1, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    invoke-static {v0, v5, p2}, Lcom/google/android/maps/driveabout/vector/bI;->a(FFF)F

    move-result v5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    const v2, 0x40490fdb

    sub-float v3, p2, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    add-float/2addr v2, v4

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    invoke-static {v1, v2, p2, p3}, Lcom/google/android/maps/driveabout/vector/bI;->a(FFFF)F

    move-result v1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    sub-float v5, v4, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    sub-float/2addr v4, v8

    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_1

    :cond_2
    move v4, v0

    goto :goto_2

    :cond_3
    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_1
.end method

.method public static b(F)F
    .locals 6

    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, 0x4010

    float-to-double v4, p0

    sub-double/2addr v2, v4

    const-wide v4, 0x3ff7154760000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method static b(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    const-string v1, "vector.lat"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "vector.lng"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, LG/Q;->b(II)LG/Q;

    move-result-object v1

    const-string v2, "vector.zoom"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "vector.viewing_angle"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    const-string v4, "vector.bearing"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "vector.lookahead"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    const/high16 v3, 0x4000

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x2000

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    new-instance v1, LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, LG/Q;-><init>(II)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, -0x2000

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    new-instance v1, LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, LG/Q;-><init>(II)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "vector.lat"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vector.lng"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vector.viewing_angle"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "vector.bearing"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "vector.zoom"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "vector.lookahead"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/bI;
    .locals 0

    return-object p0
.end method

.method public c()LG/Q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-static {v0}, LG/Q;->a(LG/Q;)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x25

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:LG/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewingAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bearing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lookAhead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
