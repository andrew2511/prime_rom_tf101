.class public Lcom/google/android/maps/driveabout/app/aH;
.super Lcom/google/android/maps/driveabout/vector/bD;


# instance fields
.field private a:I

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:Lcom/google/android/maps/driveabout/app/dv;

.field private h:Ljava/util/HashMap;

.field private i:Lcom/google/android/maps/driveabout/app/ck;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bD;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aH;->j()V

    iput v3, p0, Lcom/google/android/maps/driveabout/app/aH;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v1, v3, v2, v2}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/dv;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    const/high16 v0, 0x3fc0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aH;->d(F)V

    return-void
.end method

.method private a(LG/S;)LG/S;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/lit8 v3, v2, 0x3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    mul-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p1}, LG/S;->g()I

    move-result v6

    div-int v4, v6, v4

    invoke-virtual {p1}, LG/S;->h()I

    move-result v6

    div-int v5, v6, v5

    if-le v4, v5, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move v5, v2

    move v3, v7

    move v2, v7

    :goto_0
    add-int/2addr v2, v0

    add-int/2addr v3, v0

    add-int v4, v1, v0

    add-int/2addr v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/S;IIII)LG/S;

    move-result-object v0

    return-object v0

    :cond_0
    move v5, v7

    goto :goto_0
.end method

.method private a(LG/S;FFFF)LG/S;
    .locals 6

    invoke-virtual {p1}, LG/S;->g()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, LG/S;->g()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    sub-float/2addr v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {p1}, LG/S;->h()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    int-to-float v3, v3

    sub-float/2addr v3, p4

    sub-float/2addr v3, p5

    div-float/2addr v2, v3

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {p1}, LG/S;->h()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    int-to-float v4, v4

    sub-float/2addr v4, p4

    sub-float/2addr v4, p5

    div-float/2addr v3, v4

    mul-float/2addr v3, p5

    float-to-int v3, v3

    invoke-virtual {p1}, LG/S;->d()LG/Q;

    move-result-object v4

    new-instance v5, LG/Q;

    invoke-direct {v5, v0, v3}, LG/Q;-><init>(II)V

    invoke-virtual {v4, v5}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v0

    invoke-virtual {p1}, LG/S;->e()LG/Q;

    move-result-object v3

    new-instance v4, LG/Q;

    invoke-direct {v4, v1, v2}, LG/Q;-><init>(II)V

    invoke-virtual {v3, v4}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v1

    new-instance v2, LG/S;

    invoke-direct {v2, v0, v1}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v2
.end method

.method private a(LG/S;IIII)LG/S;
    .locals 6

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/S;FFFF)LG/S;

    move-result-object v0

    return-object v0
.end method

.method private a(LG/S;LG/y;)LG/S;
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LG/y;->a()I

    move-result v0

    invoke-virtual {p2}, LG/y;->b()I

    move-result v1

    invoke-static {v0, v1}, LG/Q;->b(II)LG/Q;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/S;LG/Q;IIII)LG/S;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a(LG/S;Landroid/location/Location;)LG/S;
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(DD)LG/Q;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(DD)LG/Q;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, LG/Q;->a(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v0, v1}, LG/S;->a(LG/Q;I)LG/S;

    move-result-object v0

    invoke-virtual {p1, v0}, LG/S;->a(LG/S;)LG/S;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/app/bX;LG/S;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v0

    invoke-virtual {v0}, LF/u;->e()LG/y;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/S;LG/y;)LG/S;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/S;Landroid/location/Location;)LG/S;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/S;)LG/S;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    const/16 v5, 0x320

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/S;IIFI)V

    return-void

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private j()V
    .locals 14

    const/high16 v8, 0x4186

    const/high16 v13, 0x4282

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v10, v10}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/aP;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/aP;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v10, v12}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/aP;

    const/high16 v3, 0x4178

    invoke-direct {v2, v8, v8, v3, v11}, Lcom/google/android/maps/driveabout/app/aP;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v11, v10}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/aP;

    const/high16 v3, 0x418c

    const/high16 v4, 0x4182

    invoke-direct {v2, v8, v3, v4, v11}, Lcom/google/android/maps/driveabout/app/aP;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v11, v12}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/aP;

    const/high16 v3, 0x4188

    const/high16 v4, 0x4192

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/aP;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v1, v12, v10, v10}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/aP;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/aP;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v1, v12, v10, v12}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/aP;

    const/high16 v3, 0x4178

    invoke-direct {v2, v8, v8, v3, v10}, Lcom/google/android/maps/driveabout/app/aP;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v1, v12, v11, v10}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/aP;

    const/high16 v3, 0x418c

    const/high16 v4, 0x4182

    invoke-direct {v2, v8, v3, v4, v10}, Lcom/google/android/maps/driveabout/app/aP;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v1, v12, v11, v12}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/aP;

    const/high16 v3, 0x4188

    const/high16 v4, 0x4192

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/aP;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lt/n;

    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lt/n;-><init>(Lt/y;)V

    move-object v5, v0

    :goto_0
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v7, v11, v10, v10}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/co;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cR;

    invoke-direct {v1, v8, v13}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v3, 0x418e

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v13}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/co;-><init>(Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lt/n;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v7, v11, v11, v10}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/co;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v2, 0x4188

    invoke-direct {v1, v2, v13}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v3, 0x4192

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v13}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/co;-><init>(Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lt/n;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v7, v11, v10, v12}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/aL;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v2, 0x4192

    invoke-direct {v1, v2, v13}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v3, 0x4192

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v13}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v8, 0x41a0

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lt/n;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v7, v11, v11, v12}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/aL;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v2, 0x4194

    invoke-direct {v1, v2, v13}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v3, 0x4194

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v13}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v8, 0x41a0

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lt/n;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    move-object v5, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(F)F
    .locals 1

    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/aH;->b(FI)F

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->i:Lcom/google/android/maps/driveabout/app/ck;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->i:Lcom/google/android/maps/driveabout/app/ck;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ck;->a()I

    move-result v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bF;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method a(LG/S;LG/Q;IIII)LG/S;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, LG/S;->d()LG/Q;

    move-result-object v0

    invoke-virtual {p2, v0}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, LG/S;->g()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, LG/Q;->g()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, LG/S;->h()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    int-to-float v2, p5

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    int-to-float v2, p5

    sub-float/2addr v2, v1

    :goto_0
    iget v3, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    sub-int v4, p3, p5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    int-to-float v3, p3

    int-to-float v4, p5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    int-to-float v4, v4

    sub-float v1, v4, v1

    sub-float v1, v3, v1

    move v3, v1

    :goto_1
    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    int-to-float v4, p6

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    int-to-float v1, p6

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v1, v4

    move v4, v1

    :goto_2
    sub-int v1, p4, p6

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    int-to-float v1, p4

    int-to-float v5, p6

    sub-float/2addr v1, v5

    sub-float v0, v1, v0

    move v5, v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/S;FFFF)LG/S;

    move-result-object v0

    return-object v0

    :cond_1
    move v4, v5

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_0
.end method

.method public a()Lcom/google/android/maps/driveabout/vector/bI;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aH;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->a:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMapWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->c:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMapHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->d:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nScreenDensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->e:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->e:I

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBottomMargin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->f:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->f:I

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCameraType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/aH;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCameraPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aH;->e:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dv;->a(I)V

    return-void
.end method

.method public a(IIF)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iput p3, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    return-void
.end method

.method public a(III)V
    .locals 4

    const/4 v3, 0x2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aH;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/u;

    if-ne p2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v1, p1, v2, p3}, Lcom/google/android/maps/driveabout/app/u;-><init>(IZI)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/dv;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    if-ne p3, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->e:I

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/dv;->a(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dv;->b(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method

.method public a(LF/y;ZZ)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    invoke-virtual {v1, v0, p1, p3}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;LF/y;Z)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    if-eqz p2, :cond_2

    const/16 v1, 0x320

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Landroid/location/Location;)V
    .locals 6

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    goto :goto_0
.end method

.method public a(Landroid/location/Location;LG/o;)V
    .locals 7

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v6, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;LG/o;IIF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 1

    const/16 v0, 0x320

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/bX;I)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bX;FZ)V
    .locals 11

    const/16 v10, 0x1f4

    const/high16 v9, 0x4170

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->i:Lcom/google/android/maps/driveabout/app/ck;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ck;->c()Lcom/google/android/maps/driveabout/vector/av;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v4

    iget v6, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v7, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v8, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;Lcom/google/android/maps/driveabout/vector/av;LF/y;FIIF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->f:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/high16 v1, -0x4080

    cmpl-float v1, p2, v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Laa/E;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_5

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v8

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    move-object v4, v3

    :goto_1
    invoke-virtual {v2}, Laa/E;->getAccuracy()F

    move-result v0

    const v1, 0x3f8ccccd

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Laa/E;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, LG/Q;->a(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float v5, v0, v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    iget v6, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v7, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v8, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;FIIF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    move-object v1, v0

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v2}, Laa/E;->i()LF/i;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, LF/i;->d()D

    move-result-wide v2

    double-to-float v0, v2

    :cond_2
    const/high16 v2, 0x3fc0

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;FIIF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    :cond_3
    if-eqz p3, :cond_4

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->f:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    new-instance v1, Lcom/google/android/maps/driveabout/app/eD;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->i:Lcom/google/android/maps/driveabout/app/ck;

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/maps/driveabout/app/eD;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/app/ck;Lcom/google/android/maps/driveabout/app/bX;)V

    invoke-virtual {p0, v1, v10}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lcom/google/android/maps/driveabout/app/cQ;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->i:Lcom/google/android/maps/driveabout/app/ck;

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/cQ;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/app/ck;)V

    invoke-virtual {p0, v1, v10}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    goto/16 :goto_0

    :cond_5
    move-object v4, v0

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bX;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v2

    invoke-virtual {v2}, Laa/E;->getBearing()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;F)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Lcom/google/android/maps/driveabout/app/dv;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;F)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aH;->i:Lcom/google/android/maps/driveabout/app/ck;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/cA;->au_()LG/Q;

    move-result-object v0

    const/16 v1, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(LG/Q;I)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cm;)V
    .locals 1

    const/16 v0, 0x320

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    return-void
.end method

.method public b()LG/F;
    .locals 5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->u()LG/F;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 5

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, LF/M;->m()LG/m;

    move-result-object v1

    invoke-virtual {v1}, LG/m;->a()LG/S;

    move-result-object v1

    const/4 v2, 0x1

    move v4, v2

    move-object v2, v1

    move v1, v4

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, LF/M;->m()LG/m;

    move-result-object v3

    invoke-virtual {v3}, LG/m;->a()LG/S;

    move-result-object v3

    invoke-virtual {v2, v3}, LG/S;->a(LG/S;)LG/S;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/bX;LG/S;)V

    goto :goto_0
.end method

.method public c()LG/Q;
    .locals 5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aH;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, -0x4080

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bX;->a(F)LG/o;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LG/o;->f()LG/S;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/bX;LG/S;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->m()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->a()LG/S;

    move-result-object v0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/aH;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/aH;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aH;->f:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:I

    add-int/2addr v0, v1

    return v0
.end method
