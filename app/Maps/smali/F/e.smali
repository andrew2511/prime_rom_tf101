.class public LF/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lak/h;

.field private final b:LF/L;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF/e;->a:Lak/h;

    iput-object v0, p0, LF/e;->b:LF/L;

    return-void
.end method

.method constructor <init>(Lak/h;LF/L;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/e;->a:Lak/h;

    iput-object p2, p0, LF/e;->b:LF/L;

    new-instance v0, LF/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LF/h;-><init>(LF/e;LF/r;)V

    invoke-virtual {p1, v0}, Lak/h;->a(Lak/c;)V

    return-void
.end method

.method static synthetic a(LF/e;)LF/L;
    .locals 1

    iget-object v0, p0, LF/e;->b:LF/L;

    return-object v0
.end method

.method protected static a(Laa/E;)LF/u;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Laa/E;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Laa/E;->hasBearing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/16 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Laa/E;->getSpeed()F

    move-result v3

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x4051800000000000L

    cmpg-double v5, v3, v5

    if-gez v5, :cond_2

    const/16 p0, 0x0

    goto :goto_0

    :cond_2
    const-wide v5, 0x4072c00000000000L

    cmpl-double v5, v3, v5

    if-lez v5, :cond_3

    const-wide v3, 0x4072c00000000000L

    :cond_3
    invoke-virtual/range {p0 .. p0}, Laa/E;->g()LG/i;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Laa/E;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, LG/i;->d()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const/16 p0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, LG/i;->c()LG/m;

    move-result-object v6

    invoke-virtual {v6}, LG/m;->b()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Laa/E;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Laa/E;->getLongitude()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, LG/Q;->a(DD)LG/Q;

    move-result-object v8

    invoke-virtual {v8}, LG/Q;->b()D

    move-result-wide v9

    invoke-static {v9, v10}, LG/Q;->a(D)D

    move-result-wide v9

    new-instance v11, LG/Q;

    invoke-direct {v11}, LG/Q;-><init>()V

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x1

    sub-int v13, v7, v13

    if-ge v12, v13, :cond_10

    invoke-virtual {v6, v12}, LG/m;->a(I)LG/Q;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v6, v14}, LG/m;->a(I)LG/Q;

    move-result-object v14

    invoke-static {v13, v14, v8, v11}, LG/Q;->a(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v15

    float-to-double v15, v15

    const-wide/high16 v17, 0x4014

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_f

    const-wide/16 v15, 0x0

    invoke-static {v13, v14}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v8

    float-to-double v13, v8

    invoke-virtual/range {p0 .. p0}, Laa/E;->getBearing()F

    move-result p0

    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v17, 0x4056800000000000L

    cmpg-double p0, v13, v17

    if-ltz p0, :cond_6

    const-wide v17, 0x4070e00000000000L

    cmpl-double p0, v13, v17

    if-lez p0, :cond_9

    :cond_6
    const/16 p0, 0x1

    move v8, v12

    :goto_2
    const/4 v12, 0x1

    move/from16 v0, p0

    move v1, v12

    if-ne v0, v1, :cond_7

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, LG/i;->d(I)Z

    move-result v12

    if-nez v12, :cond_8

    :cond_7
    const/4 v12, -0x1

    move/from16 v0, p0

    move v1, v12

    if-ne v0, v1, :cond_a

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, LG/i;->d(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    const/16 p0, 0x0

    goto/16 :goto_0

    :cond_9
    add-int/lit8 p0, v12, 0x1

    const/4 v8, -0x1

    move/from16 v19, v8

    move/from16 v8, p0

    move/from16 p0, v19

    goto :goto_2

    :cond_a
    move-object v5, v11

    move-wide v12, v15

    move v14, v8

    move-object v8, v11

    :goto_3
    cmpg-double v15, v12, v3

    if-gez v15, :cond_d

    if-lez p0, :cond_c

    const/4 v15, 0x1

    sub-int v15, v7, v15

    if-ge v14, v15, :cond_d

    :cond_b
    add-int v8, v14, p0

    invoke-virtual {v6, v8}, LG/m;->a(I)LG/Q;

    move-result-object v8

    invoke-virtual {v5, v8}, LG/Q;->c(LG/Q;)F

    move-result v15

    float-to-double v15, v15

    div-double/2addr v15, v9

    add-double/2addr v12, v15

    add-int v14, v14, p0

    move-object/from16 v19, v8

    move-object v8, v5

    move-object/from16 v5, v19

    goto :goto_3

    :cond_c
    if-gtz v14, :cond_b

    :cond_d
    cmpl-double p0, v12, v3

    if-lez p0, :cond_11

    invoke-virtual {v8}, LG/Q;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, LG/Q;->a(D)D

    move-result-wide v6

    sub-double v3, v12, v3

    mul-double/2addr v3, v6

    move-wide v0, v3

    double-to-float v0, v0

    move/from16 p0, v0

    invoke-virtual {v5, v8}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p0

    move-object v2, v3

    invoke-static {v0, v1, v2}, LG/Q;->b(LG/Q;FLG/Q;)V

    invoke-virtual {v5, v3}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object p0

    :goto_4
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 p0, 0x0

    goto/16 :goto_0

    :cond_e
    new-instance v3, LG/y;

    invoke-virtual/range {p0 .. p0}, LG/Q;->a()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, LG/Q;->c()I

    move-result p0

    move-object v0, v3

    move v1, v4

    move/from16 v2, p0

    invoke-direct {v0, v1, v2}, LG/y;-><init>(II)V

    new-instance p0, LF/u;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LF/u;-><init>(LG/y;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, LF/u;->a(I)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_10
    const/16 p0, 0x0

    goto/16 :goto_0

    :cond_11
    move-object/from16 p0, v5

    goto :goto_4
.end method

.method private b(Laa/E;)F
    .locals 1

    invoke-virtual {p1}, Laa/E;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->getBearing()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method private c(Laa/E;)F
    .locals 1

    invoke-virtual {p1}, Laa/E;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->getSpeed()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method


# virtual methods
.method public a(LF/M;I)LF/l;
    .locals 11

    const/4 v4, 0x1

    invoke-virtual {p1}, LF/M;->u()[LF/o;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, LF/o;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v0, v1, v4

    move-object v6, v0

    :goto_0
    invoke-virtual {p1}, LF/M;->c()I

    move-result v2

    invoke-virtual {p1}, LF/M;->d()F

    move-result v3

    invoke-virtual {p1}, LF/M;->e()F

    move-result v4

    invoke-virtual {p1}, LF/M;->i()Z

    move-result v5

    invoke-virtual {p1}, LF/M;->q()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1}, LF/M;->B()[LF/K;

    move-result-object v10

    move-object v0, p0

    move v9, p2

    invoke-virtual/range {v0 .. v10}, LF/e;->a([LF/u;IFFZLF/u;IZI[LF/K;)LF/l;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v6, v0

    goto :goto_0
.end method

.method public a(Laa/E;LF/M;I)LF/l;
    .locals 11

    const/4 v8, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LF/u;

    invoke-virtual {p1}, Laa/E;->l()LG/y;

    move-result-object v2

    invoke-direct {v1, v2}, LF/u;-><init>(LG/y;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p2}, LF/M;->c()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v2, 0x4

    if-ne p3, v2, :cond_3

    invoke-static {p1}, LF/e;->a(Laa/E;)LF/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v6, v1

    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Laa/E;->i()LF/i;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, LF/i;->a()LF/M;

    move-result-object v4

    if-ne v4, p2, :cond_1

    invoke-virtual {p2, v3}, LF/M;->a(LF/i;)D

    move-result-wide v1

    invoke-virtual {v3}, LF/i;->d()D

    move-result-wide v3

    add-double/2addr v1, v3

    :cond_1
    const-wide/high16 v3, 0x4069

    invoke-virtual {p1}, Laa/E;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, LG/Q;->a(D)D

    move-result-wide v9

    mul-double/2addr v3, v9

    add-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, LF/M;->c(D)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, LF/M;->l()LF/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [LF/u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LF/u;

    invoke-virtual {p2}, LF/M;->c()I

    move-result v2

    invoke-direct {p0, p1}, LF/e;->b(Laa/E;)F

    move-result v3

    invoke-direct {p0, p1}, LF/e;->c(Laa/E;)F

    move-result v4

    invoke-virtual {p1}, Laa/E;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v5, v8

    :goto_1
    invoke-virtual {p2}, LF/M;->q()I

    move-result v7

    invoke-virtual {p2}, LF/M;->B()[LF/K;

    move-result-object v10

    move-object v0, p0

    move v9, p3

    invoke-virtual/range {v0 .. v10}, LF/e;->a([LF/u;IFFZLF/u;IZI[LF/K;)LF/l;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    :cond_3
    move-object v6, v1

    goto :goto_0
.end method

.method public a(Laa/E;[LF/u;II[LF/K;)LF/l;
    .locals 11

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [LF/u;

    const/4 v2, 0x0

    new-instance v3, LF/u;

    invoke-virtual {p1}, Laa/E;->l()LG/y;

    move-result-object v4

    invoke-direct {v3, v4}, LF/u;-><init>(LG/y;)V

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, p2

    invoke-static {p2, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_1

    const/high16 v2, -0x4080

    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    const/high16 v0, -0x4080

    move v4, v0

    :goto_2
    invoke-virtual {p1}, Laa/E;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v5, v0

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v2, p3

    move v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, LF/e;->a([LF/u;IFFZLF/u;IZI[LF/K;)LF/l;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, LF/e;->b(Laa/E;)F

    move-result v2

    move v3, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, LF/e;->c(Laa/E;)F

    move-result v0

    move v4, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    move v5, v0

    goto :goto_3
.end method

.method protected a([LF/u;IFFZLF/u;IZI[LF/K;)LF/l;
    .locals 11

    new-instance v0, LF/l;

    if-eqz p8, :cond_0

    const/4 v1, 0x3

    move v8, v1

    :goto_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, LF/l;-><init>([LF/u;IFFZLF/u;III[LF/K;)V

    invoke-virtual {v0}, LF/l;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, LaT/g;

    const-string v2, "addRequest"

    invoke-direct {v1, v2, v0}, LaT/g;-><init>(Ljava/lang/String;Lak/d;)V

    invoke-static {v1}, LaT/d;->b(LaT/f;)V

    iget-object v1, p0, LF/e;->a:Lak/h;

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x1

    move v8, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LF/e;->b:LF/L;

    invoke-virtual {v1, v0}, LF/L;->a(LF/l;)V

    goto :goto_1
.end method
