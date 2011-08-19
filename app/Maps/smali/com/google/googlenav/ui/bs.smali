.class public Lcom/google/googlenav/ui/bs;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Law/e;[Law/e;I)I
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bs;->a([Law/e;I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v1

    if-ltz v0, :cond_1

    if-nez v1, :cond_0

    if-gt v0, v2, :cond_1

    :cond_0
    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Law/e;->i(I)I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    :cond_2
    return v0
.end method

.method private static a([Law/e;I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->d(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    aget-object v0, p0, v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(II)Law/e;
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->s:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    return-object v0
.end method

.method public static a(Lu/v;ILcom/google/googlenav/ui/aY;)Lx/J;
    .locals 19

    invoke-static {}, Lu/m;->a()Lu/m;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lu/v;->ay()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lu/m;->b([I)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v14, v13, [I

    new-array v15, v13, [I

    new-instance v16, Ljava/util/Vector;

    move-object/from16 v0, v16

    move v1, v13

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lu/v;->q()[Law/e;

    move-result-object v17

    const/16 p0, 0x0

    move/from16 v18, p0

    :goto_0
    move/from16 v0, v18

    move v1, v13

    if-ge v0, v1, :cond_3

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v5

    aput v5, v14, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bs;->a(Law/e;[Law/e;I)I

    move-result v5

    aput v5, v15, v18

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v5

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_1

    new-instance p0, Lcom/google/googlenav/ui/aQ;

    invoke-direct/range {p0 .. p0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v5, Lcom/google/googlenav/ui/av;->by:Lcom/google/googlenav/ui/av;

    invoke-static {v7, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 p0, v18, 0x1

    move/from16 v18, p0

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v5

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9, v5}, Ljava/util/Vector;-><init>(I)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_2

    const/4 v8, 0x4

    move-object/from16 v0, p0

    move v1, v8

    move v2, v6

    invoke-virtual {v0, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v8

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v10}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v11, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v8, v11}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Lx/B;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object p0

    new-instance v5, Lx/e;

    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lx/e;-><init>(Ljava/lang/String;[I[ILjava/util/Vector;)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lx/k;->a(Lx/e;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x4

    const-string v0, "o"

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Lu/v;Lx/J;)V
    .locals 5

    invoke-interface {p1}, Lx/J;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/e;

    iget-object v1, v0, Lx/e;->b:[I

    array-length v1, v1

    new-array v1, v1, [Law/e;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lx/e;->a:[I

    aget v3, v3, v2

    iget-object v4, v0, Lx/e;->b:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bs;->a(II)Law/e;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu/v;->q()[Law/e;

    move-result-object v0

    invoke-virtual {p0}, Lu/v;->m()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bs;->a([Law/e;[Law/e;I)V

    invoke-virtual {p0, v1}, Lu/v;->a([Law/e;)V

    return-void
.end method

.method private static a([Law/e;[Law/e;I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    move v1, v5

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2, v6}, Law/e;->d(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2, v7}, Law/e;->d(I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v5

    move v2, v5

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    aget-object v3, p1, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v3, v6}, Law/e;->d(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v3, v7}, Law/e;->d(I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v2, "c"

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p2}, Lcom/google/googlenav/ui/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    const-string v0, "nc"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2, p2}, Lcom/google/googlenav/ui/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public static a(Lu/v;)Z
    .locals 2

    invoke-static {}, Lu/m;->a()Lu/m;

    move-result-object v0

    invoke-virtual {p0}, Lu/v;->ay()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/m;->b([I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
