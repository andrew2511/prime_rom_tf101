.class public LF/p;
.super Ljava/lang/Object;


# static fields
.field private static final b:[F

.field private static final c:[F


# instance fields
.field a:D

.field private final d:LF/x;

.field private e:Laa/E;

.field private f:D

.field private g:D

.field private h:LF/i;

.field private i:[LF/w;

.field private j:I

.field private k:Z

.field private l:D

.field private volatile m:LF/B;

.field private n:D

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4270

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, LF/p;->b:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, LF/p;->c:[F

    sget-object v0, LF/p;->b:[F

    aput v4, v0, v5

    sget-object v0, LF/p;->b:[F

    const/high16 v1, 0x4040

    aput v1, v0, v6

    sget-object v0, LF/p;->b:[F

    const/high16 v1, 0x40d0

    aput v1, v0, v7

    sget-object v0, LF/p;->b:[F

    const/4 v1, 0x3

    const/high16 v2, 0x41f0

    aput v2, v0, v1

    sget-object v0, LF/p;->b:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    sget-object v0, LF/p;->c:[F

    aput v3, v0, v5

    sget-object v0, LF/p;->c:[F

    const v1, 0x3f333333

    aput v1, v0, v6

    sget-object v0, LF/p;->c:[F

    const v1, 0x3ecccccd

    aput v1, v0, v7

    sget-object v0, LF/p;->c:[F

    const/4 v1, 0x3

    const v2, 0x3e19999a

    aput v2, v0, v1

    sget-object v0, LF/p;->c:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    return-void
.end method

.method constructor <init>(LF/x;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/high16 v0, -0x4010

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, LF/p;->f:D

    iput-wide v0, p0, LF/p;->g:D

    iput-wide v0, p0, LF/p;->l:D

    const-wide v0, 0x7fefffffffffffffL

    iput-wide v0, p0, LF/p;->n:D

    iput-object p1, p0, LF/p;->d:LF/x;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, LG/Q;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, LF/p;->a:D

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, LF/p;->a([LF/M;ILF/y;I)V

    return-void
.end method

.method private a(LF/w;)D
    .locals 4

    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v0

    invoke-direct {p0, v0}, LF/p;->b(LF/y;)D

    move-result-wide v0

    invoke-virtual {p1}, LF/w;->b()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private a(D)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, LF/p;->c(D)LF/y;

    move-result-object v0

    iget-object v1, p0, LF/p;->m:LF/B;

    invoke-virtual {v1}, LF/B;->h()LF/y;

    move-result-object v1

    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LF/y;->j()LF/y;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, LF/p;->d(D)V

    :cond_1
    invoke-direct {p0, v0}, LF/p;->a(LF/y;)V

    iget-object v0, p0, LF/p;->d:LF/x;

    invoke-virtual {v0}, LF/x;->c()V

    :cond_2
    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, LF/p;->j:I

    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, LF/p;->a(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, LF/p;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LF/p;->j:I

    goto :goto_0

    :cond_3
    iget v0, p0, LF/p;->j:I

    if-le v0, v2, :cond_4

    iput-boolean v4, p0, LF/p;->k:Z

    iget-object v0, p0, LF/p;->i:[LF/w;

    iget v1, p0, LF/p;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, LF/p;->a(LF/w;)D

    move-result-wide v1

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_4

    invoke-virtual {v0}, LF/w;->e()LF/y;

    move-result-object v1

    invoke-direct {p0, v1}, LF/p;->c(LF/y;)D

    move-result-wide v1

    double-to-int v1, v1

    iget-wide v2, p0, LF/p;->g:D

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, LF/p;->d:LF/x;

    invoke-virtual {v2, v0, v1}, LF/x;->a(LF/w;I)V

    :cond_4
    iget v0, p0, LF/p;->j:I

    iget-object v1, p0, LF/p;->i:[LF/w;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    invoke-virtual {p0, v4}, LF/p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LF/p;->d:LF/x;

    invoke-virtual {v0}, LF/x;->b()V

    :cond_5
    iget-object v0, p0, LF/p;->d:LF/x;

    invoke-virtual {v0}, LF/x;->j()V

    iget-object v0, p0, LF/p;->d:LF/x;

    invoke-virtual {v0}, LF/x;->e()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LF/p;->a(LF/y;)V

    :goto_1
    return-void

    :cond_6
    invoke-direct {p0, p1, p2}, LF/p;->b(D)V

    goto :goto_1
.end method

.method private a(LF/y;)V
    .locals 1

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->h()LF/y;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, LF/p;->e(LF/y;)V

    :cond_0
    return-void
.end method

.method private a([LF/M;ILF/y;I)V
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, LF/p;->m:LF/B;

    if-eqz v1, :cond_6

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->i()LF/M;

    move-result-object v0

    move-object v11, v0

    :goto_0
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    iget-wide v0, p0, LF/p;->f:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, LF/B;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v11}, LF/B;-><init>([LF/M;ILF/y;IIIIZIZLF/M;)V

    iput-object v0, p0, LF/p;->m:LF/B;

    :goto_1
    return-void

    :cond_1
    aget-object v0, p1, p2

    invoke-virtual/range {p3 .. p3}, LF/y;->x()I

    move-result v1

    invoke-virtual {v0, v1}, LF/M;->c(I)D

    move-result-wide v1

    iget-wide v3, p0, LF/p;->g:D

    sub-double/2addr v1, v3

    double-to-int v5, v1

    iget-wide v1, p0, LF/p;->f:D

    invoke-virtual {v0, v1, v2}, LF/M;->b(D)I

    move-result v7

    int-to-float v1, v5

    invoke-virtual/range {p3 .. p3}, LF/y;->i()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v1

    move v1, v12

    :goto_2
    invoke-virtual {v0}, LF/M;->j()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v3

    invoke-virtual {v3}, LF/y;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    iget-object v3, p0, LF/p;->h:LF/i;

    if-eqz v3, :cond_5

    iget-object v1, p0, LF/p;->h:LF/i;

    invoke-virtual {v1}, LF/i;->e()I

    move-result v1

    move v4, v1

    :goto_3
    invoke-virtual {v0}, LF/M;->o()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v8, v0

    :goto_4
    aget-object v0, p1, p2

    invoke-virtual {v0}, LF/M;->a()Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, p1, p2

    move-object v11, v0

    :cond_3
    new-instance v0, LF/B;

    float-to-int v6, v2

    invoke-direct {p0}, LF/p;->f()Z

    move-result v10

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v9, p4

    invoke-direct/range {v0 .. v11}, LF/B;-><init>([LF/M;ILF/y;IIIIZIZLF/M;)V

    iput-object v0, p0, LF/p;->m:LF/B;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v8, v0

    goto :goto_4

    :cond_5
    move v4, v1

    goto :goto_3

    :cond_6
    move-object v11, v0

    goto/16 :goto_0
.end method

.method private a(DD)Z
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, LF/p;->b(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(LF/y;D)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {p1}, LF/y;->k()LF/y;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {p1}, LF/y;->x()I

    move-result v3

    invoke-virtual {v0}, LF/M;->m()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v3, v0, :cond_3

    cmpl-double v0, p2, v1

    if-ltz v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, LF/p;->b(LF/y;)D

    move-result-wide v1

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, LF/p;->b(LF/y;)D

    move-result-wide v3

    cmpg-double v0, v1, p2

    if-gtz v0, :cond_4

    cmpl-double v0, v3, p2

    if-lez v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0
.end method

.method private a(Laa/E;)Z
    .locals 8

    const-wide/high16 v6, 0x4049

    const/4 v5, 0x0

    iget-object v0, p0, LF/p;->d:LF/x;

    invoke-virtual {v0}, LF/x;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LF/M;->k()LF/u;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-wide v1, p0, LF/p;->n:D

    iget-wide v3, p0, LF/p;->a:D

    div-double/2addr v1, v3

    invoke-virtual {p1}, Laa/E;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    invoke-virtual {p1}, Laa/E;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, LF/M;->c()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    add-double/2addr v1, v6

    :cond_2
    invoke-virtual {v0}, LF/M;->k()LF/u;

    move-result-object v3

    invoke-virtual {v3}, LF/u;->e()LG/y;

    move-result-object v3

    invoke-virtual {p1, v3}, Laa/E;->a(LG/y;)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v1, v3, v1

    if-gez v1, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, LF/M;->c()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Laa/E;->e()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Laa/E;->h()LG/Q;

    move-result-object v1

    if-nez v1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    iget-wide v1, p0, LF/p;->a:D

    mul-double/2addr v1, v6

    invoke-virtual {p1}, Laa/E;->h()LG/Q;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, LF/M;->a(LG/Q;D)LF/i;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LF/i;->d()D

    move-result-wide v3

    cmpg-double v0, v3, v1

    if-gtz v0, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(DD)D
    .locals 9

    iget v0, p0, LF/p;->j:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, LF/p;->j:I

    iget-object v1, p0, LF/p;->i:[LF/w;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const-wide v0, 0x47efffffe0000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, LF/p;->i:[LF/w;

    iget v1, p0, LF/p;->j:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, LF/p;->a(LF/w;)D

    move-result-wide v1

    invoke-virtual {v0}, LF/w;->d()I

    move-result v3

    int-to-double v3, v3

    iget-wide v5, p0, LF/p;->a:D

    mul-double/2addr v5, p3

    invoke-virtual {v0}, LF/w;->c()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    sub-double v0, v1, v3

    sub-double/2addr v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_3

    iget-wide v2, p0, LF/p;->a:D

    mul-double/2addr v2, p3

    div-double/2addr v0, v2

    goto :goto_0

    :cond_3
    const-wide v0, 0x47efffffe0000000L

    goto :goto_0
.end method

.method private b(LF/y;)D
    .locals 4

    invoke-virtual {p1}, LF/y;->x()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, LF/p;->d(LF/y;)D

    move-result-wide v0

    invoke-virtual {p1}, LF/y;->a()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->e()D

    move-result-wide v2

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {p1}, LF/y;->x()I

    move-result v1

    invoke-virtual {v0, v1}, LF/M;->b(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method private b(Landroid/location/Location;)LF/i;
    .locals 1

    instance-of v0, p1, Laa/E;

    if-eqz v0, :cond_0

    check-cast p1, Laa/E;

    invoke-virtual {p1}, Laa/E;->i()LF/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(D)V
    .locals 10

    const/4 v9, 0x1

    iget-boolean v0, p0, LF/p;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, LF/p;->j:I

    iget-object v1, p0, LF/p;->i:[LF/w;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, LF/p;->i:[LF/w;

    iget v1, p0, LF/p;->j:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, LF/w;->a()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LF/p;->d:LF/x;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, LF/x;->b(LF/w;I)V

    iput-boolean v9, p0, LF/p;->k:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, LF/p;->e:Laa/E;

    invoke-virtual {v1}, Laa/E;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LF/p;->e:Laa/E;

    invoke-virtual {v1}, Laa/E;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {p0, p1, p2, v1, v2}, LF/p;->b(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4014

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_0

    invoke-virtual {v0}, LF/w;->e()LF/y;

    move-result-object v5

    invoke-direct {p0, v5}, LF/p;->c(LF/y;)D

    move-result-wide v5

    iget-wide v7, p0, LF/p;->g:D

    mul-double/2addr v1, v3

    add-double/2addr v1, v7

    sub-double v1, v5, v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, LF/p;->d:LF/x;

    double-to-int v1, v1

    invoke-virtual {v3, v0, v1}, LF/x;->b(LF/w;I)V

    iput-boolean v9, p0, LF/p;->k:Z

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->f()[LF/M;

    move-result-object v0

    iget-object v1, p0, LF/p;->m:LF/B;

    invoke-virtual {v1}, LF/B;->m()I

    move-result v1

    iget-object v2, p0, LF/p;->m:LF/B;

    invoke-virtual {v2}, LF/B;->h()LF/y;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, LF/p;->a([LF/M;ILF/y;I)V

    return-void
.end method

.method private c(LF/y;)D
    .locals 2

    invoke-virtual {p1}, LF/y;->x()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, LF/p;->d(LF/y;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {p1}, LF/y;->x()I

    move-result v1

    invoke-virtual {v0, v1}, LF/M;->c(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method private c(D)LF/y;
    .locals 4

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->h()LF/y;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, LF/p;->a(LF/y;D)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, LF/y;->j()LF/y;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, LF/p;->a(LF/y;D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LF/y;->j()LF/y;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, LF/M;->j()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v2

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, LF/p;->a(LF/y;D)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(LF/y;)D
    .locals 2

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, LF/p;->o:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LF/M;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, LF/y;->j()LF/y;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x41a0

    invoke-virtual {p1}, LF/y;->j()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private d(D)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, LF/p;->j:I

    iput v3, p0, LF/p;->j:I

    :goto_0
    iget v1, p0, LF/p;->j:I

    iget-object v2, p0, LF/p;->i:[LF/w;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, LF/p;->i:[LF/w;

    iget v2, p0, LF/p;->j:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, LF/p;->a(LF/w;)D

    move-result-wide v1

    cmpl-double v1, v1, p1

    if-lez v1, :cond_2

    :cond_0
    iget v1, p0, LF/p;->j:I

    if-eq v0, v1, :cond_1

    iput-boolean v3, p0, LF/p;->k:Z

    :cond_1
    return-void

    :cond_2
    iget v1, p0, LF/p;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LF/p;->j:I

    goto :goto_0
.end method

.method private e()V
    .locals 6

    iget-wide v0, p0, LF/p;->l:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, LF/p;->f:D

    iget-wide v2, p0, LF/p;->l:D

    sub-double/2addr v0, v2

    const-wide v2, 0x407f400000000000L

    iget-wide v4, p0, LF/p;->a:D

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, LF/p;->f:D

    iput-wide v0, p0, LF/p;->l:D

    invoke-virtual {p0}, LF/p;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LF/p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/p;->d:LF/x;

    invoke-virtual {v0}, LF/x;->b()V

    goto :goto_0
.end method

.method private e(LF/y;)V
    .locals 3

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->f()[LF/M;

    move-result-object v0

    iget-object v1, p0, LF/p;->m:LF/B;

    invoke-virtual {v1}, LF/B;->m()I

    move-result v1

    iget-object v2, p0, LF/p;->m:LF/B;

    invoke-virtual {v2}, LF/B;->k()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, LF/p;->a([LF/M;ILF/y;I)V

    return-void
.end method

.method private f()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, LF/p;->e:Laa/E;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->t()D

    move-result-wide v0

    iget-object v2, p0, LF/p;->e:Laa/E;

    invoke-virtual {v2}, Laa/E;->k()D

    move-result-wide v2

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, LF/p;->h:LF/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, LF/p;->h:LF/i;

    invoke-virtual {v0}, LF/i;->d()D

    move-result-wide v0

    iget-wide v2, p0, LF/p;->a:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4049

    const/high16 v4, 0x4000

    iget-object v5, p0, LF/p;->e:Laa/E;

    invoke-virtual {v5}, Laa/E;->getAccuracy()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method private g()V
    .locals 8

    const-wide/high16 v6, -0x4010

    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, LG/Q;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, LF/p;->a:D

    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-direct {p0, v0}, LF/p;->b(Landroid/location/Location;)LF/i;

    move-result-object v0

    iget-object v1, p0, LF/p;->m:LF/B;

    invoke-virtual {v1}, LF/B;->g()LF/M;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/i;->a()LF/M;

    move-result-object v2

    if-ne v2, v1, :cond_0

    iput-object v0, p0, LF/p;->h:LF/i;

    :goto_0
    iget-object v0, p0, LF/p;->h:LF/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, LF/p;->h:LF/i;

    invoke-virtual {v1, v0}, LF/M;->a(LF/i;)D

    move-result-wide v2

    iput-wide v2, p0, LF/p;->f:D

    iget-object v0, p0, LF/p;->h:LF/i;

    invoke-virtual {v0}, LF/i;->e()I

    move-result v0

    invoke-virtual {v1, v0}, LF/M;->c(I)D

    move-result-wide v2

    invoke-virtual {v1}, LF/M;->m()LG/m;

    move-result-object v0

    iget-object v1, p0, LF/p;->h:LF/i;

    invoke-virtual {v1}, LF/i;->e()I

    move-result v1

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    iget-object v1, p0, LF/p;->h:LF/i;

    invoke-virtual {v1}, LF/i;->b()LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->c(LG/Q;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v4, p0, LF/p;->a:D

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, LF/p;->g:D

    iget-wide v0, p0, LF/p;->n:D

    iget-object v2, p0, LF/p;->h:LF/i;

    invoke-virtual {v2}, LF/i;->d()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, LF/p;->n:D

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, LG/Q;->a(DD)LG/Q;

    move-result-object v0

    const-wide v2, 0x40c3880000000000L

    iget-wide v4, p0, LF/p;->a:D

    mul-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, LF/M;->a(LG/Q;D)LF/i;

    move-result-object v0

    iput-object v0, p0, LF/p;->h:LF/i;

    goto :goto_0

    :cond_1
    iput-wide v6, p0, LF/p;->f:D

    iput-wide v6, p0, LF/p;->g:D

    goto :goto_1
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->h()LF/y;

    move-result-object v0

    invoke-direct {p0, v0}, LF/p;->e(LF/y;)V

    return-void
.end method


# virtual methods
.method a([D)D
    .locals 13

    const-wide/16 v9, 0x0

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v1

    invoke-virtual {v1}, LF/M;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/p;->h:LF/i;

    if-nez v0, :cond_1

    :cond_0
    move-wide v0, v9

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {v1}, LF/M;->t()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_2

    move-wide v0, v9

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, LF/p;->h:LF/i;

    invoke-virtual {v0}, LF/i;->e()I

    move-result v4

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/g;

    invoke-virtual {v0, v4}, LF/g;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    if-nez v0, :cond_4

    move-wide v0, v9

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, LF/M;->m()LG/m;

    move-result-object v1

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v3

    invoke-virtual {v3}, Lad/t;->s()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-double v5, v3

    iget-wide v7, p0, LF/p;->a:D

    mul-double/2addr v5, v7

    move-object v7, v0

    move v0, v4

    move-wide v3, v9

    :cond_5
    :goto_2
    cmpg-double v8, v3, v5

    if-gez v8, :cond_7

    invoke-virtual {v1, v0}, LG/m;->b(I)F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v3, v8

    invoke-virtual {v7, v0}, LF/g;->a(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v7}, LF/g;->a()I

    move-result v10

    aget-wide v11, p1, v10

    add-double/2addr v8, v11

    aput-wide v8, p1, v10

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, LF/g;->a(I)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/g;

    move-object v7, p0

    goto :goto_2

    :cond_7
    move-wide v0, v3

    goto :goto_0

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method a([DD)I
    .locals 14

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v11, v4

    move-wide v12, v2

    move-wide v3, v0

    move v0, v11

    move-wide v1, v12

    :goto_0
    const/4 v5, 0x4

    if-gt v0, v5, :cond_0

    aget-wide v5, p1, v0

    sget-object v7, LF/p;->b:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    sget-object v8, LF/p;->b:[F

    aget v8, v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aget-wide v5, p1, v0

    add-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v3, v1

    const-wide v5, 0x408f400000000000L

    iget-wide v7, p0, LF/p;->a:D

    mul-double/2addr v5, v7

    const-wide/16 v7, 0x0

    const/4 v0, 0x1

    :goto_1
    const/4 v9, 0x4

    if-ge v0, v9, :cond_2

    aget-wide v9, p1, v0

    add-double/2addr v7, v9

    cmpl-double v9, v7, v5

    if-lez v9, :cond_1

    sget-object v9, LF/p;->c:[F

    aget v9, v9, v0

    float-to-double v9, v9

    cmpl-double v9, v3, v9

    if-lez v9, :cond_1

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    aget-wide v3, p1, v0

    const-wide/high16 v5, 0x3fe0

    mul-double v0, v1, v5

    cmpg-double v0, v3, v0

    if-gez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    goto :goto_2
.end method

.method public a()LF/B;
    .locals 1

    iget-object v0, p0, LF/p;->m:LF/B;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .locals 7

    const-wide/high16 v3, -0x4010

    const/4 v6, 0x0

    const/4 v5, 0x1

    check-cast p1, Laa/E;

    iput-object p1, p0, LF/p;->e:Laa/E;

    iget-object v0, p0, LF/p;->i:[LF/w;

    if-eqz v0, :cond_2

    iget v0, p0, LF/p;->j:I

    iget-object v1, p0, LF/p;->i:[LF/w;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->k()LF/u;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LF/p;->e:Laa/E;

    iget-object v1, p0, LF/p;->m:LF/B;

    invoke-virtual {v1}, LF/B;->g()LF/M;

    move-result-object v1

    invoke-virtual {v1}, LF/M;->k()LF/u;

    move-result-object v1

    invoke-virtual {v1}, LF/u;->e()LG/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Laa/E;->a(LG/y;)F

    move-result v0

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    move v0, v5

    :goto_0
    invoke-direct {p0}, LF/p;->g()V

    invoke-direct {p0}, LF/p;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, LF/p;->e:Laa/E;

    invoke-direct {p0, v2}, LF/p;->a(Laa/E;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v6, p0, LF/p;->k:Z

    const/4 v0, -0x1

    iput v0, p0, LF/p;->j:I

    iput-wide v3, p0, LF/p;->f:D

    iput-wide v3, p0, LF/p;->g:D

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LF/p;->a(LF/y;)V

    move v0, v5

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, LF/p;->d:LF/x;

    iget-object v2, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0, v2}, LF/x;->a(Laa/E;)V

    :cond_1
    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->e()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/16 v2, 0xa

    :goto_1
    iget-object v3, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, LF/M;->l()LF/u;

    move-result-object v4

    invoke-virtual {v4}, LF/u;->e()LG/y;

    move-result-object v4

    invoke-virtual {v3, v4}, Laa/E;->a(LG/y;)F

    move-result v3

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_6

    invoke-virtual {v0}, LF/M;->m()LG/m;

    move-result-object v2

    invoke-virtual {v2}, LG/m;->b()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, LF/M;->b(I)D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, LF/p;->a(D)V

    move v0, v5

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, LF/p;->e:Laa/E;

    invoke-virtual {v1}, Laa/E;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-wide v0, p0, LF/p;->f:D

    invoke-direct {p0, v0, v1}, LF/p;->a(D)V

    :cond_2
    invoke-direct {p0}, LF/p;->h()V

    iget-object v0, p0, LF/p;->h:LF/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->h()LF/y;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, LF/p;->e()V

    :cond_3
    iget-object v0, p0, LF/p;->d:LF/x;

    invoke-virtual {v0}, LF/x;->d()V

    return-void

    :cond_4
    const/16 v2, 0x64

    goto :goto_1

    :cond_5
    iput-boolean v5, p0, LF/p;->o:Z

    :cond_6
    move v0, v6

    goto :goto_2

    :cond_7
    move v0, v6

    goto/16 :goto_0
.end method

.method public a([LF/M;IZ)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    iput-object v2, p0, LF/p;->h:LF/i;

    iput-wide v3, p0, LF/p;->f:D

    iput-wide v3, p0, LF/p;->g:D

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, LF/p;->l:D

    iput v5, p0, LF/p;->j:I

    iput-boolean v5, p0, LF/p;->k:Z

    const-wide v0, 0x7fefffffffffffffL

    iput-wide v0, p0, LF/p;->n:D

    iget-object v0, p0, LF/p;->e:Laa/E;

    if-eqz v0, :cond_2

    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, LF/p;->o:Z

    invoke-direct {p0, p1, p2, v2, v5}, LF/p;->a([LF/M;ILF/y;I)V

    invoke-direct {p0, v3, v4}, LF/p;->c(D)LF/y;

    move-result-object v0

    invoke-direct {p0, v0}, LF/p;->a(LF/y;)V

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->k()LF/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LF/M;->k()LF/u;

    move-result-object v1

    invoke-virtual {v1}, LF/u;->e()LG/y;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LF/M;->k()LF/u;

    move-result-object v1

    invoke-virtual {v1}, LF/u;->e()LG/y;

    move-result-object v1

    invoke-virtual {v0}, LF/M;->m()LG/m;

    move-result-object v2

    invoke-virtual {v2, v5}, LG/m;->a(I)LG/Q;

    move-result-object v2

    invoke-static {v1}, LG/Q;->a(LG/y;)LG/Q;

    move-result-object v1

    invoke-virtual {v2, v1}, LG/Q;->c(LG/Q;)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, LF/p;->n:D

    :cond_0
    invoke-virtual {p0, v0}, LF/p;->a(LF/M;)[LF/w;

    move-result-object v0

    iput-object v0, p0, LF/p;->i:[LF/w;

    iget-object v0, p0, LF/p;->e:Laa/E;

    if-eqz v0, :cond_1

    invoke-direct {p0}, LF/p;->g()V

    iget-wide v0, p0, LF/p;->f:D

    invoke-direct {p0, v0, v1}, LF/p;->c(D)LF/y;

    move-result-object v0

    invoke-direct {p0, v0}, LF/p;->a(LF/y;)V

    invoke-virtual {p0}, LF/p;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LF/p;->a(I)Z

    :cond_1
    iget-object v0, p0, LF/p;->d:LF/x;

    invoke-virtual {v0}, LF/x;->a()V

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->h()LF/y;

    move-result-object v0

    if-eqz p3, :cond_3

    iget-object v0, p0, LF/p;->e:Laa/E;

    if-eqz v0, :cond_6

    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LF/p;->e:Laa/E;

    invoke-virtual {v0}, Laa/E;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    :goto_1
    iget-wide v2, p0, LF/p;->f:D

    invoke-direct {p0, v2, v3, v0, v1}, LF/p;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, LF/p;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LF/p;->j:I

    goto :goto_1

    :cond_2
    move v0, v5

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, LF/p;->e:Laa/E;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LF/y;->x()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v3, v4}, LF/p;->a(D)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-wide v0, p0, LF/p;->f:D

    invoke-direct {p0, v0, v1}, LF/p;->d(D)V

    goto :goto_2

    :cond_6
    move-wide v0, v3

    goto :goto_1
.end method

.method a(I)Z
    .locals 1

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->k()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, LF/p;->b(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(LF/M;)[LF/w;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, LF/M;->j()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, LF/M;->a(I)LF/y;

    move-result-object v2

    invoke-virtual {v2}, LF/y;->u()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [LF/w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [LF/w;

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, LF/p;->m:LF/B;

    invoke-virtual {v0}, LF/B;->h()LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()I
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [D

    invoke-virtual {p0, v0}, LF/p;->a([D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0, v1, v2}, LF/p;->a([DD)I

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    const-wide/high16 v0, -0x4010

    const/4 v2, 0x0

    iput-object v2, p0, LF/p;->h:LF/i;

    iput-wide v0, p0, LF/p;->g:D

    iput-wide v0, p0, LF/p;->f:D

    iput-wide v0, p0, LF/p;->l:D

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, LF/p;->a([LF/M;ILF/y;I)V

    iput-object v2, p0, LF/p;->i:[LF/w;

    return-void
.end method
