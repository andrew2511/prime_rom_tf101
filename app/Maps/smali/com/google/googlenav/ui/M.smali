.class public Lcom/google/googlenav/ui/M;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/B;Z)Lcom/google/googlenav/bk;
    .locals 1

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/B;->b()Lcom/google/googlenav/bk;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/B;->a()Lcom/google/googlenav/bk;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(IZ)Lcom/google/googlenav/ui/av;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/av;->bG:Lcom/google/googlenav/ui/av;

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->bH:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/av;->bI:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :sswitch_1
    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/av;->bJ:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/av;->bK:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :sswitch_2
    if-eqz p1, :cond_2

    sget-object v0, Lcom/google/googlenav/ui/av;->bL:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/googlenav/ui/av;->bM:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(I)Lcom/google/googlenav/ui/bi;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    sget-char v0, Lcom/google/googlenav/ui/aV;->bj:C

    :goto_1
    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->p()Lk/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-char v0, Lcom/google/googlenav/ui/aV;->bk:C

    goto :goto_1

    :sswitch_2
    sget-char v0, Lcom/google/googlenav/ui/aV;->bl:C

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Lcom/google/googlenav/bk;Lcom/google/googlenav/ui/aG;LaD/n;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/bk;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/bk;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    sget-char v0, Lcom/google/googlenav/ui/aV;->bm:C

    :goto_1
    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-char v0, Lcom/google/googlenav/ui/aV;->bn:C

    goto :goto_1

    :sswitch_2
    sget-char v0, Lcom/google/googlenav/ui/aV;->bo:C

    goto :goto_1

    :sswitch_3
    sget-char v0, Lcom/google/googlenav/ui/aV;->bp:C

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {p0}, Lcom/google/googlenav/bk;->c()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->q()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/aS;Lcom/google/googlenav/ui/aG;LaD/n;)C

    move-result v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x7d0 -> :sswitch_2
        0xbb8 -> :sswitch_3
    .end sparse-switch
.end method

.method public static a(Lcom/google/googlenav/bk;Z)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/bk;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/bk;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move-object v0, v1

    goto :goto_0

    :sswitch_0
    sget-char v0, Lcom/google/googlenav/ui/aV;->be:C

    :goto_1
    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-char v0, Lcom/google/googlenav/ui/aV;->bf:C

    goto :goto_1

    :sswitch_2
    sget-char v0, Lcom/google/googlenav/ui/aV;->bg:C

    goto :goto_1

    :cond_1
    sget-char v0, Lcom/google/googlenav/ui/aV;->bi:C

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Lcom/google/googlenav/c;ZLx/U;Lcom/google/googlenav/ui/aG;LaD/n;)Ljava/util/Vector;
    .locals 21

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/c;->D()Lcom/google/googlenav/B;

    move-result-object p2

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/M;->a(Lcom/google/googlenav/B;Z)Lcom/google/googlenav/bk;

    move-result-object p1

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/c;->aS()I

    move-result v8

    if-ge v7, v8, :cond_10

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->c(I)Law/e;

    move-result-object v9

    const/4 v10, 0x6

    const/4 v13, 0x0

    invoke-static {v9, v10, v13}, Law/b;->c(Law/e;II)I

    move-result v10

    const/4 v13, 0x2

    invoke-virtual {v9, v13}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v13

    if-nez p2, :cond_6

    const/4 v10, 0x0

    move-object/from16 v20, v10

    move-object v10, v13

    move v13, v8

    move-object/from16 v8, v20

    :goto_1
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    if-nez v13, :cond_0

    sget-char v15, Lcom/google/googlenav/ui/aV;->bi:C

    invoke-static {v15}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/google/googlenav/ui/av;->bO:Lcom/google/googlenav/ui/av;

    invoke-static/range {v15 .. v16}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    if-eqz v13, :cond_b

    sget-object v15, Lcom/google/googlenav/ui/av;->at:Lcom/google/googlenav/ui/av;

    :goto_2
    invoke-static {v10, v15}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v10, 0x0

    :goto_3
    const/4 v15, 0x3

    invoke-virtual {v9, v15}, Law/e;->i(I)I

    move-result v15

    if-ge v10, v15, :cond_1

    const/4 v15, 0x3

    invoke-virtual {v9, v15, v10}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, LR/a;->b(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_d

    if-eqz v13, :cond_c

    sget-object v10, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    :goto_4
    invoke-static {v15, v10}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Law/e;->h(I)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Law/e;->f(I)Law/e;

    move-result-object v10

    invoke-static {v10}, Lcom/google/googlenav/ui/aM;->d(Law/e;)J

    move-result-wide v15

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v10

    invoke-virtual {v10}, Lac/m;->p()Lac/p;

    move-result-object v10

    invoke-interface {v10}, Lac/p;->a()J

    move-result-wide v17

    const/16 v10, 0x28b

    invoke-static {v10}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lac/m;->i()Lac/v;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide v1, v15

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lac/v;->a(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v13, :cond_e

    sget-object v15, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    :goto_5
    invoke-static {v10, v15}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    new-instance v10, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v10}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v10, v14}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v10

    if-eqz v8, :cond_3

    invoke-virtual {v10, v8}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_3
    if-eqz v13, :cond_4

    const/16 v8, 0x76c

    invoke-virtual {v10, v8}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    :cond_4
    const/16 v8, 0x25

    invoke-virtual {v10, v8}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    const/4 v8, 0x7

    invoke-virtual {v9, v8}, Law/e;->h(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x7

    invoke-virtual {v9, v8}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/googlenav/ui/aS;

    sget v14, Lcom/google/googlenav/ui/aV;->bQ:I

    invoke-direct {v9, v8, v14}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    move-object v0, v9

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual/range {p3 .. p3}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v8

    invoke-virtual {v8, v9}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v13, :cond_f

    move-object v8, v11

    :goto_6
    invoke-virtual {v10}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/googlenav/B;->a(I)Lcom/google/googlenav/bk;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bk;->a(Lcom/google/googlenav/bk;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v8, 0x0

    :cond_7
    invoke-virtual {v14}, Lcom/google/googlenav/bk;->a()I

    move-result v15

    if-lez v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/google/googlenav/bk;->b()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_8
    invoke-virtual {v14}, Lcom/google/googlenav/bk;->c()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_9

    invoke-static {v10}, Lcom/google/googlenav/ui/M;->a(I)Lcom/google/googlenav/ui/bi;

    move-result-object v10

    move-object/from16 v20, v10

    move-object v10, v13

    move v13, v8

    move-object/from16 v8, v20

    goto/16 :goto_1

    :cond_9
    new-instance v10, Lcom/google/googlenav/ui/aS;

    sget v15, Lcom/google/googlenav/ui/aV;->bQ:I

    invoke-direct {v10, v14, v15}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v15

    invoke-virtual {v15, v10}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v10, v13

    move v13, v8

    move-object v8, v14

    goto/16 :goto_1

    :cond_b
    sget-object v15, Lcom/google/googlenav/ui/av;->bO:Lcom/google/googlenav/ui/av;

    goto/16 :goto_2

    :cond_c
    sget-object v10, Lcom/google/googlenav/ui/av;->bN:Lcom/google/googlenav/ui/av;

    goto/16 :goto_4

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_e
    sget-object v15, Lcom/google/googlenav/ui/av;->bN:Lcom/google/googlenav/ui/av;

    goto/16 :goto_5

    :cond_f
    move-object v8, v12

    goto :goto_6

    :cond_10
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v7

    move-object v0, v7

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    :cond_11
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v5 .. v10}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;IZLcom/google/googlenav/ui/aG;LaD/n;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_14

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/bk;->a()I

    move-result p0

    if-nez p0, :cond_13

    :cond_12
    const/16 p0, 0x283

    invoke-static/range {p0 .. p0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object p0

    :goto_7
    new-instance p1, Lcom/google/googlenav/ui/aQ;

    invoke-direct/range {p1 .. p1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object p3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    const/16 p1, 0x2

    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p0, 0x0

    :goto_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_14

    move-object v0, v11

    move/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_13
    const/16 p0, 0x284

    invoke-static/range {p0 .. p0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/bk;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_14
    if-eqz p2, :cond_15

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_15

    new-instance p0, Lcom/google/googlenav/ui/aQ;

    invoke-direct/range {p0 .. p0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 p1, 0x288

    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    const/16 p3, 0x1

    invoke-static/range {p1 .. p3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    const/16 p1, 0x2

    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/Vector;

    invoke-direct/range {p0 .. p0}, Ljava/util/Vector;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x289

    invoke-static/range {p2 .. p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static/range {p1 .. p2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p1, 0x287

    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    const/16 p3, 0x1

    invoke-static/range {p1 .. p3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance p1, Lcom/google/googlenav/ui/aQ;

    invoke-direct/range {p1 .. p1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    const/16 p1, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    const/16 p1, 0x79e

    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p0, 0x0

    :goto_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result p1

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_15

    move-object v0, v12

    move/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_15
    return-object v6
.end method
