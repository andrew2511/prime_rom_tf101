.class public final LF/M;
.super Ljava/lang/Object;


# static fields
.field private static final D:Ljava/util/Comparator;

.field public static final a:[Ljava/lang/String;


# instance fields
.field private A:Z

.field private final B:Z

.field private C:Z

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:[LF/y;

.field private f:LG/m;

.field private g:LG/I;

.field private final h:[LF/o;

.field private i:I

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/lang/String;

.field private volatile l:[LF/q;

.field private m:[D

.field private n:[D

.field private final o:I

.field private final p:I

.field private final q:Z

.field private final r:F

.field private final s:F

.field private t:J

.field private u:Z

.field private final v:I

.field private w:LF/l;

.field private x:[LF/K;

.field private final y:I

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TRAFFIC_STATUS_UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TRAFFIC_STATUS_BLACK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TRAFFIC_STATUS_RED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TRAFFIC_STATUS_YELLOW"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TRAFFIC_STATUS_GREEN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TRAFFIC_STATUS_IRRELEVANT"

    aput-object v2, v0, v1

    sput-object v0, LF/M;->a:[Ljava/lang/String;

    new-instance v0, LF/k;

    invoke-direct {v0}, LF/k;-><init>()V

    sput-object v0, LF/M;->D:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(II[LF/u;LF/u;FF[LF/y;LG/m;Ljava/lang/String;IILjava/util/ArrayList;[LF/q;ZI[LF/K;ILjava/util/List;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, LF/M;->i:I

    const/4 v2, 0x0

    iput-boolean v2, p0, LF/M;->u:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, LF/M;->C:Z

    iput p1, p0, LF/M;->b:I

    iput p2, p0, LF/M;->c:I

    iput p5, p0, LF/M;->r:F

    iput p6, p0, LF/M;->s:F

    iput-object p7, p0, LF/M;->e:[LF/y;

    iput-object p8, p0, LF/M;->f:LG/m;

    iput-object p9, p0, LF/M;->k:Ljava/lang/String;

    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, LF/M;->p:I

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, LF/M;->j:Ljava/util/ArrayList;

    move/from16 v0, p14

    move-object v1, p0

    iput-boolean v0, v1, LF/M;->d:Z

    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, LF/M;->v:I

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, LF/M;->x:[LF/K;

    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, LF/M;->y:I

    if-eqz p18, :cond_2

    move-object/from16 v2, p18

    :goto_0
    iput-object v2, p0, LF/M;->z:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LF/M;->t:J

    array-length v2, p7

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, LF/M;->q:Z

    new-instance v2, LG/I;

    iget-object v3, p0, LF/M;->f:LG/m;

    invoke-direct {v2, v3}, LG/I;-><init>(LG/m;)V

    iput-object v2, p0, LF/M;->g:LG/I;

    invoke-direct {p0}, LF/M;->G()V

    iget-object v2, p0, LF/M;->e:[LF/y;

    invoke-static {v2}, LF/M;->c([LF/y;)V

    iget-object v2, p0, LF/M;->e:[LF/y;

    invoke-static {v2}, LF/M;->d([LF/y;)V

    iget-object v2, p0, LF/M;->e:[LF/y;

    invoke-static {v2}, LF/M;->a([LF/y;)Z

    move-result v2

    iput-boolean v2, p0, LF/M;->A:Z

    iget-object v2, p0, LF/M;->e:[LF/y;

    invoke-static {v2}, LF/M;->b([LF/y;)Z

    move-result v2

    iput-boolean v2, p0, LF/M;->B:Z

    if-eqz p3, :cond_4

    array-length v2, p3

    new-array v2, v2, [LF/o;

    iput-object v2, p0, LF/M;->h:[LF/o;

    const/4 v2, 0x0

    :goto_2
    array-length v3, p3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, LF/M;->h:[LF/o;

    new-instance v4, LF/o;

    aget-object v5, p3, v2

    invoke-direct {v4, v5, p0}, LF/o;-><init>(LF/u;LF/M;)V

    aput-object v4, v3, v2

    if-eqz p4, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {v3}, LF/u;->e()LG/y;

    move-result-object v3

    invoke-virtual {p4}, LF/u;->e()LG/y;

    move-result-object v4

    invoke-virtual {v3, v4}, LG/y;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, LF/M;->h:[LF/o;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, LF/o;->a(Z)V

    :cond_0
    iget-object v3, p0, LF/M;->h:[LF/o;

    aget-object v3, v3, v2

    invoke-virtual {v3}, LF/o;->d()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, LF/M;->C:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, LF/M;->h:[LF/o;

    :cond_5
    invoke-virtual {p0}, LF/M;->s()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    if-ne p2, v2, :cond_7

    :cond_6
    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, p0, LF/M;->u:Z

    if-nez p13, :cond_8

    invoke-direct {p0}, LF/M;->F()V

    move/from16 v0, p11

    move-object v1, p0

    iput v0, v1, LF/M;->o:I

    :goto_4
    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, LF/M;->l:[LF/q;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, LF/M;->b(D)I

    move-result v2

    iput v2, p0, LF/M;->o:I

    goto :goto_4
.end method

.method private F()V
    .locals 6

    iget-object v0, p0, LF/M;->e:[LF/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, LF/M;->e:[LF/y;

    array-length v0, v0

    new-array v0, v0, [LF/q;

    const/4 v1, 0x0

    iget-object v2, p0, LF/M;->e:[LF/y;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_0
    if-ltz v1, :cond_0

    new-instance v3, LF/q;

    iget-object v4, p0, LF/M;->e:[LF/y;

    aget-object v4, v4, v1

    invoke-virtual {v4}, LF/y;->x()I

    move-result v4

    invoke-direct {v3, v4, v2}, LF/q;-><init>(II)V

    aput-object v3, v0, v1

    iget-object v3, p0, LF/M;->e:[LF/y;

    aget-object v3, v3, v1

    invoke-virtual {v3}, LF/y;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, LF/M;->l:[LF/q;

    :cond_1
    return-void
.end method

.method private G()V
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    iget-object v0, p0, LF/M;->f:LG/m;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, LF/M;->m:[D

    iget-object v0, p0, LF/M;->f:LG/m;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, LF/M;->n:[D

    iget-object v0, p0, LF/M;->f:LG/m;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, LF/M;->m:[D

    aput-wide v1, v0, v3

    iget-object v0, p0, LF/M;->n:[D

    aput-wide v1, v0, v3

    move v0, v9

    move-wide v3, v1

    :goto_0
    iget-object v5, p0, LF/M;->m:[D

    array-length v5, v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, LF/M;->f:LG/m;

    sub-int v6, v0, v9

    invoke-virtual {v5, v6}, LG/m;->b(I)F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v3, v5

    iget-object v7, p0, LF/M;->f:LG/m;

    invoke-virtual {v7, v0}, LG/m;->a(I)LG/Q;

    move-result-object v7

    invoke-virtual {v7}, LG/Q;->b()D

    move-result-wide v7

    invoke-static {v7, v8}, LG/Q;->a(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    iget-object v5, p0, LF/M;->m:[D

    aput-wide v3, v5, v0

    iget-object v5, p0, LF/M;->n:[D

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(IILF/u;LF/u;[LF/y;LG/m;Ljava/lang/String;I[LF/K;ILjava/util/List;)LF/M;
    .locals 21

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p4

    array-length v0, v0

    move v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, p4, v2

    invoke-virtual {v3}, LF/y;->x()I

    move-result v3

    if-ltz v3, :cond_0

    aget-object v3, p4, v2

    invoke-virtual {v3}, LF/y;->x()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, LG/m;->b()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid point index for step: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 p2, v0

    const/16 p3, 0x1

    sub-int p2, p2, p3

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " point index: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object p2, p4, v2

    invoke-virtual/range {p2 .. p2}, LF/y;->x()I

    move-result p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    new-array v5, v2, [LF/u;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const/16 p2, 0x1

    aput-object p3, v5, p2

    const/16 p2, 0x0

    const/16 p3, 0x0

    const/4 v2, 0x1

    move/from16 v13, p3

    move/from16 v12, p2

    move/from16 p2, v2

    :goto_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 p3, v0

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    aget-object p3, p4, p2

    invoke-virtual/range {p3 .. p3}, LF/y;->f()I

    move-result p3

    add-int p3, p3, v12

    aget-object v2, p4, p2

    invoke-virtual {v2}, LF/y;->e()I

    move-result v2

    add-int/2addr v2, v13

    add-int/lit8 p2, p2, 0x1

    move v13, v2

    move/from16 v12, p3

    goto :goto_1

    :cond_3
    new-instance v2, LF/M;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v17, p7

    move-object/from16 v18, p8

    move/from16 v19, p9

    move-object/from16 v20, p10

    invoke-direct/range {v2 .. v20}, LF/M;-><init>(II[LF/u;LF/u;FF[LF/y;LG/m;Ljava/lang/String;IILjava/util/ArrayList;[LF/q;ZI[LF/K;ILjava/util/List;)V

    return-object v2
.end method

.method public static a(Law/e;I[LF/u;FFZLF/u;I[LF/K;)LF/M;
    .locals 22

    const/16 v3, 0x9

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trips with multiple routes are not supported."

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/16 v3, 0x15

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x14

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v12

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v5

    const/16 v4, 0xb

    invoke-virtual {v5, v4}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xb

    invoke-virtual {v5, v4}, Law/e;->d(I)I

    move-result v4

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Law/e;->h(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Law/e;->d(I)I

    move-result v6

    move v13, v6

    :goto_2
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Law/e;->h(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Law/e;->d(I)I

    move-result v6

    move v14, v6

    :goto_3
    invoke-static/range {p0 .. p0}, LF/M;->c(Law/e;)Ljava/util/List;

    move-result-object v21

    invoke-static {v5}, LF/M;->b(Law/e;)[LG/y;

    move-result-object p0

    invoke-static/range {p0 .. p0}, LF/M;->a([LG/y;)LG/m;

    move-result-object v11

    if-nez v3, :cond_5

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p0, v0

    const/4 v3, 0x1

    sub-int p0, p0, v3

    aget-object p0, p2, p0

    move-object v0, v5

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, LF/M;->a(Law/e;LG/m;LF/u;)[LF/y;

    move-result-object p0

    move-object/from16 v10, p0

    :goto_4
    const/16 p0, 0x0

    aget-object p0, p2, p0

    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    aget-object p2, p2, v3

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, LF/M;->a(Law/e;LF/u;LF/u;)[LF/u;

    move-result-object v6

    invoke-static {v5, v11}, LF/M;->a(Law/e;LG/m;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {v5}, LF/M;->a(Law/e;)[LF/q;

    move-result-object v16

    const/16 v20, -0x1

    new-instance v3, LF/M;

    move/from16 v5, p1

    move-object/from16 v7, p6

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v17, p5

    move/from16 v18, p7

    move-object/from16 v19, p8

    invoke-direct/range {v3 .. v21}, LF/M;-><init>(II[LF/u;LF/u;FF[LF/y;LG/m;Ljava/lang/String;IILjava/util/ArrayList;[LF/q;ZI[LF/K;ILjava/util/List;)V

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    move v13, v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    move v14, v6

    goto :goto_3

    :cond_5
    const/16 p0, 0x0

    move/from16 v0, p0

    new-array v0, v0, [LF/y;

    move-object/from16 p0, v0

    move-object/from16 v10, p0

    goto :goto_4
.end method

.method private static a(LF/y;)LF/w;
    .locals 3

    invoke-virtual {p0}, LF/y;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/w;

    invoke-virtual {p0}, LF/w;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([LG/y;)LG/m;
    .locals 10

    const/high16 v8, 0x4100

    array-length v0, p0

    new-instance v1, LG/b;

    invoke-direct {v1, v0}, LG/b;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v9, v3

    move-object v3, v2

    move v2, v9

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    invoke-virtual {v4}, LG/y;->a()I

    move-result v5

    invoke-virtual {v4}, LG/y;->b()I

    move-result v4

    invoke-static {v5, v4}, LG/Q;->b(II)LG/Q;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v5}, LG/y;->a()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    aget-object v6, p0, v6

    invoke-virtual {v6}, LG/y;->b()I

    move-result v6

    invoke-static {v5, v6}, LG/Q;->b(II)LG/Q;

    move-result-object v5

    invoke-virtual {v5, v4}, LG/Q;->c(LG/Q;)F

    move-result v6

    cmpl-float v7, v6, v8

    if-lez v7, :cond_0

    div-float v6, v8, v6

    invoke-static {v4, v5, v6, v4}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    :cond_0
    invoke-virtual {v4, v3}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, LG/Q;->f()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v4, v3}, LG/Q;->a(I)V

    :cond_1
    invoke-virtual {v1, v4}, LG/b;->a(LG/Q;)Z

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, LG/b;->d()LG/m;

    move-result-object v0

    return-object v0
.end method

.method static a(Law/e;LG/m;)Ljava/util/ArrayList;
    .locals 10

    const/16 v9, 0xf

    const/4 v2, 0x0

    const/4 v8, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v9}, Law/e;->i(I)I

    move-result v1

    move v3, v2

    move v4, v2

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v9, v2}, Law/e;->e(II)Law/e;

    move-result-object v5

    invoke-virtual {v5, v8}, Law/e;->d(I)I

    move-result v6

    invoke-virtual {p1}, LG/m;->b()I

    move-result v7

    if-lt v6, v7, :cond_0

    invoke-virtual {p1}, LG/m;->b()I

    move-result v6

    sub-int/2addr v6, v8

    :cond_0
    if-le v6, v4, :cond_1

    new-instance v7, LF/g;

    invoke-direct {v7, v4, v6, v3}, LF/g;-><init>(III)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Law/e;->d(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LG/m;->b()I

    move-result v1

    sub-int/2addr v1, v8

    if-ge v4, v1, :cond_3

    new-instance v1, LF/g;

    invoke-virtual {p1}, LG/m;->b()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-direct {v1, v4, v2, v3}, LF/g;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method static a([LF/y;)Z
    .locals 6

    const/4 v5, 0x0

    array-length v1, p0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v0, p0, v2

    invoke-virtual {v0}, LF/y;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/n;

    invoke-virtual {v0}, LF/n;->a()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/16 v4, 0x9

    if-ne v0, v4, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method static a(Law/e;)[LF/q;
    .locals 7

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [LF/q;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Law/e;->d(I)I

    move-result v4

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Law/e;->d(I)I

    move-result v3

    new-instance v5, LF/q;

    invoke-direct {v5, v4, v3}, LF/q;-><init>(II)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Law/e;LF/u;LF/u;)[LF/u;
    .locals 8

    const/16 v7, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v7}, Law/e;->i(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [LF/u;

    new-instance v2, LF/u;

    invoke-direct {v2, p1}, LF/u;-><init>(LF/u;)V

    aput-object v2, v1, v4

    add-int/lit8 v2, v0, 0x1

    new-instance v3, LF/u;

    invoke-direct {v3, p2}, LF/u;-><init>(LF/u;)V

    aput-object v3, v1, v2

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    new-instance v4, LF/u;

    invoke-virtual {p0, v7, v2}, Law/e;->e(II)Law/e;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LF/u;-><init>(Law/e;Ljava/lang/String;)V

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static a(Law/e;LG/m;LF/u;)[LF/y;
    .locals 13

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v12}, Law/e;->i(I)I

    move-result v8

    new-array v9, v8, [LF/y;

    const/4 v0, 0x0

    move v2, v10

    move-object v1, v0

    :goto_0
    if-ge v2, v8, :cond_3

    invoke-virtual {p0, v12, v2}, Law/e;->e(II)Law/e;

    move-result-object v0

    if-eqz v1, :cond_4

    const/4 v3, 0x3

    invoke-static {v1, v3}, Law/b;->e(Law/e;I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v1, v4}, Law/b;->e(Law/e;I)I

    move-result v1

    move v4, v1

    :goto_1
    const/4 v1, 0x5

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v1

    invoke-virtual {p1}, LG/m;->b()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    if-lez v1, :cond_0

    sub-int v5, v1, v11

    invoke-virtual {p1, v5}, LG/m;->c(I)F

    move-result v5

    :goto_2
    invoke-virtual {p1}, LG/m;->b()I

    move-result v6

    sub-int/2addr v6, v11

    if-ge v1, v6, :cond_1

    invoke-virtual {p1, v1}, LG/m;->c(I)F

    move-result v6

    :goto_3
    invoke-virtual {p1, v1}, LG/m;->a(I)LG/Q;

    move-result-object v1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, LF/y;->a(Law/e;LG/Q;IIIFFLF/u;)LF/y;

    move-result-object v1

    aput-object v1, v9, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, LG/m;->c(I)F

    move-result v5

    goto :goto_2

    :cond_1
    sub-int v6, v1, v11

    invoke-virtual {p1, v6}, LG/m;->c(I)F

    move-result v6

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    move v6, v5

    goto :goto_3

    :cond_3
    return-object v9

    :cond_4
    move v4, v10

    move v3, v10

    goto :goto_1
.end method

.method private b(LG/Q;DZ)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, LF/M;->g:LG/I;

    move-object v4, v0

    const-wide/high16 v5, 0x3ff0

    add-double v5, v5, p2

    double-to-int v5, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, LG/S;->a(LG/Q;I)LG/S;

    move-result-object v5

    invoke-virtual {v4, v5}, LG/I;->a(LG/S;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, LG/Q;

    invoke-direct {v8}, LG/Q;-><init>()V

    new-instance v9, LG/Q;

    invoke-direct {v9}, LG/Q;-><init>()V

    new-instance v10, LG/Q;

    invoke-direct {v10}, LG/Q;-><init>()V

    const/4 v4, 0x0

    move v11, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v11, v4, :cond_5

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG/o;

    invoke-virtual {v4}, LG/o;->a()I

    move-result v5

    const/4 v12, 0x1

    sub-int v12, v5, v12

    const/4 v5, 0x0

    move v13, v5

    :goto_2
    if-ge v13, v12, :cond_4

    invoke-virtual {v4, v13, v8}, LG/o;->a(ILG/Q;)V

    add-int/lit8 v5, v13, 0x1

    invoke-virtual {v4, v5, v9}, LG/o;->a(ILG/Q;)V

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v10

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v5

    float-to-double v14, v5

    cmpg-double v5, v14, p2

    if-gez v5, :cond_2

    const/16 v16, 0x0

    if-nez p4, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    new-instance v5, LF/i;

    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, LF/i;-><init>(LF/k;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    if-eqz v5, :cond_2

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, LF/i;->a(LF/i;LF/M;)LF/M;

    invoke-static {v5, v14, v15}, LF/i;->a(LF/i;D)D

    invoke-virtual {v4}, LG/o;->b()I

    move-result v14

    add-int/2addr v14, v13

    invoke-static {v5, v14}, LF/i;->a(LF/i;I)I

    invoke-static {v10}, LG/Q;->a(LG/Q;)LG/Q;

    move-result-object v14

    invoke-static {v5, v14}, LF/i;->a(LF/i;LG/Q;)LG/Q;

    invoke-static {v8, v9}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v5, v14, v15}, LF/i;->b(LF/i;D)D

    :cond_2
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LF/i;

    invoke-static {v5}, LF/i;->b(LF/i;)D

    move-result-wide v17

    cmpg-double v5, v14, v17

    if-gez v5, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LF/i;

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    move-object v4, v7

    goto/16 :goto_0

    :cond_7
    move-object/from16 v5, v16

    goto :goto_3
.end method

.method static b([LF/y;)Z
    .locals 6

    const/4 v5, 0x0

    array-length v1, p0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p0, v2

    invoke-virtual {v0}, LF/y;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/n;

    invoke-virtual {v0}, LF/n;->a()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1
.end method

.method static b(Law/e;)[LG/y;
    .locals 14

    const/16 v13, 0x9

    const/4 v12, 0x7

    const/4 v11, 0x0

    invoke-virtual {p0, v12}, Law/e;->i(I)I

    move-result v0

    move v1, v11

    move v2, v11

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v12, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v13}, Law/e;->c(I)[B

    move-result-object v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v2, [LG/y;

    move v2, v11

    move v3, v11

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v12, v2}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Law/e;->f(I)Law/e;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Law/e;->f(I)Law/e;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Law/e;->d(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Law/e;->d(I)I

    move-result v5

    add-int/lit8 v7, v3, 0x1

    new-instance v8, LG/y;

    invoke-direct {v8, v6, v5}, LG/y;-><init>(II)V

    aput-object v8, v1, v3

    invoke-virtual {v4, v13}, Law/e;->c(I)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v11

    :goto_2
    if-ge v5, v4, :cond_1

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v5, v9

    int-to-short v5, v5

    add-int/2addr v5, v7

    add-int/lit8 v7, v10, 0x1

    aget-byte v9, v3, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, v9

    int-to-short v7, v7

    add-int/2addr v6, v7

    add-int/lit8 v7, v8, 0x1

    new-instance v9, LG/y;

    invoke-direct {v9, v5, v6}, LG/y;-><init>(II)V

    aput-object v9, v1, v8

    move v8, v7

    move v7, v5

    move v5, v10

    goto :goto_2

    :cond_1
    move v3, v8

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    move v3, v7

    goto :goto_3
.end method

.method private static c(Law/e;)Ljava/util/List;
    .locals 8

    const/16 v7, 0x1a

    const/4 v6, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v7}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v7, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6}, Law/e;->h(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v6}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v5, LF/v;

    invoke-direct {v5, v4, v3}, LF/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static c([LF/y;)V
    .locals 4

    const/4 v3, 0x1

    move v0, v3

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    sub-int v1, v0, v3

    aget-object v1, p0, v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, LF/y;->a(LF/y;)V

    aget-object v1, p0, v0

    sub-int v2, v0, v3

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, LF/y;->b(LF/y;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static d([LF/y;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_2

    aget-object v0, p0, v1

    invoke-virtual {v0}, LF/y;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/w;

    invoke-virtual {v0}, LF/w;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, LF/M;->a(LF/y;)LF/w;

    move-result-object v3

    invoke-virtual {v0, v3}, LF/w;->a(LF/w;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method A()LF/l;
    .locals 1

    iget-object v0, p0, LF/M;->w:LF/l;

    return-object v0
.end method

.method public B()[LF/K;
    .locals 1

    iget-object v0, p0, LF/M;->x:[LF/K;

    return-object v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, LF/M;->A:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, LF/M;->B:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, LF/M;->C:Z

    return v0
.end method

.method public a(LF/i;)D
    .locals 4

    iget-object v0, p0, LF/M;->m:[D

    invoke-virtual {p1}, LF/i;->e()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, LF/M;->f:LG/m;

    invoke-virtual {p1}, LF/i;->e()I

    move-result v3

    invoke-virtual {v2, v3}, LG/m;->a(I)LG/Q;

    move-result-object v2

    invoke-static {p1}, LF/i;->a(LF/i;)LG/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, LG/Q;->c(LG/Q;)F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public a(D)I
    .locals 1

    iget-object v0, p0, LF/M;->m:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public a(LG/Q;D)LF/i;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, LF/M;->b(LG/Q;DZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/i;

    move-object v0, p0

    goto :goto_0
.end method

.method public a(I)LF/y;
    .locals 1

    iget-object v0, p0, LF/M;->e:[LF/y;

    aget-object v0, v0, p1

    return-object v0
.end method

.method a(LF/l;)V
    .locals 0

    iput-object p1, p0, LF/M;->w:LF/l;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LF/M;->k:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, LF/M;->y:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LG/Q;DZ)[LF/i;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, LF/M;->b(LG/Q;DZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [LF/i;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [LF/i;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [LF/i;

    if-eqz p4, :cond_1

    sget-object v0, LF/M;->D:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public b(I)D
    .locals 2

    iget-object v0, p0, LF/M;->m:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b(LF/i;)D
    .locals 6

    iget-object v0, p0, LF/M;->n:[D

    invoke-virtual {p1}, LF/i;->e()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, LF/M;->f:LG/m;

    invoke-virtual {p1}, LF/i;->e()I

    move-result v3

    invoke-virtual {v2, v3}, LG/m;->a(I)LG/Q;

    move-result-object v2

    invoke-static {p1}, LF/i;->a(LF/i;)LG/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, LG/Q;->c(LG/Q;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {p1}, LF/i;->a(LF/i;)LG/Q;

    move-result-object v4

    invoke-virtual {v4}, LG/Q;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, LG/Q;->a(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LF/M;->y:I

    return v0
.end method

.method public b(D)I
    .locals 10

    const/4 v4, 0x0

    iget-object v0, p0, LF/M;->l:[LF/q;

    new-instance v1, LF/q;

    invoke-virtual {p0, p1, p2}, LF/M;->a(D)I

    move-result v2

    invoke-direct {v1, v2, v4}, LF/q;-><init>(II)V

    new-instance v2, LF/j;

    invoke-direct {v2, p0}, LF/j;-><init>(LF/M;)V

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    move v0, v4

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, LF/M;->m:[D

    aget-object v3, v0, v1

    iget v3, v3, LF/q;->a:I

    aget-wide v2, v2, v3

    iget-object v4, p0, LF/M;->m:[D

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v0, v5

    iget v5, v5, LF/q;->a:I

    aget-wide v4, v4, v5

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v0, v6

    iget v6, v6, LF/q;->b:I

    int-to-double v6, v6

    sub-double v8, v4, p1

    sub-double v2, v4, v2

    div-double v2, v8, v2

    aget-object v4, v0, v1

    iget v4, v4, LF/q;->b:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, LF/q;->b:I

    sub-int v0, v4, v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_0
.end method

.method public c(I)D
    .locals 2

    iget-object v0, p0, LF/M;->n:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LF/M;->b:I

    return v0
.end method

.method public c(D)Ljava/util/Collection;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    :goto_0
    iget-object v2, p0, LF/M;->h:[LF/o;

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LF/M;->h:[LF/o;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LF/o;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LF/M;->h:[LF/o;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LF/o;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LF/M;->h:[LF/o;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LF/o;->b()D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-lez v2, :cond_0

    iget-object v2, p0, LF/M;->h:[LF/o;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, LF/M;->r:F

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, LF/M;->i:I

    return-void
.end method

.method public e()F
    .locals 1

    iget v0, p0, LF/M;->s:F

    return v0
.end method

.method public f()Z
    .locals 1

    iget v0, p0, LF/M;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, LF/M;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, LF/M;->c:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, LF/M;->d:Z

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, LF/M;->e:[LF/y;

    array-length v0, v0

    return v0
.end method

.method public k()LF/u;
    .locals 2

    iget-object v0, p0, LF/M;->h:[LF/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LF/M;->h:[LF/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public l()LF/u;
    .locals 3

    iget-object v0, p0, LF/M;->h:[LF/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LF/M;->h:[LF/o;

    iget-object v1, p0, LF/M;->h:[LF/o;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public m()LG/m;
    .locals 1

    iget-object v0, p0, LF/M;->f:LG/m;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, LF/M;->o:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, LF/M;->p:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, LF/M;->v:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, LF/M;->i:I

    return v0
.end method

.method public r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LF/M;->z:Ljava/util/List;

    return-object v0
.end method

.method public s()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LF/M;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/M;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, LF/M;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, LF/M;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/g;

    invoke-virtual {p0}, LF/g;->a()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LF/g;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public t()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, LF/M;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public u()[LF/o;
    .locals 1

    iget-object v0, p0, LF/M;->h:[LF/o;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/M;->k:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, LF/M;->q:Z

    return v0
.end method

.method public x()J
    .locals 2

    iget-wide v0, p0, LF/M;->t:J

    return-wide v0
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LF/M;->j:Ljava/util/ArrayList;

    invoke-direct {p0}, LF/M;->F()V

    return-void
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, LF/M;->u:Z

    return v0
.end method
