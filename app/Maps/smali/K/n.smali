.class public LK/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/graphics/Point;

.field private static final b:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, LK/n;->a:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, LK/n;->b:Landroid/graphics/Point;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LB/c;LB/b;LB/b;)F
    .locals 7

    iget-object v0, p1, LB/b;->a:LB/l;

    iget-object v1, p2, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, LB/l;->a(LB/l;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LB/b;->a:LB/l;

    invoke-virtual {p0, v0}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->D()F

    move-result v0

    iget v1, p2, LB/b;->b:F

    iget v2, p1, LB/b;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    if-lez v0, :cond_4

    move-object v1, p1

    move-object v2, p2

    :goto_1
    iget-object v3, v2, LB/b;->a:LB/l;

    invoke-virtual {p0, v3}, LB/c;->a(LB/l;)LB/u;

    move-result-object v3

    iget-object v4, v1, LB/b;->a:LB/l;

    invoke-virtual {p0, v4}, LB/c;->a(LB/l;)LB/u;

    move-result-object v4

    invoke-virtual {v3}, LB/u;->D()F

    move-result v3

    const/high16 v5, 0x3f80

    iget v6, v2, LB/b;->b:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    new-instance v5, LB/r;

    invoke-direct {v5, p0}, LB/r;-><init>(LB/c;)V

    iget-object v2, v2, LB/b;->a:LB/l;

    invoke-virtual {v5, v2}, LB/r;->a(LB/l;)LB/r;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, LB/r;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, LB/r;->a()LB/l;

    move-result-object v5

    iget-object v6, v1, LB/b;->a:LB/l;

    invoke-virtual {v5, v6}, LB/l;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v4}, LB/u;->D()F

    move-result v2

    iget v1, v1, LB/b;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    if-lez v0, :cond_3

    neg-float v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, LB/c;->a(LB/l;)LB/u;

    move-result-object v5

    invoke-virtual {v5}, LB/u;->D()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move-object v1, p2

    move-object v2, p1

    goto :goto_1
.end method

.method static a(Landroid/graphics/Point;)F
    .locals 2

    invoke-static {p0}, LK/n;->b(Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lf/h;Lf/h;)F
    .locals 2

    invoke-virtual {p0, p1}, Lf/h;->b(Lf/h;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lf/h;Lf/h;Lf/h;)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LK/n;->a(Lf/h;Lf/h;Lf/h;Z)F

    move-result v0

    return v0
.end method

.method private static a(Lf/h;Lf/h;Lf/h;Z)F
    .locals 4

    invoke-static {p0, p1, p2}, LK/n;->c(Lf/h;Lf/h;Lf/h;)F

    move-result v0

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lf/h;->b()I

    move-result v1

    sget-object v2, LK/n;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v2

    sget-object v3, LK/n;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    new-instance v2, Lf/h;

    invoke-direct {v2, v1, v0}, Lf/h;-><init>(II)V

    invoke-static {v2, p0}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method static a(D)I
    .locals 2

    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method static a(Landroid/graphics/Point;Landroid/graphics/Point;)J
    .locals 6

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-long v0, v0

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/graphics/Point;->y:I

    int-to-long v2, v2

    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/location/Location;)Lf/h;
    .locals 4

    new-instance v0, Lf/h;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, LK/n;->a(D)I

    move-result v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, LK/n;->a(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method

.method static a(Landroid/graphics/Point;IIII)V
    .locals 7

    const-wide v5, 0x41b5752a00000000L

    sub-int v0, p4, p2

    int-to-double v1, v0

    const-wide v3, -0x3e5a8ad600000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    int-to-double v0, v0

    add-double/2addr v0, v5

    double-to-int v0, v0

    :cond_0
    :goto_0
    sub-int v1, p3, p1

    iput v1, p0, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    return-void

    :cond_1
    int-to-double v1, v0

    const-wide v3, 0x41a5752a00000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    int-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static b(Lf/h;Lf/h;Lf/h;)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LK/n;->a(Lf/h;Lf/h;Lf/h;Z)F

    move-result v0

    return v0
.end method

.method private static b(Landroid/graphics/Point;)J
    .locals 2

    invoke-static {p0, p0}, LK/n;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Lf/h;Lf/h;Lf/h;)F
    .locals 7

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v1

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v2

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v3

    invoke-virtual {p2}, Lf/h;->b()I

    move-result v4

    invoke-virtual {p2}, Lf/h;->d()I

    move-result v5

    sget-object v6, LK/n;->a:Landroid/graphics/Point;

    invoke-static {v6, v2, v3, v0, v1}, LK/n;->a(Landroid/graphics/Point;IIII)V

    sget-object v0, LK/n;->b:Landroid/graphics/Point;

    invoke-static {v0, v2, v3, v4, v5}, LK/n;->a(Landroid/graphics/Point;IIII)V

    sget-object v0, LK/n;->b:Landroid/graphics/Point;

    sget-object v1, LK/n;->a:Landroid/graphics/Point;

    invoke-static {v0, v1}, LK/n;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-float v0, v0

    sget-object v1, LK/n;->b:Landroid/graphics/Point;

    invoke-static {v1}, LK/n;->b(Landroid/graphics/Point;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static d(Lf/h;Lf/h;Lf/h;)F
    .locals 5

    sget-object v0, LK/n;->a:Landroid/graphics/Point;

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v1

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v2

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v3

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LK/n;->a(Landroid/graphics/Point;IIII)V

    sget-object v0, LK/n;->b:Landroid/graphics/Point;

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v1

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v2

    invoke-virtual {p2}, Lf/h;->b()I

    move-result v3

    invoke-virtual {p2}, Lf/h;->d()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LK/n;->a(Landroid/graphics/Point;IIII)V

    sget-object v0, LK/n;->a:Landroid/graphics/Point;

    sget-object v1, LK/n;->b:Landroid/graphics/Point;

    invoke-static {v0, v1}, LK/n;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-float v0, v0

    sget-object v1, LK/n;->a:Landroid/graphics/Point;

    invoke-static {v1}, LK/n;->a(Landroid/graphics/Point;)F

    move-result v1

    sget-object v2, LK/n;->b:Landroid/graphics/Point;

    invoke-static {v2}, LK/n;->a(Landroid/graphics/Point;)F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method
