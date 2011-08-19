.class public Lam/p;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/google/googlenav/ui/r;

.field private c:I

.field private d:LG/m;

.field private e:LG/m;

.field private f:Ljava/util/List;

.field private g:F

.field private h:Lcom/google/android/maps/driveabout/vector/cr;

.field private i:LG/Q;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/r;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lam/p;->i:LG/Q;

    iput-object p1, p0, Lam/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/aU;Z)LG/m;
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/google/googlenav/ui/aU;->h()[Lf/h;

    move-result-object v0

    new-instance v1, LG/b;

    array-length v2, v0

    invoke-direct {v1, v2}, LG/b;-><init>(I)V

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    array-length v3, v0

    move v4, v6

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    invoke-static {v5, v2}, Lad/m;->a(Lf/h;LG/Q;)V

    invoke-virtual {v1, v2}, LG/b;->a(LG/Q;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    aget-object v0, v0, v6

    invoke-static {v0, v2}, Lad/m;->a(Lf/h;LG/Q;)V

    invoke-virtual {v1, v2}, LG/b;->a(LG/Q;)Z

    :cond_1
    invoke-virtual {v1}, LG/b;->d()LG/m;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/aU;)Ljava/util/List;
    .locals 10

    const/4 v9, 0x0

    invoke-interface {p1}, Lcom/google/googlenav/ui/aU;->i()[[Lf/h;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    invoke-static {v1}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    array-length v2, v0

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    new-instance v5, LG/b;

    array-length v6, v4

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, LG/b;-><init>(I)V

    array-length v6, v4

    move v7, v9

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    invoke-static {v8}, Lad/m;->a(Lf/h;)LG/Q;

    move-result-object v8

    invoke-virtual {v5, v8}, LG/b;->a(LG/Q;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    aget-object v4, v4, v9

    invoke-static {v4}, Lad/m;->a(Lf/h;)LG/Q;

    move-result-object v4

    invoke-virtual {v5, v4}, LG/b;->a(LG/Q;)Z

    invoke-virtual {v5}, LG/b;->d()LG/m;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/google/googlenav/ui/aU;)I
    .locals 1

    iget v0, p0, Lam/p;->g:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/ui/aU;->a(Lf/l;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x26548

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 1

    invoke-virtual {p0}, Lam/p;->d()V

    iget-object v0, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget v1, p0, Lam/p;->g:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iput v0, p0, Lam/p;->g:F

    iget-object v0, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    instance-of v0, v0, Lcom/google/googlenav/ui/ba;

    if-nez v0, :cond_0

    iget v1, p0, Lam/p;->j:I

    iget-object v0, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    check-cast v0, Lcom/google/googlenav/ui/aU;

    invoke-direct {p0, v0}, Lam/p;->b(Lcom/google/googlenav/ui/aU;)I

    move-result v0

    iput v0, p0, Lam/p;->j:I

    iget v0, p0, Lam/p;->j:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    :cond_0
    invoke-virtual {p0}, Lam/p;->d()V

    iget-object v0, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    invoke-interface {v1}, Lcom/google/googlenav/ui/r;->a()I

    move-result v1

    iget v2, p0, Lam/p;->c:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    instance-of v1, v1, Lcom/google/googlenav/ui/ba;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    check-cast v1, Lcom/google/googlenav/ui/ba;

    invoke-interface {v1}, Lcom/google/googlenav/ui/ba;->c()I

    move-result v2

    invoke-interface {v1}, Lcom/google/googlenav/ui/ba;->e()I

    move-result v3

    invoke-interface {v1}, Lcom/google/googlenav/ui/ba;->f()Lf/h;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/googlenav/ui/ba;->g()I

    move-result v1

    if-eqz v4, :cond_1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    :cond_1
    iget-object v1, p0, Lam/p;->i:LG/Q;

    invoke-virtual {v1, v7, v7}, LG/Q;->d(II)V

    move v2, v7

    move v3, v7

    move v4, v7

    :goto_1
    iget-object v1, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    instance-of v1, v1, Lcom/google/android/maps/driveabout/vector/ck;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    check-cast v1, Lcom/google/android/maps/driveabout/vector/ck;

    iget-object v5, p0, Lam/p;->i:LG/Q;

    invoke-virtual {v1, v5, v2}, Lcom/google/android/maps/driveabout/vector/ck;->a(LG/Q;I)V

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/ck;->b(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/ck;->c(I)V

    :goto_2
    iget-object v1, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    invoke-interface {v1}, Lcom/google/googlenav/ui/r;->a()I

    move-result v1

    iput v1, p0, Lam/p;->c:I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lam/p;->i:LG/Q;

    invoke-static {v4, v5}, Lad/m;->a(Lf/h;LG/Q;)V

    move v4, v2

    move v2, v1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ck;

    iget-object v5, p0, Lam/p;->i:LG/Q;

    invoke-direct {v1, v5, v2, v4, v3}, Lcom/google/android/maps/driveabout/vector/ck;-><init>(LG/Q;III)V

    iput-object v1, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/aU;

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/googlenav/ui/aU;->h()[Lf/h;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_5

    const/4 v1, 0x0

    iput-object v1, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Lcom/google/googlenav/ui/aU;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lam/p;->e:LG/m;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    invoke-interface {v1}, Lcom/google/googlenav/ui/r;->a()I

    move-result v1

    iget v2, p0, Lam/p;->c:I

    if-eq v1, v2, :cond_7

    :cond_6
    invoke-direct {p0, v6, v3}, Lam/p;->a(Lcom/google/googlenav/ui/aU;Z)LG/m;

    move-result-object v1

    iput-object v1, p0, Lam/p;->e:LG/m;

    invoke-direct {p0, v6}, Lam/p;->a(Lcom/google/googlenav/ui/aU;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lam/p;->f:Ljava/util/List;

    :cond_7
    new-instance v1, Lcom/google/android/maps/driveabout/vector/aL;

    iget-object v2, p0, Lam/p;->e:LG/m;

    iget-object v3, p0, Lam/p;->f:Ljava/util/List;

    iget v4, p0, Lam/p;->j:I

    int-to-float v4, v4

    invoke-interface {v6}, Lcom/google/googlenav/ui/aU;->c()I

    move-result v5

    invoke-interface {v6}, Lcom/google/googlenav/ui/aU;->e()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/aL;-><init>(LG/m;Ljava/util/List;FII)V

    iput-object v1, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lam/p;->d:LG/m;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lam/p;->b:Lcom/google/googlenav/ui/r;

    invoke-interface {v1}, Lcom/google/googlenav/ui/r;->a()I

    move-result v1

    iget v2, p0, Lam/p;->c:I

    if-eq v1, v2, :cond_a

    :cond_9
    invoke-direct {p0, v6, v7}, Lam/p;->a(Lcom/google/googlenav/ui/aU;Z)LG/m;

    move-result-object v1

    iput-object v1, p0, Lam/p;->d:LG/m;

    :cond_a
    new-instance v1, Lcom/google/android/maps/driveabout/vector/bb;

    iget-object v2, p0, Lam/p;->d:LG/m;

    iget v3, p0, Lam/p;->j:I

    int-to-float v3, v3

    invoke-interface {v6}, Lcom/google/googlenav/ui/aU;->c()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bb;-><init>(LG/m;FI)V

    iput-object v1, p0, Lam/p;->h:Lcom/google/android/maps/driveabout/vector/cr;

    goto/16 :goto_2
.end method
