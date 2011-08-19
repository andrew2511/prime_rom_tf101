.class public Lcom/google/android/maps/driveabout/app/bm;
.super Ljava/lang/Object;


# static fields
.field private static final a:F


# instance fields
.field private final b:F

.field private c:J

.field private d:Landroid/location/Location;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3ed18d26

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/app/bm;->a:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, -0x42a988b0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bm;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bm;->e:I

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bm;->b:F

    return-void
.end method


# virtual methods
.method a(FFJ)I
    .locals 11

    const-wide v4, 0xdc6d62da00L

    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/4 v8, 0x1

    const v7, 0x40c90fdb

    float-to-double v0, p1

    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    const v0, -0x3f36f025

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v7

    if-gtz v0, :cond_0

    cmp-long v0, p3, v4

    if-gez v0, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    return v0

    :cond_1
    sub-long v0, p3, v4

    long-to-float v0, v0

    const v1, 0x4ca4cb80

    div-float/2addr v0, v1

    const v1, 0x40c7ae92

    mul-float v2, v0, v7

    const v3, 0x43b6a0d1

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3d08e2fe

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    const v3, 0x39b702d8

    mul-float v4, v9, v1

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const v3, 0x36afb0e6

    const/high16 v4, 0x4040

    mul-float/2addr v4, v1

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const v3, 0x3fe5f6fd

    add-float/2addr v2, v3

    const v3, 0x40490fdb

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    sget v4, Lcom/google/android/maps/driveabout/app/bm;->a:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bm;->b:F

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    mul-float/2addr v3, v5

    div-float v3, v4, v3

    const/high16 v4, 0x3f80

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    move v0, v10

    goto :goto_0

    :cond_2
    const/high16 v4, -0x4080

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3

    move v0, v8

    goto :goto_0

    :cond_3
    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v3, v3

    neg-float v4, p2

    div-float/2addr v4, v7

    const v5, 0x3a6bedfa

    add-float/2addr v4, v5

    const v5, 0x3badab9f

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    const v4, -0x441de69b

    mul-float/2addr v2, v9

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    neg-float v1, v3

    div-float/2addr v1, v7

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    div-float v1, v3, v7

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    move v0, v8

    goto/16 :goto_0

    :cond_4
    move v0, v10

    goto/16 :goto_0
.end method

.method public a(Landroid/location/Location;)I
    .locals 10

    const/high16 v9, 0x43b4

    const v8, 0x40c90fdb

    const-wide v6, 0x3fb999999999999aL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/bm;->c:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bm;->d:Landroid/location/Location;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bm;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bm;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bm;->e:I

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bm;->d:Landroid/location/Location;

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bm;->c:J

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v9

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v8

    div-float/2addr v3, v9

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/maps/driveabout/app/bm;->a(FFJ)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bm;->e:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bm;->e:I

    goto :goto_0
.end method
