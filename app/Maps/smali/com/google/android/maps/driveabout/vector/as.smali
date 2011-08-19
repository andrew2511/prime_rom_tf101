.class public Lcom/google/android/maps/driveabout/vector/as;
.super Lcom/google/android/maps/driveabout/vector/aY;


# static fields
.field private static final b:F


# instance fields
.field a:F

.field private final c:LG/w;

.field private final d:Lcom/google/android/maps/driveabout/vector/br;

.field private final e:Lcom/google/android/maps/driveabout/vector/az;

.field private final f:Lcom/google/android/maps/driveabout/vector/cJ;

.field private final g:Lcom/google/android/maps/driveabout/vector/cJ;

.field private final h:Lcom/google/android/maps/driveabout/vector/cq;

.field private final i:Lcom/google/android/maps/driveabout/vector/br;

.field private final j:Lcom/google/android/maps/driveabout/vector/cJ;

.field private final k:Lcom/google/android/maps/driveabout/vector/cq;

.field private final l:Lcom/google/android/maps/driveabout/vector/cq;

.field private final m:Lcom/google/android/maps/driveabout/vector/br;

.field private final n:Lcom/google/android/maps/driveabout/vector/az;

.field private final o:Lcom/google/android/maps/driveabout/vector/cq;

.field private p:Lcom/google/android/maps/driveabout/vector/ah;

.field private final q:Lcom/google/android/maps/driveabout/vector/cs;

.field private final r:LG/Q;

.field private final s:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/as;->b:F

    return-void
.end method

.method private constructor <init>(LG/w;Lcom/google/android/maps/driveabout/vector/E;Ljava/util/HashSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/aY;-><init>(Ljava/util/Set;)V

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->r:LG/Q;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/as;->c:LG/w;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->e:Lcom/google/android/maps/driveabout/vector/az;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/U;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/U;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->g:Lcom/google/android/maps/driveabout/vector/cJ;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/U;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/U;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->f:Lcom/google/android/maps/driveabout/vector/cJ;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ag;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ag;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    iget v0, p2, Lcom/google/android/maps/driveabout/vector/E;->c:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->c:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/U;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->c:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/U;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ag;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->d:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ag;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ag;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ag;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    :goto_0
    iget v0, p2, Lcom/google/android/maps/driveabout/vector/E;->e:I

    if-lez v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ag;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/E;->f:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ag;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->s:Ljava/util/ArrayList;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/as;->a:F

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cs;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cs;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->q:Lcom/google/android/maps/driveabout/vector/cs;

    return-void

    :cond_0
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    goto :goto_1
.end method

.method private static a(F)F
    .locals 4

    float-to-int v0, p0

    int-to-float v1, v0

    sub-float v1, p0, v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    sget v1, Lcom/google/android/maps/driveabout/vector/as;->b:F

    :goto_0
    const/4 v2, 0x1

    const/16 v3, 0x1e

    sub-int v0, v3, v0

    shl-int v0, v2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4380

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method private static a(LG/r;)F
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, LG/r;->c()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LG/r;->b(I)F

    move-result v0

    :cond_0
    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bF;)F
    .locals 2

    const/high16 v0, 0x40c0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/as;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(FI)I
    .locals 2

    int-to-float v0, p1

    sub-float v0, p0, v0

    const/high16 v1, 0x4080

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4010

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    const/16 v0, 0x11

    if-lt p1, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/16 v0, 0x16

    goto :goto_0
.end method

.method private static a(FII)I
    .locals 3

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const/high16 v0, 0x4180

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x15

    goto :goto_0

    :cond_1
    int-to-float v0, p1

    sub-float v0, p0, v0

    const/high16 v1, 0x4080

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/high16 v1, 0x4010

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    const/16 v0, 0x11

    if-lt p1, v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/bF;I)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/high16 v1, 0x418c

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_6

    :cond_2
    or-int/lit8 v1, v2, 0x10

    :goto_1
    if-ne p1, v3, :cond_3

    or-int/lit8 v1, v1, 0xa

    :cond_3
    const/high16 v2, 0x4178

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    :cond_4
    or-int/lit8 v0, v1, 0x20

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public static a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/as;
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, LG/w;->i()LG/S;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0x200

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, LG/w;->b()I

    move-result v6

    new-instance v7, Lcom/google/android/maps/driveabout/vector/E;

    invoke-direct {v7}, Lcom/google/android/maps/driveabout/vector/E;-><init>()V

    :goto_0
    invoke-virtual {p2}, LG/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, LG/j;->b()LG/d;

    move-result-object v2

    instance-of v1, v2, LG/i;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, LG/i;

    move-object v1, v0

    invoke-static {v6, v1, v7}, Lcom/google/android/maps/driveabout/vector/as;->a(ILG/i;Lcom/google/android/maps/driveabout/vector/E;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/vector/as;

    invoke-direct {v1, p0, v7, v4}, Lcom/google/android/maps/driveabout/vector/as;-><init>(LG/w;Lcom/google/android/maps/driveabout/vector/E;Ljava/util/HashSet;)V

    move v2, v12

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/i;

    invoke-direct {v1, v3, p0}, Lcom/google/android/maps/driveabout/vector/as;->a(LG/S;LG/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, LG/d;->m()[I

    move-result-object v1

    array-length v8, v1

    move v9, v12

    :goto_2
    if-ge v9, v8, :cond_3

    aget v10, v1, v9

    if-ltz v10, :cond_2

    array-length v11, p1

    if-ge v10, v11, :cond_2

    aget-object v10, p1, v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    check-cast v2, LG/i;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, LG/j;->a()LG/d;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private a(LG/S;LG/i;)V
    .locals 20

    invoke-virtual/range {p2 .. p2}, LG/i;->c()LG/m;

    move-result-object v6

    invoke-virtual {v6}, LG/m;->b()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    const/4 v7, 0x1

    if-ge v5, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, LG/i;->h()LG/r;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/as;->a(LG/r;)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5}, LG/r;->c()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, LG/r;->a(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, LG/r;->a(I)I

    move-result v5

    move v13, v5

    move v14, v8

    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_0

    if-nez v13, :cond_2

    if-nez v14, :cond_2

    invoke-virtual/range {p2 .. p2}, LG/i;->g()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, LG/S;->d()LG/Q;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, LG/S;->g()I

    move-result v9

    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/as;->b(FI)F

    move-result v7

    if-nez v13, :cond_3

    if-eqz v14, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/cq;->c()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->q:Lcom/google/android/maps/driveabout/vector/cs;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->e:Lcom/google/android/maps/driveabout/vector/az;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    move-object v12, v0

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/maps/driveabout/vector/cs;->a(LG/m;FLG/Q;ILcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/az;Lcom/google/android/maps/driveabout/vector/cq;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v5

    sub-int/2addr v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->f:Lcom/google/android/maps/driveabout/vector/cJ;

    move-object v10, v0

    invoke-virtual {v10, v13, v5}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->g:Lcom/google/android/maps/driveabout/vector/cJ;

    move-object v10, v0

    invoke-virtual {v10, v14, v5}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    move-object v5, v0

    if-eqz v5, :cond_4

    const/16 v5, 0x40

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, LG/i;->d(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v8

    move v3, v9

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/as;->a(LG/m;LG/Q;II)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->c:LG/w;

    move-object v5, v0

    invoke-virtual {v5}, LG/w;->b()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/as;->a(ILG/i;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->q:Lcom/google/android/maps/driveabout/vector/cs;

    move-object v10, v0

    const/4 v13, 0x0

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object v11, v6

    move v12, v7

    move-object v14, v8

    move v15, v9

    invoke-virtual/range {v10 .. v19}, Lcom/google/android/maps/driveabout/vector/cs;->a(LG/m;FZLG/Q;IFLcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/cq;Lcom/google/android/maps/driveabout/vector/az;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->s:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5}, LG/r;->c()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, LG/r;->a(I)I

    move-result v5

    move v13, v5

    move v14, v8

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/maps/driveabout/vector/cq;->c()I

    move-result v11

    sub-int v11, v11, v16

    move-object v0, v5

    move-object v1, v10

    move/from16 v2, v16

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/cq;II)V

    goto :goto_2

    :cond_7
    move v13, v9

    move v14, v8

    goto/16 :goto_1
.end method

.method private a(LG/m;LG/Q;II)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    invoke-virtual {p1}, LG/m;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/as;->r:LG/Q;

    invoke-virtual {p1, v2, v3}, LG/m;->a(ILG/Q;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/as;->r:LG/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/as;->r:LG/Q;

    invoke-static {v3, p2, v4}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/as;->r:LG/Q;

    invoke-virtual {v3, v4, p3}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    add-int v4, v0, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-short v4, v4

    add-int v5, v0, v2

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(SS)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p4, v1}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;FI)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;FII)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->k()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/as;->a(FI)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method private static a(ILG/i;)Z
    .locals 1

    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, LG/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(ILG/i;Lcom/google/android/maps/driveabout/vector/E;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, LG/i;->c()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->b()I

    move-result v1

    sub-int v2, v1, v6

    if-ge v2, v6, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cs;->a(LG/m;)I

    move-result v3

    iget v4, p2, Lcom/google/android/maps/driveabout/vector/E;->a:I

    if-lez v4, :cond_1

    iget v4, p2, Lcom/google/android/maps/driveabout/vector/E;->a:I

    add-int/2addr v4, v3

    const/16 v5, 0x4000

    if-le v4, v5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v4, p2, Lcom/google/android/maps/driveabout/vector/E;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/google/android/maps/driveabout/vector/E;->a:I

    iget v3, p2, Lcom/google/android/maps/driveabout/vector/E;->b:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cs;->b(LG/m;)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p2, Lcom/google/android/maps/driveabout/vector/E;->b:I

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, LG/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/google/android/maps/driveabout/vector/E;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/vector/E;->c:I

    iget v0, p2, Lcom/google/android/maps/driveabout/vector/E;->d:I

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/vector/E;->d:I

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/as;->a(ILG/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v0, v2, 0x4

    mul-int/lit8 v1, v2, 0x2

    iget v2, p2, Lcom/google/android/maps/driveabout/vector/E;->e:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/google/android/maps/driveabout/vector/E;->e:I

    iget v0, p2, Lcom/google/android/maps/driveabout/vector/E;->f:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/vector/E;->f:I

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method private b(FI)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->c:LG/w;

    invoke-virtual {v0}, LG/w;->b()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    const/high16 v0, 0x3f00

    :goto_0
    int-to-float v1, p2

    mul-float/2addr v1, p1

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const v0, 0x3e99999a

    goto :goto_0
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/u;FII)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->k()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/as;->a(FII)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->d()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->e:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/az;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->f:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->g:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/br;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/br;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/az;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method a(Lcom/google/android/maps/driveabout/vector/u;F)V
    .locals 18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/as;->a:F

    move v3, v0

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/as;->a:F

    const/high16 v3, 0x4180

    mul-float v3, v3, p2

    const/high16 v4, 0x3f80

    div-float v4, v4, p2

    const/high16 v5, 0x3f80

    div-float v3, v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->s:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->c:LG/w;

    move-object v6, v0

    invoke-virtual {v6}, LG/w;->i()LG/S;

    move-result-object v6

    invoke-virtual {v6}, LG/S;->g()I

    move-result v6

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/i;

    invoke-virtual/range {p1 .. p1}, LG/i;->c()LG/m;

    move-result-object v7

    invoke-virtual {v7}, LG/m;->b()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual/range {p1 .. p1}, LG/i;->h()LG/r;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/maps/driveabout/vector/as;->a(LG/r;)F

    move-result v9

    const/high16 v10, 0x4000

    move-object/from16 v0, p0

    move v1, v9

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/as;->b(FI)F

    move-result v9

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_1

    invoke-virtual {v7, v10}, LG/m;->b(I)F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    mul-float/2addr v11, v3

    const/high16 v15, 0x3f00

    cmpl-float v15, v11, v15

    if-lez v15, :cond_2

    mul-float v12, v9, v4

    const/high16 v13, 0x4700

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/high16 v13, 0x4780

    mul-float/2addr v13, v11

    float-to-int v13, v13

    float-to-int v15, v11

    int-to-float v15, v15

    sub-float/2addr v11, v15

    const/high16 v15, 0x3e00

    cmpl-float v15, v11, v15

    if-lez v15, :cond_5

    const/high16 v15, 0x3ec0

    cmpg-float v11, v11, v15

    if-gez v11, :cond_5

    const v11, 0xa000

    :goto_2
    move/from16 v17, v13

    move v13, v12

    move/from16 v12, v17

    :goto_3
    const v14, 0x8000

    sub-int/2addr v14, v13

    const v15, 0x8000

    add-int/2addr v13, v15

    const/4 v15, 0x1

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, LG/i;->d(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v15, v0

    add-int v16, v12, v11

    move-object v0, v15

    move v1, v13

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v15, v0

    add-int/2addr v12, v11

    invoke-virtual {v15, v14, v12}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v12, v0

    invoke-virtual {v12, v14, v11}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v12, v0

    invoke-virtual {v12, v13, v11}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const v11, 0xc000

    move/from16 v17, v13

    move v13, v12

    move/from16 v12, v17

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v15, v0

    invoke-virtual {v15, v14, v11}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v15, v0

    invoke-virtual {v15, v13, v11}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v15, v0

    add-int v16, v12, v11

    move-object v0, v15

    move v1, v13

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    move-object v13, v0

    add-int/2addr v11, v12

    invoke-virtual {v13, v14, v11}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    goto :goto_4

    :cond_4
    new-instance v3, Lcom/google/android/maps/driveabout/vector/ah;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/vector/ah;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/as;->p:Lcom/google/android/maps/driveabout/vector/ah;

    goto/16 :goto_0

    :cond_5
    move v11, v14

    goto :goto_2
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 8

    const/high16 v7, 0x1

    const v6, 0xb7b7

    const/high16 v2, 0x3e80

    const/4 v5, 0x4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->c:LG/w;

    invoke-virtual {v1}, LG/w;->b()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    packed-switch p4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v1, :cond_0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->e:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->g:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    if-eqz v1, :cond_1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->e:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->f:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    if-eqz v1, :cond_3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/as;->a(Lcom/google/android/maps/driveabout/vector/bF;)F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/as;->a(Lcom/google/android/maps/driveabout/vector/u;F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->p:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->p:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/u;)I

    move-result v0

    if-ne v0, v7, :cond_5

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->p:Lcom/google/android/maps/driveabout/vector/ah;

    :cond_5
    :goto_1
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0xe5e5

    invoke-interface {v1, v6, v6, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto/16 :goto_0

    :cond_6
    move v0, v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->e:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->g:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->f:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0x1d0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->e:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/az;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->f:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->g:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/br;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/br;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/az;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    add-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/i;

    invoke-virtual {p0}, LG/i;->n()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_7
    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->e:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->g:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->f:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->i:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->j:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->k:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->l:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->m:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->n:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->o:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
