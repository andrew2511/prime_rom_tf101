.class public Lcom/google/android/maps/driveabout/vector/c;
.super Lcom/google/android/maps/driveabout/vector/aY;


# static fields
.field private static final a:LG/Q;

.field private static final b:Ljava/util/Comparator;


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/vector/br;

.field private final d:Lcom/google/android/maps/driveabout/vector/cJ;

.field private e:Lcom/google/android/maps/driveabout/vector/Z;

.field private final f:Lcom/google/android/maps/driveabout/vector/cq;

.field private final g:Lcom/google/android/maps/driveabout/vector/cq;

.field private final h:Lcom/google/android/maps/driveabout/vector/cq;

.field private final i:LG/Q;

.field private final j:LG/Q;

.field private final k:LG/Q;

.field private final l:LG/Q;

.field private final m:LG/Q;

.field private final n:LG/Q;

.field private final o:LG/Q;

.field private final p:LG/Q;

.field private final q:LG/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0xb504

    new-instance v0, LG/Q;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, LG/Q;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/c;->a:LG/Q;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/o;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/o;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/c;->b:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/al;Ljava/util/Set;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aY;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/Z;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/Z;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->e:Lcom/google/android/maps/driveabout/vector/Z;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/al;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/U;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/al;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/U;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ag;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/al;->c:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/al;->b:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ag;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ag;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/al;->d:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ag;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->g:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cq;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/al;->c:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->h:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->l:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->m:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->n:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->o:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->p:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->q:LG/Q;

    return-void
.end method

.method private static final a(I)I
    .locals 4

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    add-int/lit16 v0, v0, 0x2fd

    shr-int/lit8 v0, v0, 0x2

    add-int/lit16 v1, v1, 0x2fd

    shr-int/lit8 v1, v1, 0x2

    add-int/lit16 v2, v2, 0x2fd

    shr-int/lit8 v2, v2, 0x2

    const/high16 v3, -0x100

    and-int/2addr v3, p0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private static a(ILG/Q;)I
    .locals 6

    const/high16 v0, -0x100

    and-int/2addr v0, p0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p0, 0xff

    sget-object v4, Lcom/google/android/maps/driveabout/vector/c;->a:LG/Q;

    invoke-static {p1, v4}, LG/Q;->b(LG/Q;LG/Q;)F

    move-result v4

    invoke-virtual {p1}, LG/Q;->i()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    if-gez v4, :cond_0

    neg-int v4, v4

    :cond_0
    mul-int/lit16 v4, v4, 0x4ccc

    shr-int/lit8 v4, v4, 0x10

    const v5, 0xb333

    add-int/2addr v4, v5

    mul-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x10

    mul-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x10

    mul-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x10

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public static a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/c;
    .locals 10

    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/vector/al;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {p2}, LG/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, LG/j;->b()LG/d;

    move-result-object v2

    instance-of v1, v2, LG/n;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, LG/n;

    move-object v1, v0

    invoke-static {v1, v4}, Lcom/google/android/maps/driveabout/vector/c;->a(LG/n;Lcom/google/android/maps/driveabout/vector/al;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    sget-object v1, Lcom/google/android/maps/driveabout/vector/c;->b:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, LG/w;->i()LG/S;

    move-result-object v2

    invoke-virtual {v2}, LG/S;->d()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, LG/Q;->a(D)D

    move-result-wide v6

    double-to-float v6, v6

    new-instance v7, Lcom/google/android/maps/driveabout/vector/c;

    invoke-direct {v7, v4, v5}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/al;Ljava/util/Set;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/n;

    invoke-direct {v7, p0, v2, v1, v6}, Lcom/google/android/maps/driveabout/vector/c;->a(LG/w;LG/S;LG/n;F)V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, LG/d;->m()[I

    move-result-object v2

    array-length v6, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget v8, v2, v7

    if-ltz v8, :cond_2

    array-length v9, p1

    if-ge v8, v9, :cond_2

    aget-object v8, p1, v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, LG/j;->a()LG/d;

    goto :goto_0

    :cond_4
    invoke-direct {v7}, Lcom/google/android/maps/driveabout/vector/c;->c()V

    return-object v7
.end method

.method private a(LG/Q;LG/Q;LG/Q;LG/Q;II)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1, p5}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p3, p5}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p2, p5}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p4, p5}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->h:Lcom/google/android/maps/driveabout/vector/cq;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(IIII)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->g:Lcom/google/android/maps/driveabout/vector/cq;

    add-int/lit8 v2, v0, 0x1

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cq;->a(SS)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->q:LG/Q;

    invoke-static {p2, p1, v0}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->q:LG/Q;

    invoke-static {p6, v1}, Lcom/google/android/maps/driveabout/vector/c;->a(ILG/Q;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    return-void
.end method

.method private a(LG/w;LG/S;LG/n;F)V
    .locals 16

    invoke-virtual/range {p3 .. p3}, LG/n;->h()LG/r;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, LG/n;->c()LG/s;

    move-result-object v10

    invoke-virtual {v10}, LG/s;->a()I

    move-result v11

    invoke-virtual {v3}, LG/r;->d()I

    move-result v4

    if-eqz v11, :cond_0

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, LG/S;->d()LG/Q;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, LG/S;->g()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, LG/n;->e()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, LG/n;->f()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->o:LG/Q;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    int-to-float v5, v5

    mul-float v5, v5, p4

    float-to-int v5, v5

    invoke-virtual {v6, v7, v9, v5}, LG/Q;->a(III)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, LG/r;->c(I)I

    move-result v9

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, LG/r;->c(I)I

    move-result v3

    move v14, v3

    :goto_0
    const/4 v3, 0x0

    move v15, v3

    :goto_1
    if-ge v15, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    move-object v6, v0

    invoke-virtual {v10, v15, v4, v5, v6}, LG/s;->a(ILG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    move-object v5, v0

    invoke-static {v4, v12, v5}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    move-object v5, v0

    invoke-static {v4, v12, v5}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    move-object v5, v0

    invoke-static {v4, v12, v5}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->p:LG/Q;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v13

    mul-float v7, v7, p4

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, LG/Q;->a(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->p:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    move-object v6, v0

    invoke-static {v4, v5, v6}, LG/Q;->a(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->p:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    move-object v6, v0

    invoke-static {v4, v5, v6}, LG/Q;->a(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->p:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    move-object v6, v0

    invoke-static {v4, v5, v6}, LG/Q;->a(LG/Q;LG/Q;LG/Q;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->o:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->l:LG/Q;

    move-object v6, v0

    invoke-static {v4, v5, v6}, LG/Q;->a(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->o:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->m:LG/Q;

    move-object v6, v0

    invoke-static {v4, v5, v6}, LG/Q;->a(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->o:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->n:LG/Q;

    move-object v6, v0

    invoke-static {v4, v5, v6}, LG/Q;->a(LG/Q;LG/Q;LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->l:LG/Q;

    move-object v5, v0

    invoke-virtual {v4, v5, v8}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->m:LG/Q;

    move-object v5, v0

    invoke-virtual {v4, v5, v8}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->n:LG/Q;

    move-object v5, v0

    invoke-virtual {v4, v5, v8}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v14, v5}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    move-object v4, v0

    int-to-short v5, v3

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(SSS)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v15

    move v2, v3

    invoke-virtual {v0, v1, v2}, LG/n;->a(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->l:LG/Q;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->m:LG/Q;

    move-object v7, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/maps/driveabout/vector/c;->a(LG/Q;LG/Q;LG/Q;LG/Q;II)V

    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v15

    move v2, v3

    invoke-virtual {v0, v1, v2}, LG/n;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->j:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->m:LG/Q;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->n:LG/Q;

    move-object v7, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/maps/driveabout/vector/c;->a(LG/Q;LG/Q;LG/Q;LG/Q;II)V

    :cond_4
    const/4 v3, 0x2

    move-object/from16 v0, p3

    move v1, v15

    move v2, v3

    invoke-virtual {v0, v1, v2}, LG/n;->a(II)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->k:LG/Q;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->i:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->n:LG/Q;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/c;->l:LG/Q;

    move-object v7, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/maps/driveabout/vector/c;->a(LG/Q;LG/Q;LG/Q;LG/Q;II)V

    :cond_5
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_1

    :cond_6
    invoke-static {v9}, Lcom/google/android/maps/driveabout/vector/c;->a(I)I

    move-result v3

    move v14, v3

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 4

    const/high16 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->p()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->q()V

    invoke-interface {v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x201

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->k()V

    const/16 v1, 0x203

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    goto :goto_0
.end method

.method static a(LG/n;Lcom/google/android/maps/driveabout/vector/al;)Z
    .locals 4

    invoke-virtual {p0}, LG/n;->c()LG/s;

    move-result-object v0

    invoke-virtual {v0}, LG/s;->a()I

    move-result v0

    invoke-virtual {p0}, LG/n;->d()I

    move-result v1

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v2, v1, 0x4

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/al;->a:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    const/16 v3, 0x4000

    if-le v2, v3, :cond_0

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/al;->a:I

    if-lez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput v2, p1, Lcom/google/android/maps/driveabout/vector/al;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/al;->b:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/al;->b:I

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/al;->c:I

    mul-int/lit8 v2, v1, 0x6

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/al;->c:I

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/al;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/al;->d:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->h:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/c;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cq;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/cq;II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->d()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->g:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    const/4 v3, 0x4

    const/high16 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->e:Lcom/google/android/maps/driveabout/vector/Z;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->e:Lcom/google/android/maps/driveabout/vector/Z;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/Z;->a(Lcom/google/android/maps/driveabout/vector/u;)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->e:Lcom/google/android/maps/driveabout/vector/Z;

    :goto_1
    const/16 v1, 0x8

    if-ne p4, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const/16 v1, 0x9

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1, p1, v3}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->g:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->g:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0x160

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->g:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/c;->h:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->f:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->g:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method
