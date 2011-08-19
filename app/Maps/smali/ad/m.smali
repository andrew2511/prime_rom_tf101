.class public Lad/m;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf/h;)LG/Q;
    .locals 2

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v1

    invoke-static {v0, v1}, LG/Q;->b(II)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public static a(LG/Q;)LG/y;
    .locals 3

    new-instance v0, LG/y;

    invoke-virtual {p0}, LG/Q;->a()I

    move-result v1

    invoke-virtual {p0}, LG/Q;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, LG/y;-><init>(II)V

    return-object v0
.end method

.method public static a(Law/e;)LG/y;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v3}, Law/e;->d(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {v0, v4}, Law/e;->d(I)I

    move-result v0

    new-instance v2, LG/y;

    invoke-direct {v2, v1, v0}, LG/y;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {v0, v4}, Law/e;->d(I)I

    move-result v0

    new-instance v2, LG/y;

    invoke-direct {v2, v1, v0}, LG/y;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lad/m;->b(Law/e;)LG/Q;

    move-result-object v0

    invoke-static {v0}, Lad/m;->a(LG/Q;)LG/y;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(LG/R;)Law/e;
    .locals 13

    const-wide v11, 0x412e848000000000L

    const-wide v9, 0x404ca5dc1a63c1f8L

    const-wide v7, 0x3e3921fb54442d18L

    invoke-virtual {p0}, LG/R;->b()LG/Q;

    move-result-object v0

    invoke-virtual {p0}, LG/R;->e()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, LG/Q;->b()D

    move-result-wide v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    mul-double/2addr v1, v7

    mul-double/2addr v1, v9

    mul-double/2addr v1, v11

    double-to-int v1, v1

    invoke-virtual {p0}, LG/R;->d()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v7

    mul-double/2addr v2, v9

    mul-double/2addr v2, v11

    double-to-int v2, v2

    new-instance v3, Law/e;

    sget-object v4, Ls/P;->g:Law/f;

    invoke-direct {v3, v4}, Law/e;-><init>(Law/f;)V

    const/4 v4, 0x1

    invoke-static {v0}, Lad/m;->a(LG/Q;)LG/y;

    move-result-object v0

    invoke-static {v0}, Lad/m;->b(LG/y;)Law/e;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Law/e;->b(ILaw/e;)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Law/e;->h(II)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Law/e;->h(II)V

    return-object v3
.end method

.method public static a(LG/y;)Law/e;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p0}, LG/y;->a()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, LG/y;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    new-instance v1, Law/e;

    sget-object v2, Ls/P;->d:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Law/e;->h(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    return-object v1
.end method

.method public static a(Landroid/location/Location;)Lf/h;
    .locals 6

    const-wide v4, 0x412e848000000000L

    new-instance v0, Lf/h;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method

.method public static a(Lf/h;LG/Q;)V
    .locals 2

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, LG/Q;->e(II)V

    return-void
.end method

.method public static b(Law/e;)LG/Q;
    .locals 6

    const/high16 v5, 0x2000

    const/4 v4, 0x1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    invoke-virtual {p0, v4}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v2

    const/16 v3, 0x1e

    sub-int v0, v3, v0

    const/4 v3, 0x7

    sub-int/2addr v0, v3

    shl-int v0, v4, v0

    mul-int/2addr v1, v0

    sub-int/2addr v1, v5

    mul-int/2addr v0, v2

    sub-int v0, v5, v0

    new-instance v2, LG/Q;

    invoke-direct {v2, v1, v0}, LG/Q;-><init>(II)V

    return-object v2
.end method

.method public static b(LG/y;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, LG/y;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, LG/y;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method

.method public static b(LG/Q;)Lf/h;
    .locals 3

    new-instance v0, Lf/h;

    invoke-virtual {p0}, LG/Q;->a()I

    move-result v1

    invoke-virtual {p0}, LG/Q;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method
