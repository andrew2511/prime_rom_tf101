.class public abstract LI/M;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field protected final g:Lcom/google/googlenav/ui/aT;

.field protected final h:Li/bl;

.field protected i:Lcom/google/googlenav/ui/view/android/L;


# direct methods
.method public constructor <init>(Li/bl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/M;->h:Li/bl;

    invoke-virtual {p1}, Li/bl;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    iput-object v0, p0, LI/M;->g:Lcom/google/googlenav/ui/aT;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030079

    return v0
.end method

.method protected a(Lcom/google/googlenav/c;IZI)Lcom/google/googlenav/ui/view/android/aZ;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, LI/M;->b(Lcom/google/googlenav/c;IZI)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aX;->a()Lcom/google/googlenav/ui/view/android/aZ;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lcom/google/googlenav/j;)Ljava/util/List;
.end method

.method protected a(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;I)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, LI/M;->h:Li/bl;

    invoke-virtual {v1}, Li/bl;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-virtual {p0, v1}, LI/M;->a(Lcom/google/googlenav/j;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;Ljava/util/List;I)V

    iput-object v0, p0, LI/M;->i:Lcom/google/googlenav/ui/view/android/L;

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0d0032

    return v0
.end method

.method protected b(Lcom/google/googlenav/c;IZI)Lcom/google/googlenav/ui/view/android/aX;
    .locals 19

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, LI/M;->h:Li/bl;

    move-object v5, v0

    invoke-virtual {v5}, Li/bl;->ab_()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-static {v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Z)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static/range {p1 .. p1}, Li/bl;->l(Lcom/google/googlenav/c;)Z

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, LI/M;->h:Li/bl;

    move-object v7, v0

    invoke-virtual {v7}, Li/bl;->bx()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->bd()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0x444

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->be()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v7, :cond_6

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->b(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->aW()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, LI/M;->h:Li/bl;

    move-object v12, v0

    invoke-virtual {v12}, Li/bl;->bz()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->aV()Lcom/google/googlenav/ay;

    move-result-object v10

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->aR()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->aU()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    move-object v11, v8

    move-object/from16 v8, v17

    move-object/from16 v18, v9

    move-object v9, v10

    move-object/from16 v10, v18

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, LI/M;->h:Li/bl;

    move-object v14, v0

    invoke-virtual {v14}, Li/bl;->ac_()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->r()Lcom/google/googlenav/H;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->B()Ljava/util/Vector;

    move-result-object v13

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->ak()Lcom/google/googlenav/bj;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v15

    new-instance v16, Lcom/google/googlenav/ui/view/android/aX;

    invoke-direct/range {v16 .. v16}, Lcom/google/googlenav/ui/view/android/aX;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/aX;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/googlenav/ui/view/android/aX;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/googlenav/ui/view/android/aX;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/googlenav/ui/view/android/aX;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/googlenav/ui/view/android/aX;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/googlenav/ui/view/android/aX;->a(Lcom/google/googlenav/ay;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/view/android/aX;->f(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/googlenav/ui/view/android/aX;->a(Lcom/google/googlenav/H;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/googlenav/ui/view/android/aX;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/googlenav/ui/view/android/aX;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/googlenav/ui/view/android/aX;->a(Lf/h;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/view/android/aX;->a(Z)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->b(Z)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/googlenav/ui/view/android/aX;->c(Z)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->a(I)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->b(I)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, LI/M;->h:Li/bl;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/aX;->a(Li/bl;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    return-object v2

    :cond_3
    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    goto :goto_1

    :cond_4
    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    goto :goto_1

    :cond_5
    move-object/from16 v17, v11

    move-object v11, v8

    move-object/from16 v8, v17

    move-object/from16 v18, v9

    move-object v9, v10

    move-object/from16 v10, v18

    goto/16 :goto_0

    :cond_6
    move-object/from16 v17, v11

    move-object v11, v8

    move-object/from16 v8, v17

    move-object/from16 v18, v9

    move-object v9, v10

    move-object/from16 v10, v18

    goto/16 :goto_0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, LI/M;->i:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/M;->i:Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, LI/M;->h:Li/bl;

    invoke-virtual {v1}, Li/bl;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-virtual {p0, v1}, LI/M;->a(Lcom/google/googlenav/j;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
