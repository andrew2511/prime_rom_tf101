.class public abstract Lf/Y;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/Vector;

.field protected b:I

.field protected c:I

.field private final d:LaF/a;

.field private final e:LaF/a;

.field private f:Lf/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/Y;->a:Ljava/util/Vector;

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Lf/Y;->d:LaF/a;

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Lf/Y;->e:LaF/a;

    return-void
.end method


# virtual methods
.method public abstract a(ILf/h;)F
.end method

.method public abstract a()I
.end method

.method public a(ILf/C;)I
    .locals 3

    invoke-virtual {p0, p2}, Lf/Y;->a(Lf/C;)I

    move-result v0

    int-to-float v1, p1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ac()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract a(Lf/C;)I
.end method

.method public abstract a(Lf/h;)I
.end method

.method public a(Lcom/google/googlenav/bf;Lf/h;IIIIIIILf/l;)Lf/h;
    .locals 16

    invoke-interface/range {p1 .. p1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v5

    if-nez v5, :cond_0

    move-object/from16 v5, p2

    :goto_0
    return-object v5

    :cond_0
    new-instance v6, LaF/a;

    invoke-direct {v6}, LaF/a;-><init>()V

    new-instance v7, LaF/a;

    invoke-direct {v7}, LaF/a;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p10

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/Y;->a(Lf/h;Lf/l;Lf/h;LaF/a;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p10

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/Y;->a(Lf/h;Lf/l;Lf/h;LaF/a;)V

    iget v5, v7, LaF/a;->a:I

    iget v8, v6, LaF/a;->a:I

    sub-int/2addr v5, v8

    add-int v5, v5, p7

    iget v8, v7, LaF/a;->b:I

    iget v9, v6, LaF/a;->b:I

    sub-int/2addr v8, v9

    sget-object v9, Lcom/google/googlenav/labs/android/a;->a:Lcom/google/googlenav/labs/android/a;

    invoke-virtual {v9}, Lcom/google/googlenav/labs/android/a;->f()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/ui/aV;->af()Lcom/google/googlenav/aG;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/aG;->e()I

    move-result v10

    move/from16 v0, p3

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9}, Lcom/google/googlenav/aG;->f()I

    move-result v9

    move/from16 v0, p4

    move v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sget v11, Lcom/google/googlenav/labs/android/a;->b:I

    add-int/2addr v11, v9

    move v15, v11

    move v11, v10

    move v10, v9

    move v9, v15

    :goto_1
    const/4 v12, 0x0

    neg-int v13, v5

    add-int v13, v13, p9

    add-int/2addr v13, v11

    move-object/from16 v0, p0

    iget v0, v0, Lf/Y;->b:I

    move v14, v0

    div-int/lit8 v14, v14, 0x2

    if-gt v13, v14, :cond_1

    add-int v13, v5, v11

    move-object/from16 v0, p0

    iget v0, v0, Lf/Y;->b:I

    move v14, v0

    div-int/lit8 v14, v14, 0x2

    if-le v13, v14, :cond_6

    :cond_1
    const/4 v13, 0x1

    :goto_2
    if-eqz v13, :cond_a

    iget v7, v7, LaF/a;->a:I

    iget v12, v6, LaF/a;->a:I

    div-int/lit8 v13, p9, 0x2

    add-int/2addr v12, v13

    if-le v7, v12, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lf/Y;->b:I

    move v7, v0

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v7, v5

    sub-int/2addr v5, v11

    neg-int v5, v5

    :goto_3
    const/4 v7, 0x0

    neg-int v11, v8

    add-int v11, v11, p8

    add-int/2addr v11, v10

    move-object/from16 v0, p0

    iget v0, v0, Lf/Y;->c:I

    move v12, v0

    div-int/lit8 v12, v12, 0x2

    if-gt v11, v12, :cond_2

    add-int v11, v8, v9

    move-object/from16 v0, p0

    iget v0, v0, Lf/Y;->c:I

    move v12, v0

    div-int/lit8 v12, v12, 0x2

    if-le v11, v12, :cond_8

    :cond_2
    const/4 v11, 0x1

    :goto_4
    if-eqz v11, :cond_3

    if-lez v8, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lf/Y;->c:I

    move v7, v0

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v8, v7

    add-int/2addr v7, v9

    :cond_3
    :goto_5
    new-instance v8, LaF/a;

    invoke-direct {v8}, LaF/a;-><init>()V

    iget v9, v6, LaF/a;->a:I

    add-int/2addr v5, v9

    iput v5, v8, LaF/a;->a:I

    iget v5, v6, LaF/a;->b:I

    add-int/2addr v5, v7

    iput v5, v8, LaF/a;->b:I

    iget v5, v8, LaF/a;->a:I

    iget v6, v8, LaF/a;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p10

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/Y;->a(Lf/h;Lf/l;II)Lf/h;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v10, p4, p6

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/googlenav/d;->B()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x5

    :goto_6
    move v15, v11

    move v11, v9

    move v9, v15

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lf/Y;->b:I

    move v7, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    sub-int/2addr v5, v11

    sub-int v5, v5, p9

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lf/Y;->c:I

    move v7, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v7, v10

    sub-int v7, v7, p8

    goto :goto_5

    :cond_a
    move v5, v12

    goto/16 :goto_3
.end method

.method protected abstract a(Lf/h;Lf/l;II)Lf/h;
.end method

.method public a(IIII)Lf/l;
    .locals 5

    invoke-virtual {p0}, Lf/Y;->h()Lf/C;

    move-result-object v0

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/Y;->a(Lf/h;)I

    move-result v1

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lf/l;->e()I

    move-result v0

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lf/l;->d()Lf/l;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lf/C;->a(Lf/l;)Lf/C;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lf/Y;->a(ILf/C;)I

    move-result v3

    if-gt p1, v3, :cond_1

    invoke-virtual {p0, p3, v1}, Lf/Y;->b(ILf/C;)I

    move-result v3

    if-gt p2, v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public abstract a(I)V
.end method

.method public abstract a(II)V
.end method

.method public abstract a(LG/Z;)V
.end method

.method public a(Lf/a;)V
    .locals 1

    iget-object v0, p0, Lf/Y;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract a(Lf/h;LaF/a;)V
.end method

.method public abstract a(Lf/h;Lf/l;)V
.end method

.method protected abstract a(Lf/h;Lf/l;Lf/h;LaF/a;)V
.end method

.method public final a(Lf/l;)V
    .locals 1

    invoke-virtual {p0}, Lf/Y;->q()V

    invoke-virtual {p0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lf/Y;->e(Lf/h;Lf/l;)V

    return-void
.end method

.method protected abstract a(Lf/l;II)V
.end method

.method protected a(ZZZ)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lf/Y;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lf/Y;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a;

    invoke-interface {v0, p1, p2, p3}, Lf/a;->a(ZZZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract a([Lf/h;IIILf/l;)V
.end method

.method public declared-synchronized a(Lf/h;Lf/h;I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/Y;->d:LaF/a;

    invoke-virtual {p0, p1, v0}, Lf/Y;->a(Lf/h;LaF/a;)V

    iget-object v0, p0, Lf/Y;->e:LaF/a;

    invoke-virtual {p0, p2, v0}, Lf/Y;->a(Lf/h;LaF/a;)V

    iget-object v0, p0, Lf/Y;->d:LaF/a;

    iget-object v1, p0, Lf/Y;->e:LaF/a;

    invoke-static {v0, v1, p3}, LaF/a;->a(LaF/a;LaF/a;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)Z
    .locals 2

    iget v0, p0, Lf/Y;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lf/Y;->c:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lf/Y;->a(ZII)Z

    move-result v0

    return v0
.end method

.method public final a(ZII)Z
    .locals 3

    iget-object v0, p0, Lf/Y;->f:Lf/l;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    iput-object v0, p0, Lf/Y;->f:Lf/l;

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lf/Y;->f:Lf/l;

    invoke-virtual {v0}, Lf/l;->d()Lf/l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v1

    iget-object v2, p0, Lf/Y;->f:Lf/l;

    invoke-virtual {v2}, Lf/l;->a()I

    move-result v2

    if-ne v1, v2, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lf/Y;->f:Lf/l;

    invoke-virtual {v0}, Lf/l;->c()Lf/l;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p2, p3}, Lf/Y;->a(Lf/l;II)V

    iput-object v0, p0, Lf/Y;->f:Lf/l;

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public abstract b()I
.end method

.method protected b(I)I
    .locals 2

    const/16 v0, 0x50

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0xc8

    const/16 v1, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public b(ILf/C;)I
    .locals 3

    invoke-virtual {p0, p2}, Lf/Y;->b(Lf/C;)I

    move-result v0

    int-to-float v1, p1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ab()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract b(Lf/C;)I
.end method

.method public b(II)Lf/h;
    .locals 2

    invoke-virtual {p0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    invoke-virtual {p0}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lf/Y;->a(Lf/h;Lf/l;II)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lf/a;)V
    .locals 1

    iget-object v0, p0, Lf/Y;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lf/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf/Y;->b(Lf/h;Lf/l;)V

    return-void
.end method

.method protected abstract b(Lf/h;Lf/l;)V
.end method

.method public abstract c()Lf/h;
.end method

.method public c(II)V
    .locals 0

    iput p1, p0, Lf/Y;->b:I

    iput p2, p0, Lf/Y;->c:I

    return-void
.end method

.method public final c(Lf/h;)V
    .locals 1

    invoke-virtual {p0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lf/Y;->e(Lf/h;Lf/l;)V

    return-void
.end method

.method protected abstract c(Lf/h;Lf/l;)V
.end method

.method public abstract d()Lf/h;
.end method

.method public final d(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->f()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lf/Y;->a(IIII)Lf/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/Y;->a(Lf/l;)V

    return-void
.end method

.method public final d(Lf/h;Lf/l;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf/Y;->b(Lf/h;Lf/l;)V

    return-void
.end method

.method public d(Lf/h;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lf/Y;->e(Lf/h;)LaF/a;

    move-result-object v0

    iget v1, v0, LaF/a;->a:I

    if-ltz v1, :cond_0

    iget v1, v0, LaF/a;->a:I

    iget v2, p0, Lf/Y;->b:I

    if-ge v1, v2, :cond_0

    iget v1, v0, LaF/a;->b:I

    if-ltz v1, :cond_0

    iget v0, v0, LaF/a;->b:I

    iget v1, p0, Lf/Y;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lf/h;)LaF/a;
    .locals 1

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lf/Y;->a(Lf/h;LaF/a;)V

    return-object v0
.end method

.method public abstract e()Lf/h;
.end method

.method public final e(Lf/h;Lf/l;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf/Y;->c(Lf/h;Lf/l;)V

    return-void
.end method

.method public abstract f()Lf/l;
.end method

.method public abstract g()F
.end method

.method public abstract h()Lf/C;
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method protected n()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lf/Y;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lf/Y;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a;

    invoke-interface {v0}, Lf/a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lf/Y;->b:I

    return v0
.end method

.method public p()Law/e;
    .locals 4

    invoke-virtual {p0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    invoke-virtual {p0}, Lf/Y;->a()I

    move-result v1

    invoke-virtual {p0}, Lf/Y;->b()I

    move-result v2

    invoke-virtual {p0}, Lf/Y;->f()Lf/l;

    move-result-object v3

    invoke-virtual {v3}, Lf/l;->a()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lf/Y;->f:Lf/l;

    return-void
.end method
