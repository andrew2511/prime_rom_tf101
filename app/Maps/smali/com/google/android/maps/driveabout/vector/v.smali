.class public Lcom/google/android/maps/driveabout/vector/v;
.super Lcom/google/android/maps/driveabout/vector/bV;

# interfaces
.implements Lau/f;


# instance fields
.field private f:Z

.field private g:Lt/am;

.field private final h:Lau/e;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIILandroid/content/Context;Lau/e;)V
    .locals 20

    const/16 v6, 0xe

    new-instance v8, Lcom/google/android/maps/driveabout/vector/aX;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aX;-><init>(Lcom/google/android/maps/driveabout/vector/m;ILandroid/content/Context;Lau/e;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p7

    invoke-direct/range {v5 .. v19}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/v;->f:Z

    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/v;->g:Lt/am;

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/v;->h:Lau/e;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/v;->h:Lau/e;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lau/e;->a(Lau/f;)V

    return-void
.end method

.method private a(LG/A;)Lcom/google/android/maps/driveabout/vector/bh;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ct;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->e:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-direct {v0, v1, p1}, Lcom/google/android/maps/driveabout/vector/ct;-><init>(Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/Object;)V

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->c:Lcom/google/android/maps/driveabout/vector/cb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    const v1, 0x41766666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->c:Lcom/google/android/maps/driveabout/vector/cb;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ap;->b(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->h:Lau/e;

    invoke-virtual {v1, v0}, Lau/e;->a(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->h:Lau/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lau/e;->a(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->c:Lcom/google/android/maps/driveabout/vector/cb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v1

    const/high16 v2, 0x418c

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->c:Lcom/google/android/maps/driveabout/vector/cb;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->c()LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ap;->a(LG/Q;)LG/A;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->h:Lau/e;

    invoke-virtual {v1, v0}, Lau/e;->b(LG/A;)V

    goto :goto_0
.end method


# virtual methods
.method public a(LG/F;Lcom/google/android/maps/driveabout/vector/bL;)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/v;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v2

    invoke-virtual {v2}, LG/w;->i()LG/S;

    move-result-object v2

    invoke-virtual {p1, v2}, LG/F;->b(LG/z;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    new-instance v2, LG/A;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v3

    invoke-virtual {v3}, LG/w;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, LG/A;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/v;->a(LG/A;)Lcom/google/android/maps/driveabout/vector/bh;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/bh;)V

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/bL;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lau/e;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/v;->f:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/v;->b()V

    return-void
.end method

.method public a(Lau/e;LG/e;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/v;->f:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/v;->b()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    const v1, 0x41766666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/v;->f:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p2}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/v;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v0, :cond_0

    new-instance v2, LG/A;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v0

    invoke-virtual {v0}, LG/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, LG/A;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/v;->a(LG/A;)Lcom/google/android/maps/driveabout/vector/bh;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/v;->c(Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/v;->b(Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    const v1, 0x41766666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/v;->f:Z

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/v;->f:Z

    move v0, v2

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->c:Lcom/google/android/maps/driveabout/vector/cb;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ap;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->d:Lcom/google/android/maps/driveabout/vector/bw;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public b(Lau/e;)V
    .locals 0

    return-void
.end method
