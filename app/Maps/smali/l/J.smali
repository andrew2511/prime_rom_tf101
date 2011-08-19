.class Ll/J;
.super Ljava/lang/Object;


# static fields
.field private static a:F

.field private static b:F

.field private static c:F

.field private static d:F

.field private static e:F

.field private static f:F

.field private static g:F

.field private static h:F

.field private static i:F


# instance fields
.field private final j:LB/c;

.field private final k:Lac/p;

.field private final l:Ljava/util/ArrayList;

.field private m:Ll/l;

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>(LB/c;Lac/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ll/J;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Ll/J;->m:Ll/l;

    iput-object p1, p0, Ll/J;->j:LB/c;

    iput-object p2, p0, Ll/J;->k:Lac/p;

    invoke-direct {p0}, Ll/J;->a()V

    return-void
.end method

.method private static a(F)F
    .locals 2

    sget v0, Ll/J;->g:F

    mul-float/2addr v0, p0

    sget v1, Ll/J;->h:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    sget v0, Ll/J;->h:F

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Ll/J;->i:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget v0, Ll/J;->i:F

    goto :goto_0
.end method

.method private static a(FJ)F
    .locals 2

    long-to-float v0, p1

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    sget v1, Ll/J;->c:F

    mul-float/2addr v0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget v1, Ll/J;->d:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    sget v0, Ll/J;->d:F

    :cond_0
    return v0
.end method

.method private a(LB/l;IF)F
    .locals 5

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    iget-object v0, p0, Ll/J;->j:LB/c;

    invoke-virtual {v0, p1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->D()F

    invoke-virtual {v0, p2}, LB/u;->d(I)F

    move-result v1

    invoke-virtual {v0, p2}, LB/u;->c(I)F

    move-result v0

    cmpg-float v2, p3, v3

    if-gez v2, :cond_0

    move v2, v3

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    :cond_0
    cmpl-float v2, p3, v4

    if-lez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, p3

    goto :goto_0
.end method

.method private a(Ll/l;Ljava/util/ArrayList;)I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ll/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v2

    move v2, v0

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll/l;

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Ll/l;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private a(Ll/l;ZZ)LB/b;
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Ll/J;->b(Ll/l;ZZ)F

    move-result v0

    iget-object v1, p1, Ll/l;->b:LB/l;

    if-eqz p3, :cond_0

    const/high16 v2, 0x3f80

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, LB/r;

    iget-object v3, p0, Ll/J;->j:LB/c;

    invoke-direct {v2, v3}, LB/r;-><init>(LB/c;)V

    invoke-virtual {v2, v1}, LB/r;->a(LB/l;)LB/r;

    move-result-object v2

    invoke-virtual {v2}, LB/r;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LB/r;->a()LB/l;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    new-instance v2, LB/b;

    invoke-direct {v2, v0, v1}, LB/b;-><init>(LB/l;F)V

    return-object v2

    :cond_0
    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method private a(Lf/h;FF)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, LB/r;

    iget-object v1, p0, Ll/J;->j:LB/c;

    invoke-direct {v0, v1}, LB/r;-><init>(LB/c;)V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, LB/r;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LB/r;->a()LB/l;

    move-result-object v2

    sget v3, Ll/J;->b:F

    cmpl-float v3, p3, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Ll/J;->j:LB/c;

    invoke-virtual {v3, v2}, LB/c;->a(LB/l;)LB/u;

    move-result-object v3

    invoke-virtual {v3}, LB/u;->q()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-direct {p0, v2, p1, p2}, Ll/J;->a(LB/l;Lf/h;F)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Ll/J;->m:Ll/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/J;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v7

    move v4, v7

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/l;

    invoke-direct {p0, v0}, Ll/J;->a(Ll/l;)V

    invoke-virtual {v0}, Ll/l;->c()Ll/a;

    move-result-object v5

    sget-object v6, Ll/a;->a:Ll/a;

    if-eq v5, v6, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ll/l;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v7

    :goto_3
    if-ge v3, v2, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/l;

    invoke-virtual {v0}, Ll/l;->c()Ll/a;

    move-result-object v4

    sget-object v5, Ll/a;->b:Ll/a;

    if-eq v4, v5, :cond_2

    invoke-direct {p0, v0}, Ll/J;->b(Ll/l;)V

    invoke-virtual {v0}, Ll/l;->c()Ll/a;

    move-result-object v4

    sget-object v5, Ll/a;->a:Ll/a;

    if-eq v4, v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_3
    return-object v1

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2
.end method

.method private a(LB/l;Lf/h;F)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Ll/J;->j:LB/c;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v14

    invoke-virtual {v14}, LB/u;->C()Lj/v;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v16

    const/4 v3, -0x1

    invoke-virtual {v14, v3}, LB/u;->b(I)Lf/h;

    move-result-object v3

    const/4 v4, -0x1

    move v6, v4

    :goto_0
    if-ge v6, v15, :cond_6

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v14, v4}, LB/u;->b(I)Lf/h;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v14}, LB/u;->p()LB/h;

    move-result-object v4

    sget-object v5, LB/h;->e:LB/h;

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v11

    invoke-static {v11, v14, v6}, Ll/J;->a(FLB/u;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ll/l;

    move-object/from16 v0, p0

    iget-object v0, v0, Ll/J;->j:LB/c;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ll/J;->n:J

    move-wide v9, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v13}, Ll/l;-><init>(LB/c;LB/l;ILf/h;FJFFZ)V

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object/from16 v3, v17

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, LK/n;->c(Lf/h;Lf/h;Lf/h;)F

    move-result v12

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v4

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v5

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, LK/n;->b(Lf/h;Lf/h;Lf/h;)F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v7, v12, v7

    if-ltz v7, :cond_3

    const/high16 v7, 0x3f80

    cmpg-float v7, v12, v7

    if-gtz v7, :cond_3

    move v11, v3

    :goto_2
    invoke-static {v11, v14, v6}, Ll/J;->a(FLB/u;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v12}, Ll/J;->b(F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    cmpg-float v3, v12, v3

    if-ltz v3, :cond_2

    const/high16 v3, 0x3f80

    cmpl-float v3, v12, v3

    if-lez v3, :cond_5

    :cond_2
    const/4 v3, 0x1

    move v13, v3

    :goto_3
    new-instance v3, Ll/l;

    move-object/from16 v0, p0

    iget-object v0, v0, Ll/J;->j:LB/c;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ll/J;->n:J

    move-wide v9, v0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v13}, Ll/l;-><init>(LB/c;LB/l;ILf/h;FJFFZ)V

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    cmpg-float v3, v12, v3

    if-gez v3, :cond_4

    move v11, v4

    goto :goto_2

    :cond_4
    move v11, v5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    move v13, v3

    goto :goto_3

    :cond_6
    return-object v16
.end method

.method private a()V
    .locals 3

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v1, v0, LK/l;->e:F

    iget v2, v0, LK/l;->d:F

    add-float/2addr v1, v2

    sput v1, Ll/J;->a:F

    iget v1, v0, LK/l;->x:F

    sput v1, Ll/J;->b:F

    iget v1, v0, LK/l;->g:F

    sput v1, Ll/J;->c:F

    iget v1, v0, LK/l;->h:F

    sput v1, Ll/J;->d:F

    iget v1, v0, LK/l;->i:F

    sput v1, Ll/J;->e:F

    iget v1, v0, LK/l;->j:F

    sput v1, Ll/J;->f:F

    iget v1, v0, LK/l;->k:F

    sput v1, Ll/J;->g:F

    iget v1, v0, LK/l;->l:F

    sput v1, Ll/J;->h:F

    iget v0, v0, LK/l;->m:F

    sput v0, Ll/J;->i:F

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ll/l;)V
    .locals 1

    iget-object v0, p0, Ll/J;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ll/J;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Ll/J;->m:Ll/l;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ll/l;LB/b;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/l;

    if-eq v0, p2, :cond_0

    invoke-direct {p0, v0}, Ll/J;->e(Ll/l;)LB/b;

    move-result-object v0

    iget-object v2, p0, Ll/J;->j:LB/c;

    invoke-static {v2, p3, v0}, LK/n;->a(LB/c;LB/b;LB/b;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, Ll/J;->a:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ll/l;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Ll/J;->m:Ll/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/J;->m:Ll/l;

    invoke-direct {p0, p1, v0}, Ll/J;->a(Ll/l;Ll/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v4, v4}, Ll/J;->a(Ll/l;ZZ)LB/b;

    move-result-object v0

    iget-object v1, p0, Ll/J;->m:Ll/l;

    invoke-virtual {p1, v1, v0}, Ll/l;->a(Ll/l;LB/b;)Ll/o;

    invoke-virtual {p1}, Ll/l;->e()Ll/o;

    move-result-object v0

    sget-object v1, Ll/o;->c:Ll/o;

    if-ne v0, v1, :cond_2

    move v0, v5

    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Ll/a;->b:Ll/a;

    invoke-virtual {p1, v0}, Ll/l;->a(Ll/a;)V

    :cond_0
    iget-object v0, p0, Ll/J;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_8

    iget-object v0, p0, Ll/J;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/l;

    iget-object v3, p0, Ll/J;->m:Ll/l;

    if-ne v0, v3, :cond_5

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    sget-object v0, Ll/a;->d:Ll/a;

    invoke-virtual {p1, v0}, Ll/l;->a(Ll/a;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    invoke-direct {p0, p1, v0}, Ll/J;->a(Ll/l;Ll/l;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v4, v4}, Ll/J;->a(Ll/l;ZZ)LB/b;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ll/l;->a(Ll/l;LB/b;)Ll/o;

    invoke-virtual {p1}, Ll/l;->e()Ll/o;

    move-result-object v0

    sget-object v3, Ll/o;->c:Ll/o;

    if-ne v0, v3, :cond_6

    move v0, v5

    :goto_4
    if-eqz v0, :cond_7

    sget-object v0, Ll/a;->b:Ll/a;

    invoke-virtual {p1, v0}, Ll/l;->a(Ll/a;)V

    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_4

    :cond_7
    sget-object v0, Ll/a;->c:Ll/a;

    invoke-virtual {p1, v0}, Ll/l;->a(Ll/a;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ll/l;->c()Ll/a;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Ll/a;->a:Ll/a;

    invoke-virtual {p1, v0}, Ll/l;->a(Ll/a;)V

    goto :goto_3
.end method

.method private static a(FLB/u;I)Z
    .locals 1

    invoke-virtual {p1, p2}, LB/u;->d(I)F

    move-result v0

    invoke-static {v0}, Ll/J;->a(F)F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(LB/b;LB/b;)Z
    .locals 2

    iget-object v0, p1, LB/b;->a:LB/l;

    iget-object v1, p2, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, LB/l;->a(LB/l;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ll/l;Ll/l;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Ll/J;->e(Ll/l;)LB/b;

    move-result-object v0

    invoke-direct {p0, p2}, Ll/J;->e(Ll/l;)LB/b;

    move-result-object v1

    iget-object v2, v0, LB/b;->a:LB/l;

    iget-object v3, v1, LB/b;->a:LB/l;

    invoke-virtual {v2, v3}, LB/l;->a(LB/l;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, p1}, Ll/J;->c(Ll/l;)Z

    move-result v2

    :goto_0
    iget-wide v3, p0, Ll/J;->n:J

    iget-wide v5, p2, Ll/l;->e:J

    sub-long/2addr v3, v5

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Ll/J;->a(LB/b;LB/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v3, v4}, Ll/J;->a(Ll/l;Ll/l;J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v2, v7

    goto :goto_0
.end method

.method private a(Ll/l;Ll/l;J)Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p2, v4, v4}, Ll/J;->a(Ll/l;ZZ)LB/b;

    move-result-object v0

    invoke-direct {p0, p1, v4, v4}, Ll/J;->a(Ll/l;ZZ)LB/b;

    move-result-object v1

    iget-object v2, p0, Ll/J;->j:LB/c;

    invoke-static {v2, v0, v1}, LK/n;->a(LB/c;LB/b;LB/b;)F

    move-result v2

    invoke-virtual {p2, p1}, Ll/l;->c(Ll/l;)F

    move-result v3

    invoke-static {v3, p3, p4}, Ll/J;->a(FJ)F

    move-result v3

    iget-object v1, v1, LB/b;->a:LB/l;

    iget-object v0, v0, LB/b;->a:LB/l;

    invoke-virtual {v1, v0}, LB/l;->a(LB/l;)I

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Ll/J;->a:F

    add-float/2addr v0, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private b(Ll/l;ZZ)F
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Ll/J;->j:LB/c;

    iget-object v1, p1, Ll/l;->b:LB/l;

    invoke-virtual {v0, v1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->D()F

    move-result v0

    cmpl-float v1, v0, v4

    if-nez v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    iget v1, p1, Ll/l;->f:F

    sget v2, Ll/J;->a:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p1, Ll/l;->b:LB/l;

    iget v2, p1, Ll/l;->c:I

    invoke-virtual {p1}, Ll/l;->b()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Ll/J;->a(LB/l;IF)F

    move-result v1

    sub-float v1, v0, v1

    sget v2, Ll/J;->a:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget v1, p1, Ll/l;->f:F

    sget v2, Ll/J;->a:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p1, Ll/l;->b:LB/l;

    iget v2, p1, Ll/l;->c:I

    invoke-virtual {p1}, Ll/l;->a()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Ll/J;->a(LB/l;IF)F

    move-result v1

    sget v2, Ll/J;->a:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v1, p1, Ll/l;->b:LB/l;

    iget v2, p1, Ll/l;->c:I

    iget v3, p1, Ll/l;->h:F

    invoke-direct {p0, v1, v2, v3}, Ll/J;->a(LB/l;IF)F

    move-result v1

    iget v2, p1, Ll/l;->f:F

    add-float/2addr v0, v2

    div-float v0, v1, v0

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)Ll/l;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object v3, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/l;

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v3}, Ll/J;->b(Ll/l;Ll/l;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll/J;->m:Ll/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll/J;->m:Ll/l;

    invoke-virtual {v3, v0}, Ll/l;->a(Ll/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll/J;->m:Ll/l;

    invoke-virtual {v3, v0}, Ll/l;->b(Ll/l;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ll/J;->m:Ll/l;

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method private b(Ll/l;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Ll/l;->f:F

    sget v1, Ll/J;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Ll/a;->a:Ll/a;

    invoke-virtual {p1, v0}, Ll/l;->a(Ll/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ll/J;->j:LB/c;

    iget-object v1, p1, Ll/l;->b:LB/l;

    invoke-virtual {v0, v1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Ll/J;->d(Ll/l;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, v2, v2}, Ll/J;->a(Ll/l;ZZ)LB/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll/l;->a(LB/b;)V

    sget-object v0, Ll/a;->c:Ll/a;

    invoke-virtual {p1, v0}, Ll/l;->a(Ll/a;)V

    goto :goto_0

    :cond_2
    sget-object v0, Ll/a;->a:Ll/a;

    invoke-virtual {p1, v0}, Ll/l;->a(Ll/a;)V

    goto :goto_0
.end method

.method private static b(F)Z
    .locals 3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f80

    sget v2, Ll/J;->e:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ll/l;Ll/l;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Ll/l;->c()Ll/a;

    move-result-object v0

    invoke-virtual {p2}, Ll/l;->c()Ll/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll/a;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-gez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Ll/J;->c(Ll/l;Ll/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p1}, Ll/J;->c(Ll/l;Ll/l;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Ll/J;->d(Ll/l;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Ll/J;->d(Ll/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ll/J;->m:Ll/l;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ll/J;->m:Ll/l;

    invoke-virtual {p1, v0}, Ll/l;->b(Ll/l;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ll/J;->m:Ll/l;

    invoke-virtual {p2, v0}, Ll/l;->b(Ll/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Ll/J;->e(Ll/l;)LB/b;

    move-result-object v0

    invoke-direct {p0, p2}, Ll/J;->e(Ll/l;)LB/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LB/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Ll/l;->a(Ll/l;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    invoke-virtual {p1, p2}, Ll/l;->a(Ll/l;)Z

    move-result v0

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method private c(Ll/l;)Z
    .locals 2

    iget v0, p1, Ll/l;->f:F

    sget v1, Ll/J;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ll/l;Ll/l;)Z
    .locals 3

    iget v0, p1, Ll/l;->f:F

    iget v1, p2, Ll/l;->f:F

    sget v2, Ll/J;->f:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ll/l;)Z
    .locals 2

    iget-boolean v0, p1, Ll/l;->g:Z

    if-eqz v0, :cond_0

    iget v0, p1, Ll/l;->f:F

    sget v1, Ll/J;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ll/l;)LB/b;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Ll/J;->m:Ll/l;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ll/l;->b:LB/l;

    iget-object v1, p0, Ll/J;->m:Ll/l;

    iget-object v1, v1, Ll/l;->b:LB/l;

    invoke-virtual {v0, v1}, LB/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ll/J;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, p1, v0, v2}, Ll/J;->a(Ll/l;ZZ)LB/b;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ll/g;)Ll/I;
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Ll/g;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ll/g;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    const-string v1, "Location should have both latitude and longitude"

    invoke-static {v0, v1}, Lae/k;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ll/J;->k:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ll/J;->n:J

    invoke-static {p1}, LK/n;->a(Landroid/location/Location;)Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Ll/g;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Ll/g;->getSpeed()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ll/J;->a(Lf/h;FF)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Ll/J;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ll/Q;->a:Ll/Q;

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move v1, v7

    :goto_1
    iput-boolean v1, p0, Ll/J;->o:Z

    invoke-direct {p0, v0, v3}, Ll/J;->a(Ljava/util/ArrayList;Ll/l;)V

    new-instance v0, Ll/I;

    invoke-direct {v0, v4, v2, v6}, Ll/I;-><init>(Ll/Q;LB/b;Ll/h;)V

    return-object v0

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Ll/J;->b(Ljava/util/ArrayList;)Ll/l;

    move-result-object v1

    invoke-direct {p0, v1}, Ll/J;->e(Ll/l;)LB/b;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ll/J;->a(Ljava/util/ArrayList;Ll/l;LB/b;)V

    iget-object v3, v2, LB/b;->a:LB/l;

    iget-object v4, v1, Ll/l;->b:LB/l;

    invoke-virtual {v3, v4}, LB/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, LB/b;->b:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    move v3, v8

    :goto_2
    sget-object v4, Ll/h;->a:[I

    invoke-virtual {v1}, Ll/l;->c()Ll/a;

    move-result-object v5

    invoke-virtual {v5}, Ll/a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    sget-object v1, Ll/Q;->a:Ll/Q;

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move v1, v7

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_2

    :pswitch_0
    sget-object v4, Ll/Q;->d:Ll/Q;

    move v9, v3

    move-object v3, v1

    move v1, v9

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1, v0}, Ll/J;->a(Ll/l;Ljava/util/ArrayList;)I

    move-result v4

    if-ne v4, v8, :cond_4

    sget-object v4, Ll/Q;->d:Ll/Q;

    move v9, v3

    move-object v3, v1

    move v1, v9

    goto :goto_1

    :cond_4
    sget-object v1, Ll/Q;->b:Ll/Q;

    move-object v3, v6

    move-object v4, v1

    move v1, v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
