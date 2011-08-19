.class public Lcom/google/android/maps/driveabout/app/aL;
.super Lcom/google/android/maps/driveabout/app/dv;


# static fields
.field static final a:Lcom/google/android/maps/driveabout/app/cR;

.field private static final h:F

.field private static final l:F

.field private static final m:F


# instance fields
.field protected b:I

.field protected c:Lcom/google/android/maps/driveabout/app/cR;

.field protected d:Lcom/google/android/maps/driveabout/app/cR;

.field protected e:Lcom/google/android/maps/driveabout/app/cR;

.field protected f:Lcom/google/android/maps/driveabout/app/cR;

.field protected g:Lcom/google/android/maps/driveabout/app/cR;

.field private n:F

.field private final o:Lt/n;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide v0, 0x408f400000000000L

    invoke-static {v4, v5}, LG/Q;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/aL;->h:F

    const-wide v0, 0x40a7700000000000L

    invoke-static {v4, v5}, LG/Q;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/aL;->l:F

    new-instance v0, Lcom/google/android/maps/driveabout/app/cR;

    const/high16 v1, 0x418e

    const/high16 v2, 0x4220

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cR;-><init>(FF)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/aL;->a:Lcom/google/android/maps/driveabout/app/cR;

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/aL;->m:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lt/n;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dv;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->b:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->n:F

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->c:Lcom/google/android/maps/driveabout/app/cR;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aL;->d:Lcom/google/android/maps/driveabout/app/cR;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Lcom/google/android/maps/driveabout/app/cR;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/aL;->e:Lcom/google/android/maps/driveabout/app/cR;

    sget-object v0, Lcom/google/android/maps/driveabout/app/aL;->a:Lcom/google/android/maps/driveabout/app/cR;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Lcom/google/android/maps/driveabout/app/cR;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Lt/n;

    return-void
.end method

.method private a(F)F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->d:Lcom/google/android/maps/driveabout/app/cR;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cR;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->d:Lcom/google/android/maps/driveabout/app/cR;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cR;->b:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->c:Lcom/google/android/maps/driveabout/app/cR;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cR;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->c:Lcom/google/android/maps/driveabout/app/cR;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cR;->b:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Lcom/google/android/maps/driveabout/app/cR;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cR;->b:F

    goto :goto_0
.end method

.method private a(LG/Q;LG/v;IILG/Q;)F
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    aget v1, v0, v2

    if-gez v1, :cond_0

    invoke-virtual {p2}, LG/v;->d()LG/Q;

    move-result-object v1

    invoke-virtual {p2}, LG/v;->g()LG/Q;

    move-result-object v2

    invoke-static {v1, v2, p5, p1}, LG/H;->a(LG/Q;LG/Q;LG/Q;LG/Q;)D

    move-result-wide v1

    double-to-float v1, v1

    div-float v1, v4, v1

    :goto_0
    aget v2, v0, v3

    if-gez v2, :cond_1

    invoke-virtual {p2}, LG/v;->f()LG/Q;

    move-result-object v0

    invoke-virtual {p2}, LG/v;->g()LG/Q;

    move-result-object v2

    invoke-static {v0, v2, p5, p1}, LG/H;->a(LG/Q;LG/Q;LG/Q;LG/Q;)D

    move-result-wide v2

    double-to-float v0, v2

    div-float v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1
    return v0

    :cond_0
    aget v1, v0, v2

    if-le v1, p3, :cond_3

    invoke-virtual {p2}, LG/v;->e()LG/Q;

    move-result-object v1

    invoke-virtual {p2}, LG/v;->f()LG/Q;

    move-result-object v2

    invoke-static {v1, v2, p5, p1}, LG/H;->a(LG/Q;LG/Q;LG/Q;LG/Q;)D

    move-result-wide v1

    double-to-float v1, v1

    div-float v1, v4, v1

    goto :goto_0

    :cond_1
    aget v0, v0, v3

    if-le v0, p4, :cond_2

    invoke-virtual {p2}, LG/v;->e()LG/Q;

    move-result-object v0

    invoke-virtual {p2}, LG/v;->d()LG/Q;

    move-result-object v2

    invoke-static {v0, v2, p5, p1}, LG/H;->a(LG/Q;LG/Q;LG/Q;LG/Q;)D

    move-result-wide v2

    double-to-float v0, v2

    div-float v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_0
.end method

.method private a(ILG/Q;FF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/aL;->c(I)Lcom/google/android/maps/driveabout/app/cR;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget v2, v1, Lcom/google/android/maps/driveabout/app/cR;->a:F

    iget v3, v1, Lcom/google/android/maps/driveabout/app/cR;->b:F

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bI;FLG/Q;IIF)Z
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->b:I

    if-ne v0, v5, :cond_0

    const/high16 v0, 0x4170

    :goto_0
    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    move v0, v6

    :goto_1
    return v0

    :cond_0
    const/high16 v0, 0x41a0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v0

    invoke-virtual {p3, v0}, LG/Q;->d(LG/Q;)F

    move-result v0

    sget v1, Lcom/google/android/maps/driveabout/app/aL;->l:F

    sget v2, Lcom/google/android/maps/driveabout/app/aL;->l:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v2

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aL;->a(ILG/Q;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p5, p6}, Lcom/google/android/maps/driveabout/app/aL;->a(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    const v0, 0x3e4ccccc

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aL;->b:I

    if-ne v1, v3, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v1, p3}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v1

    aget v2, v1, v6

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    aget v2, v1, v6

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    aget v2, v1, v5

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v3

    if-ge v2, v3, :cond_5

    aget v1, v1, v5

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bI;LG/Q;IIF)Z
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v0

    invoke-virtual {p2, v0}, LG/Q;->d(LG/Q;)F

    move-result v0

    sget v1, Lcom/google/android/maps/driveabout/app/aL;->h:F

    sget v2, Lcom/google/android/maps/driveabout/app/aL;->h:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    move v0, v5

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v2

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aL;->a(ILG/Q;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/google/android/maps/driveabout/app/aL;->a(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    const v0, 0x3e4ccccc

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aL;->b:I

    if-ne v1, v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v1, p2}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v1

    aget v2, v1, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    aget v2, v1, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    aget v2, v1, v6

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v3

    if-ge v2, v3, :cond_3

    aget v1, v1, v6

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method private c(I)Lcom/google/android/maps/driveabout/app/cR;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Lcom/google/android/maps/driveabout/app/cR;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Lcom/google/android/maps/driveabout/app/cR;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->c:Lcom/google/android/maps/driveabout/app/cR;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->d:Lcom/google/android/maps/driveabout/app/cR;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->e:Lcom/google/android/maps/driveabout/app/cR;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected a()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->c:Lcom/google/android/maps/driveabout/app/cR;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cR;->a:F

    return v0
.end method

.method a(Laa/E;FI)F
    .locals 15

    invoke-virtual/range {p1 .. p1}, Laa/E;->g()LG/i;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LG/i;->e()I

    move-result v3

    const/16 v4, 0x50

    if-ge v3, v4, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Laa/E;->getBearing()F

    move-result v2

    :goto_0
    return v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Laa/E;->h()LG/Q;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Laa/E;->getBearing()F

    move-result v4

    const-wide/high16 v5, 0x4000

    const/high16 v7, 0x41f0

    sub-float v7, v7, p2

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide v7, v0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4070

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v6

    invoke-virtual {v6}, Lad/t;->e()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Lt/n;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Lt/n;

    invoke-virtual/range {p1 .. p1}, Laa/E;->getBearing()F

    move-result v8

    invoke-virtual {v7, v2, v8, v5, v6}, Lt/n;->a(LG/i;FFI)Ljava/util/List;

    move-result-object v2

    :goto_1
    new-instance v5, LG/Q;

    invoke-direct {v5}, LG/Q;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v14, v8

    move v8, v7

    move v7, v14

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/i;

    invoke-virtual {p0}, LG/i;->c()LG/m;

    move-result-object v9

    const/4 v10, 0x0

    move v14, v10

    move v10, v8

    move v8, v7

    move v7, v14

    :goto_3
    invoke-virtual {v9}, LG/m;->b()I

    move-result v11

    if-ge v7, v11, :cond_6

    invoke-virtual {v9, v7, v5}, LG/m;->a(ILG/Q;)V

    invoke-virtual {v5, v3}, LG/Q;->d(LG/Q;)F

    move-result v11

    mul-int v12, v6, v6

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    :cond_2
    :goto_4
    invoke-virtual {v9}, LG/m;->b()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_1

    :cond_4
    invoke-static {v3, v5}, LG/Q;->a(LG/Q;LG/Q;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-static {v4, v11}, LG/H;->b(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x42b4

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_2

    const/high16 v12, -0x3d90

    const/high16 v13, 0x4270

    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    cmpg-float v12, v11, v8

    if-gez v12, :cond_5

    move v8, v11

    goto :goto_4

    :cond_5
    cmpl-float v12, v11, v10

    if-lez v12, :cond_2

    move v10, v11

    goto :goto_4

    :cond_6
    move v7, v8

    move v8, v10

    goto :goto_2

    :cond_7
    add-float v2, v8, v7

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    goto/16 :goto_0
.end method

.method protected a(Landroid/location/Location;)F
    .locals 1

    const/high16 v0, 0x4168

    return v0
.end method

.method a(Lcom/google/android/maps/driveabout/vector/bI;LG/Q;FLG/Q;IIF)I
    .locals 8

    const/4 v6, 0x3

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aL;->a(Lcom/google/android/maps/driveabout/vector/bI;LG/Q;IIF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42c8

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->b:I

    if-ne v0, v6, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->b:I

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aL;->a(Lcom/google/android/maps/driveabout/vector/bI;FLG/Q;IIF)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;F)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->c:Lcom/google/android/maps/driveabout/app/cR;

    iget v1, v1, Lcom/google/android/maps/driveabout/app/cR;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->c:Lcom/google/android/maps/driveabout/app/cR;

    iget v3, v3, Lcom/google/android/maps/driveabout/app/cR;->b:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;LF/y;Z)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, LF/y;->a()LG/Q;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p2}, LF/y;->g()F

    move-result v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/aL;->a(ILG/Q;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p2}, LF/y;->g()F

    move-result v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/aL;->a(ILG/Q;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(DD)LG/Q;

    move-result-object v1

    const/high16 v0, 0x3f80

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/google/android/maps/driveabout/app/aL;->j:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/aL;->k:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float v5, v0, v2

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/aL;->a(Landroid/location/Location;)F

    move-result v2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/high16 v3, 0x4220

    check-cast p2, Laa/E;

    invoke-virtual {p0, p2, v2, p4}, Lcom/google/android/maps/driveabout/app/aL;->a(Laa/E;FI)F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;LG/o;IIF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 16

    if-nez p3, :cond_0

    move-object/from16 v5, p1

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, LG/Q;->a(DD)LG/Q;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, LG/o;->a()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, LG/o;->a(I)LG/Q;

    move-result-object v11

    new-instance v5, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/app/aL;->a()F

    move-result v7

    const/high16 v8, 0x4220

    invoke-static {v6, v11}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v9

    const/high16 v10, 0x3f80

    const/high16 v12, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/aL;->j:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/aL;->k:I

    move v14, v0

    add-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move/from16 v0, p5

    int-to-float v0, v0

    move v13, v0

    div-float/2addr v12, v13

    sub-float/2addr v10, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/aL;->a(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aL;->i:Lcom/google/android/maps/driveabout/vector/bF;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v7

    invoke-virtual {v7}, LG/F;->c()LG/z;

    move-result-object v9

    check-cast v9, LG/v;

    move-object/from16 v7, p0

    move-object v8, v11

    move/from16 v10, p4

    move/from16 v11, p5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/google/android/maps/driveabout/app/aL;->a(LG/Q;LG/v;IILG/Q;)F

    move-result v7

    new-instance v8, LG/Q;

    invoke-direct {v8}, LG/Q;-><init>()V

    invoke-virtual/range {p3 .. p3}, LG/o;->a()I

    move-result v10

    div-int/lit8 v10, v10, 0xa

    if-nez v10, :cond_2

    const/4 v10, 0x1

    move v13, v10

    :goto_1
    const/4 v10, 0x0

    move v14, v10

    move v15, v7

    :goto_2
    invoke-virtual/range {p3 .. p3}, LG/o;->a()I

    move-result v7

    if-ge v14, v7, :cond_1

    move-object/from16 v0, p3

    move v1, v14

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, LG/o;->a(ILG/Q;)V

    move-object/from16 v7, p0

    move/from16 v10, p4

    move/from16 v11, p5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/google/android/maps/driveabout/app/aL;->a(LG/Q;LG/v;IILG/Q;)F

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int v10, v14, v13

    move v14, v10

    move v15, v7

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v6

    float-to-double v7, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    double-to-float v7, v7

    sget v8, Lcom/google/android/maps/driveabout/app/aL;->m:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x3ecccccd

    sub-float v7, v6, v7

    new-instance v11, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v8

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v9

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    move-object v5, v11

    goto/16 :goto_0

    :cond_2
    move v13, v10

    goto :goto_1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;Lcom/google/android/maps/driveabout/vector/av;LF/y;FIIF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 19

    const/high16 v5, 0x3f80

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/aL;->j:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/aL;->k:I

    move v8, v0

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move/from16 v0, p7

    int-to-float v0, v0

    move v7, v0

    div-float/2addr v6, v7

    sub-float v10, v5, v6

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, LF/y;->b()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual/range {p4 .. p4}, LF/y;->j()LF/y;

    move-result-object v5

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getSpeed()F

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/aL;->n:F

    :cond_0
    const/4 v6, 0x0

    cmpl-float v6, p5, v6

    if-ltz v6, :cond_1

    new-instance v5, Lcom/google/android/maps/driveabout/vector/bI;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    move-object v6, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(F)F

    move-result v8

    move-object/from16 v0, p3

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/av;->b:F

    move v9, v0

    move/from16 v7, p5

    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    :goto_1
    return-object v5

    :cond_1
    if-nez v5, :cond_2

    const/4 v5, 0x0

    move-object v15, v5

    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/app/aL;->n:F

    move v14, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/maps/driveabout/app/aL;->a(Lcom/google/android/maps/driveabout/vector/bI;LG/Q;FLG/Q;IIF)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/aL;->b:I

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    move-object v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/av;->b:F

    move v7, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/aL;->a(ILG/Q;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, LF/y;->a()LG/Q;

    move-result-object v5

    move-object v15, v5

    goto :goto_2

    :cond_3
    move-object/from16 v5, p4

    goto :goto_0
.end method
