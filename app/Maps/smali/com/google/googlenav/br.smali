.class public Lcom/google/googlenav/br;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLaw/e;)Lcom/google/googlenav/B;
    .locals 20

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const-wide/16 v7, 0x0

    const-wide v10, 0x7fffffffffffffffL

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v4, 0x2

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v4

    move v6, v4

    :goto_0
    const/4 v4, 0x4

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v7

    :cond_0
    const/4 v4, 0x5

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x5

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v4

    move v9, v4

    :goto_1
    const/4 v4, 0x6

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v4

    move-wide v10, v4

    :cond_1
    const/4 v4, 0x7

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v4

    move v12, v4

    :cond_2
    const/16 v4, 0x8

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v4

    move-wide v13, v4

    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    :cond_4
    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v4

    new-array v5, v4, [Lcom/google/googlenav/aC;

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v4, :cond_5

    const/16 v16, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Law/e;->d(I)I

    move-result v17

    const/16 v18, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v16

    new-instance v19, Lcom/google/googlenav/aC;

    move-object/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/aC;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v19, v5, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    move-object v15, v5

    :cond_6
    move-wide/from16 v4, p0

    invoke-static/range {v4 .. v15}, Lcom/google/googlenav/B;->a(JIJIJIJ[Lcom/google/googlenav/aC;)Lcom/google/googlenav/B;

    move-result-object p0

    return-object p0

    :cond_7
    move v9, v5

    goto/16 :goto_1

    :cond_8
    move v6, v4

    goto/16 :goto_0
.end method
