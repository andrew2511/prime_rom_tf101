.class public LH/a;
.super Lak/m;


# instance fields
.field private final a:Lf/h;

.field private final b:I

.field private final c:I

.field private final d:LaW/a;

.field private final e:LaR/d;

.field private final f:LH/f;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Z

.field private final j:J

.field private final k:LH/m;

.field private final l:Ljava/lang/String;

.field private final m:Lf/h;

.field private final n:Z

.field private final o:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lf/h;IILaW/a;LaR/d;LH/f;Ljava/lang/String;IZLH/m;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, LH/a;->a:Lf/h;

    iput p2, p0, LH/a;->b:I

    iput p3, p0, LH/a;->c:I

    iput-object p4, p0, LH/a;->d:LaW/a;

    iput-object p5, p0, LH/a;->e:LaR/d;

    iput-object p6, p0, LH/a;->f:LH/f;

    iput-object p7, p0, LH/a;->g:Ljava/lang/String;

    iput p8, p0, LH/a;->h:I

    iput-boolean p9, p0, LH/a;->i:Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    iput-wide v2, p0, LH/a;->j:J

    iput-object p10, p0, LH/a;->k:LH/m;

    iput-object p11, p0, LH/a;->l:Ljava/lang/String;

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, LH/a;->m:Lf/h;

    move/from16 v0, p13

    move-object v1, p0

    iput-boolean v0, v1, LH/a;->n:Z

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, LH/a;->o:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lf/h;IILaW/a;LaR/d;LH/f;Ljava/lang/String;IZLH/m;Ljava/lang/String;Lf/h;ZLjava/lang/String;LH/i;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, LH/a;-><init>(Lf/h;IILaW/a;LaR/d;LH/f;Ljava/lang/String;IZLH/m;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Law/e;)LH/m;
    .locals 3

    new-instance v0, LH/m;

    invoke-static {}, LaR/d;->d()[LaR/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LH/m;-><init>(Law/e;[LaR/d;LH/i;)V

    return-object v0
.end method

.method public static a(II)Law/e;
    .locals 15

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, LH/f;->d()Law/e;

    move-result-object v0

    :goto_0
    invoke-static {v0}, LH/a;->a(Law/e;)LH/m;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {}, LaW/a;->d()LaW/a;

    move-result-object v0

    invoke-static {}, LaR/d;->c()LaR/d;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v7

    invoke-virtual {v7}, Lac/m;->p()Lac/p;

    move-result-object v7

    invoke-interface {v7}, Lac/p;->a()J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v10, p0

    move/from16 v11, p1

    invoke-static/range {v0 .. v14}, LH/a;->a(LaW/a;LaR/d;LH/m;IILjava/lang/String;LH/f;JIIILf/h;ZLjava/lang/String;)Law/e;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(LH/f;JII)Law/e;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    new-instance v0, Law/e;

    sget-object v1, LZ/d;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LH/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {p0}, LH/f;->h()I

    move-result v1

    const v2, 0x1869f

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Law/e;->b(IJ)V

    invoke-virtual {p0}, LH/f;->g()I

    move-result v1

    if-eq v1, v3, :cond_1

    if-eq v1, v3, :cond_1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :cond_1
    invoke-virtual {p0}, LH/f;->e()I

    move-result v1

    if-eq v1, v3, :cond_2

    if-eq v1, v3, :cond_2

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :cond_2
    new-instance v1, Law/e;

    sget-object v2, LZ/o;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v4, p3}, Law/e;->h(II)V

    invoke-virtual {v1, v5, p4}, Law/e;->h(II)V

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, LH/f;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    return-object v0

    :cond_3
    move v1, v4

    goto :goto_0
.end method

.method private static a(LaW/a;LaR/d;LH/m;IILjava/lang/String;LH/f;JIIILf/h;ZLjava/lang/String;)Law/e;
    .locals 11

    new-instance v5, Law/e;

    sget-object v6, LZ/l;->k:Law/f;

    invoke-direct {v5, v6}, Law/e;-><init>(Law/f;)V

    new-instance v6, Law/e;

    sget-object v7, LZ/d;->j:Law/f;

    invoke-direct {v6, v7}, Law/e;-><init>(Law/f;)V

    const/4 v7, 0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v8

    invoke-virtual {v8}, Lac/m;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Law/e;->b(ILjava/lang/String;)V

    invoke-static {}, LH/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, LaW/a;->f()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    invoke-virtual {p0}, LaW/a;->k()Law/e;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Law/e;->b(ILaw/e;)V

    :cond_1
    invoke-virtual {p1}, LaR/d;->f()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x7

    invoke-virtual {p1}, LaR/d;->i()Law/e;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Law/e;->b(ILaw/e;)V

    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Law/e;->b(ILaw/e;)V

    new-instance v6, Law/e;

    sget-object v7, LZ/d;->k:Law/f;

    invoke-direct {v6, v7}, Law/e;-><init>(Law/f;)V

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p3}, Law/e;->h(II)V

    const/4 v7, 0x2

    if-ne p3, v7, :cond_3

    const/4 v7, 0x4

    invoke-virtual {v6, v7, p4}, Law/e;->h(II)V

    const/4 p4, 0x5

    if-eqz p5, :cond_8

    :goto_0
    move-object v0, v6

    move v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_3
    if-lez p9, :cond_4

    const/4 p4, 0x6

    move-object v0, v6

    move v1, p4

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_4
    const/4 p4, 0x2

    invoke-virtual {v5, p4, v6}, Law/e;->a(ILaw/e;)V

    move v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    invoke-static/range {v5 .. v10}, LH/a;->a(Law/e;ILH/f;Lf/h;ZLjava/lang/String;)V

    new-instance p3, Law/e;

    sget-object p4, LZ/l;->j:Law/f;

    invoke-direct {p3, p4}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p0}, LaW/a;->f()Z

    move-result p4

    if-eqz p4, :cond_5

    const/4 p4, 0x1

    invoke-virtual {p0}, LaW/a;->l()Law/e;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Law/e;->b(ILaw/e;)V

    :cond_5
    invoke-virtual {p1}, LaR/d;->f()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    invoke-virtual {p1}, LaR/d;->j()Law/e;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Law/e;->b(ILaw/e;)V

    :cond_6
    move-object/from16 v0, p6

    move-wide/from16 v1, p7

    move/from16 v3, p10

    move/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, LH/a;->a(LH/f;JII)Law/e;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p3, p1, p0}, Law/e;->b(ILaw/e;)V

    const/4 p0, 0x4

    invoke-virtual {v5, p0, p3}, Law/e;->a(ILaw/e;)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, LH/m;->a()Law/e;

    move-result-object p0

    invoke-static {v5, p0}, LH/a;->a(Law/e;Law/e;)V

    invoke-virtual {p2}, LH/m;->b()[LaR/d;

    move-result-object p0

    invoke-static {v5, p0}, LH/a;->a(Law/e;[LaR/d;)V

    :cond_7
    return-object v5

    :cond_8
    const-string p5, ""

    goto :goto_0
.end method

.method static a(Law/e;J)Law/e;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v0

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v6, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Law/e;->f(I)Law/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Law/e;->e(I)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(ILH/f;LH/m;Ljava/lang/String;ILf/h;IZLT/c;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V
    .locals 16

    if-nez p5, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, LH/i;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p7

    move-object/from16 v11, p2

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v15}, LH/i;-><init>(LH/f;Lf/h;IILjava/lang/String;IZLH/m;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V

    new-instance p0, LT/a;

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object v2, v3

    invoke-direct {v0, v1, v2}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, LT/a;->b()V

    goto :goto_0
.end method

.method public static a(LH/f;LH/m;LT/c;Ljava/lang/String;)V
    .locals 13

    if-eqz p0, :cond_0

    const/16 v0, 0x81

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, LH/f;->p()Lf/h;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    move-object/from16 v9, p3

    invoke-static/range {v0 .. v12}, LH/a;->a(ILH/f;LH/m;Ljava/lang/String;ILf/h;IZLT/c;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(LH/f;Lf/h;ZLjava/lang/String;LT/c;)V
    .locals 13

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LH/f;->d()Law/e;

    move-result-object v0

    invoke-static {v0}, LH/a;->a(Law/e;)LH/m;

    move-result-object v2

    const/16 v0, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, LH/f;->p()Lf/h;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v8, p4

    move-object v10, p1

    move v11, p2

    move-object/from16 v12, p3

    invoke-static/range {v0 .. v12}, LH/a;->a(ILH/f;LH/m;Ljava/lang/String;ILf/h;IZLT/c;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static a(Law/e;ILH/f;Lf/h;ZLjava/lang/String;)V
    .locals 3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, LH/g;

    if-eqz v1, :cond_0

    check-cast v0, LH/g;

    invoke-virtual {v0}, LH/g;->ah_()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0, p3, p4, p5}, LH/a;->a(Law/e;Lf/h;ZLjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Law/e;->a(ILaw/e;)V

    goto :goto_0
.end method

.method private static a(Law/e;Law/e;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Law/e;

    sget-object v1, LZ/l;->j:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Law/e;->a(ILaw/e;)V

    :cond_0
    return-void
.end method

.method static a(Law/e;Lf/h;ZLjava/lang/String;)V
    .locals 6

    const/4 v1, 0x7

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v0}, Law/e;->b(II)[B

    move-result-object v0

    new-instance v1, Law/e;

    sget-object v2, LZ/q;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    :try_start_0
    invoke-virtual {v1, v0}, Law/e;->a([B)Law/e;

    if-eqz p1, :cond_0

    new-instance v0, Law/e;

    sget-object v2, LZ/o;->a:Law/f;

    invoke-direct {v0, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x1

    invoke-virtual {p1}, Lf/h;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x2

    invoke-virtual {p1}, Lf/h;->e()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    :cond_0
    invoke-static {p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {v1, v0, p3}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    if-eqz p2, :cond_2

    move v2, v5

    :goto_0
    invoke-virtual {v1, v0, v2}, Law/e;->h(II)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1, v0}, Law/e;->b(Ljava/io/OutputStream;)V

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Law/e;->a(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static a(Law/e;[LaR/d;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, LaR/d;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LaR/d;->j()Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->e(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, LH/a;->a(Law/e;J)Law/e;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Law/e;->a(ILaw/e;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Law/e;

    sget-object v3, LZ/l;->j:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v4, v1}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2}, Law/e;->a(ILaw/e;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Lf/h;ILT/c;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x7

    move-object v2, v1

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move v7, v4

    move-object v8, p2

    move-object v9, v1

    move-object v10, v1

    move v11, v4

    move-object v12, v1

    invoke-static/range {v0 .. v12}, LH/a;->a(ILH/f;LH/m;Ljava/lang/String;ILf/h;IZLT/c;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILf/h;ILT/c;)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v12}, LH/a;->a(ILH/f;LH/m;Ljava/lang/String;ILf/h;IZLT/c;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 19

    new-instance v18, Law/e;

    sget-object v3, Ls/V;->a:Law/f;

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    move-object/from16 v0, p0

    iget v0, v0, LH/a;->c:I

    move v3, v0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object/from16 v0, v18

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->d:LaW/a;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->e:LaR/d;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->k:LH/m;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, LH/a;->c:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, LH/a;->h:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->g:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->f:LH/f;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LH/a;->j:J

    move-wide v10, v0

    move-object/from16 v0, p0

    iget v0, v0, LH/a;->b:I

    move v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->a:Lf/h;

    move-object v13, v0

    invoke-virtual {v13}, Lf/h;->b()I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->a:Lf/h;

    move-object v14, v0

    invoke-virtual {v14}, Lf/h;->d()I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->m:Lf/h;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, LH/a;->n:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->o:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v3 .. v17}, LH/a;->a(LaW/a;LaR/d;LH/m;IILjava/lang/String;LH/f;JIIILf/h;ZLjava/lang/String;)Law/e;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, LH/a;->c:I

    move v4, v0

    const/16 v5, 0x81

    if-ne v4, v5, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Law/e;->f(I)Law/e;

    move-result-object v4

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, LH/a;->l:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    const/4 v4, 0x2

    move-object/from16 v0, v18

    move v1, v4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, LH/a;->c:I

    move v3, v0

    const/16 v4, 0x81

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x3

    move-object/from16 v0, v18

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    goto/16 :goto_0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/V;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {v0, p1, v1}, Law/e;->a(Ljava/io/InputStream;I)I

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LH/k;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, LH/a;->i:Z

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsLocationReport[mapPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/a;->a:Lf/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LH/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LH/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellTowerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/a;->d:LaW/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectedWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/a;->e:LaR/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/a;->f:LH/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchTerm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LH/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", immediate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LH/a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, LH/a;->j:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/a;->k:LH/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
