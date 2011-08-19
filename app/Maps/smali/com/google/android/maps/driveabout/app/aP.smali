.class public Lcom/google/android/maps/driveabout/app/aP;
.super Lcom/google/android/maps/driveabout/app/dv;


# static fields
.field private static final b:F


# instance fields
.field private final a:[F

.field private final c:Z

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/aP;->b:F

    return-void
.end method

.method public constructor <init>(FFFZ)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dv;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aP;->a:[F

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aP;->d:F

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/app/aP;->c:Z

    return-void
.end method

.method private a(LG/Q;LG/Q;IF)F
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1, p2}, LG/Q;->c(LG/Q;)F

    move-result v0

    const/high16 v1, 0x4380

    mul-float/2addr v0, v1

    mul-float/2addr v0, p4

    int-to-float v1, p3

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x41f0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v0, v2

    sget v2, Lcom/google/android/maps/driveabout/app/aP;->b:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    const v1, 0x3e4ccccd

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aP;->a:[F

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aP;->a:[F

    aget v2, v2, v1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aP;->a:[F

    aget v0, v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aP;->a:[F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aP;->a:[F

    array-length v1, v1

    sub-int/2addr v1, v4

    aget v0, v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/location/Location;)F
    .locals 4

    const/high16 v3, 0x4168

    const/high16 v2, 0x4138

    instance-of v0, p0, Laa/E;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p0, Laa/E;

    invoke-virtual {p0}, Laa/E;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laa/E;->g()LG/i;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Laa/E;->g()LG/i;

    move-result-object v0

    invoke-virtual {v0}, LG/i;->e()I

    move-result v0

    const/16 v1, 0x30

    if-gt v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/16 v1, 0x50

    if-gt v0, v1, :cond_4

    const/high16 v0, 0x4148

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bI;F)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aP;->c:Z

    if-eqz v0, :cond_2

    move v4, p2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;LF/y;Z)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, LF/y;->a()LG/Q;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aP;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, LF/y;->g()F

    move-result v0

    move v4, v0

    :goto_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/high16 v2, 0x4182

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0

    :cond_0
    move v4, v3

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, LG/Q;->a(DD)LG/Q;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-static {p2}, Lcom/google/android/maps/driveabout/app/aP;->a(Landroid/location/Location;)F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;LG/o;IIF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 9

    const/high16 v8, 0x4380

    const/4 v3, 0x0

    if-nez p3, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, LG/o;->f()LG/S;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [LG/Q;

    const/4 v2, 0x0

    invoke-virtual {v0}, LG/S;->d()LG/Q;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, LG/S;->e()LG/Q;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, LG/Q;->a(DD)LG/Q;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, LG/S;->a([LG/Q;)LG/S;

    move-result-object v1

    invoke-virtual {v1}, LG/S;->g()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    mul-float/2addr v0, p6

    int-to-float v2, p4

    div-float/2addr v0, v2

    invoke-virtual {v1}, LG/S;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    mul-float/2addr v2, p6

    int-to-float v4, p5

    div-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v2, 0x3f4ccccd

    div-float/2addr v0, v2

    const/high16 v2, 0x41f0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v0, v4

    sget v4, Lcom/google/android/maps/driveabout/app/aP;->b:F

    mul-float/2addr v0, v4

    sub-float v0, v2, v0

    const v2, 0x3e4ccccd

    sub-float/2addr v0, v2

    const/high16 v2, 0x4100

    const/high16 v4, 0x4170

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, LG/S;->f()LG/Q;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;Lcom/google/android/maps/driveabout/vector/av;LF/y;FIIF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    const/4 v3, 0x0

    cmpl-float v0, p5, v3

    if-ltz v0, :cond_0

    move v2, p5

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aP;->c:Z

    if-eqz v0, :cond_2

    iget v0, p3, Lcom/google/android/maps/driveabout/vector/av;->b:F

    move v4, v0

    :goto_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p3, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aP;->j:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p7, v0

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p3, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    invoke-virtual {p4}, LF/y;->a()LG/Q;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, p8}, Lcom/google/android/maps/driveabout/app/aP;->a(LG/Q;LG/Q;IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aP;->d:F

    move v2, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aP;->d:F

    move v2, v0

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1
.end method
