.class public Lo/W;
.super Lak/m;


# instance fields
.field private final a:I

.field private final b:Ljava/util/Vector;

.field private final c:Lo/aJ;


# direct methods
.method private constructor <init>(ILjava/util/Vector;Lo/aJ;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput p1, p0, Lo/W;->a:I

    iput-object p2, p0, Lo/W;->b:Ljava/util/Vector;

    iput-object p3, p0, Lo/W;->c:Lo/aJ;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Lo/aJ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lo/W;-><init>(ILjava/util/Vector;Lo/aJ;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 19

    new-instance v5, Law/e;

    sget-object v4, Ls/N;->H:Law/f;

    invoke-direct {v5, v4}, Law/e;-><init>(Law/f;)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/google/googlenav/ui/aV;->c(I)I

    move-result v6

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Lcom/google/googlenav/ui/aV;->b(I)I

    move-result v7

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/google/googlenav/ui/aV;->c(I)I

    move-result v8

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/google/googlenav/ui/aV;->b(I)I

    move-result v9

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/google/googlenav/ui/aV;->c(I)I

    move-result v10

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/google/googlenav/ui/aV;->b(I)I

    move-result v11

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/google/googlenav/ui/aV;->c(I)I

    move-result v12

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/google/googlenav/ui/aV;->b(I)I

    move-result v13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lo/W;->a:I

    move v14, v0

    move v15, v4

    :goto_0
    const/4 v4, 0x5

    if-ge v15, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/W;->b:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v14, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/W;->b:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LaD/j;

    invoke-virtual {v4}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-instance v4, Law/e;

    sget-object v18, Ls/N;->G:Law/f;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v18, 0x1

    move-object v0, v4

    move/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/16 v18, 0x2

    move-object v0, v4

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v18, 0x3

    move-object v0, v4

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aV;->aj()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v4, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Law/e;

    sget-object v18, Ls/N;->G:Law/f;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v18, 0x1

    move-object v0, v4

    move/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/16 v18, 0x2

    move-object v0, v4

    move/from16 v1, v18

    move v2, v8

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v18, 0x3

    move-object v0, v4

    move/from16 v1, v18

    move v2, v9

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    :cond_1
    new-instance v4, Law/e;

    sget-object v18, Ls/N;->G:Law/f;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v18, 0x1

    move-object v0, v4

    move/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/16 v18, 0x2

    move-object v0, v4

    move/from16 v1, v18

    move v2, v10

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v18, 0x3

    move-object v0, v4

    move/from16 v1, v18

    move v2, v11

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    new-instance v4, Law/e;

    sget-object v18, Ls/N;->G:Law/f;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v18, 0x1

    move-object v0, v4

    move/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/16 v16, 0x2

    move-object v0, v4

    move/from16 v1, v16

    move v2, v12

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v16, 0x3

    move-object v0, v4

    move/from16 v1, v16

    move v2, v13

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v16, 0x1

    move-object v0, v5

    move/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    goto/16 :goto_1

    :cond_2
    check-cast p1, Ljava/io/OutputStream;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v9, 0x3

    const/4 v8, 0x1

    sget-object v0, Ls/N;->I:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v1

    invoke-static {v1, v8, v3}, Law/b;->c(Law/e;II)I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-static {v2, v8, v3}, Law/b;->c(Law/e;II)I

    move-result v2

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :cond_0
    :goto_0
    return v8

    :pswitch_0
    invoke-virtual {v1, v9}, Law/e;->i(I)I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v8

    :goto_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_3

    iget-object v0, p0, Lo/W;->b:Ljava/util/Vector;

    iget v7, p0, Lo/W;->a:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/j;

    invoke-static {v0, v6, v1, v9, v10}, LaD/q;->a(LaD/j;ILaw/e;II)LaD/q;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int v0, v6, v3

    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v10

    goto :goto_1

    :cond_2
    move v3, v9

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/W;->c:Lo/aJ;

    invoke-interface {v0, v4}, Lo/aJ;->a(Ljava/util/Vector;)V

    iget v0, p0, Lo/W;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lo/W;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/W;

    iget v2, p0, Lo/W;->a:I

    add-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lo/W;->b:Ljava/util/Vector;

    iget-object v4, p0, Lo/W;->c:Lo/aJ;

    invoke-direct {v1, v2, v3, v4}, Lo/W;-><init>(ILjava/util/Vector;Lo/aJ;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
