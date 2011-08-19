.class public LJ/b;
.super LJ/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LJ/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected a_(Ljava/lang/String;)LJ/a;
    .locals 19

    new-instance v13, LJ/a;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LJ/a;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/googlenav/layer/h;->b()Ljava/util/Vector;

    move-result-object v15

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-static {v0, v1, v2, v3}, LR/a;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_0
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_3

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlenav/layer/b;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/layer/b;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/layer/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/google/googlenav/layer/h;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/layer/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    goto :goto_0

    :cond_1
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, LJ/o;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-virtual/range {p0 .. p0}, LJ/b;->e()I

    move-result v10

    const/4 v11, 0x0

    move-object v6, v5

    move-object v12, v5

    invoke-direct/range {v4 .. v12}, LJ/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v13, v4}, LJ/a;->b(LJ/o;)V

    goto :goto_1

    :cond_2
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    new-instance v4, LJ/o;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-virtual/range {p0 .. p0}, LJ/b;->e()I

    move-result v6

    add-int/lit8 v10, v6, 0x32

    const/4 v11, 0x0

    move-object v6, v5

    move-object v12, v5

    invoke-direct/range {v4 .. v12}, LJ/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v13, v4}, LJ/a;->b(LJ/o;)V

    goto :goto_1

    :cond_3
    return-object v13
.end method
