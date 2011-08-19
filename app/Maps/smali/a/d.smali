.class La/d;
.super Lad/g;


# instance fields
.field final synthetic b:La/e;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(La/e;)V
    .locals 1

    iput-object p1, p0, La/d;->b:La/e;

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lad/g;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/d;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(La/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, La/d;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(LG/w;La/g;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lad/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, La/d;->b:La/e;

    iget v1, p2, La/g;->b:I

    invoke-static {v0, v1}, La/e;->a(La/e;I)I

    iget-object v0, p0, La/d;->b:La/e;

    iget v1, p2, La/g;->c:I

    invoke-static {v0, v1}, La/e;->b(La/e;I)I

    iget-object v0, p2, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v0, :cond_0

    iget-object v0, p2, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v1, p0, La/d;->b:La/e;

    invoke-static {v1}, La/e;->a(La/e;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    return-void
.end method

.method public a(La/g;)V
    .locals 1

    iget-object v0, p0, La/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LG/w;

    check-cast p2, La/g;

    invoke-virtual {p0, p1, p2}, La/d;->a(LG/w;La/g;)V

    return-void
.end method

.method public a(LG/w;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, La/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g;

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    sget-object v1, La/e;->a:LG/w;

    invoke-virtual {p0, v1}, La/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/g;

    if-nez p0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iget-wide v0, v0, La/g;->d:J

    iget-wide v2, p0, La/g;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, La/d;->b()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, La/d;->e()Lad/d;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lad/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lad/d;->a()Lad/l;

    move-result-object v3

    iget-object v0, v3, Lad/l;->a:Ljava/lang/Object;

    sget-object v4, La/e;->a:LG/w;

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {p0, v0}, La/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, v3, Lad/l;->b:Ljava/lang/Object;

    check-cast v0, La/g;

    iget-object v4, v0, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/cu;->a()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v0, v3, Lad/l;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget v3, v0, La/g;->b:I

    iget v5, v0, La/g;->c:I

    iget-object v6, p0, La/d;->b:La/e;

    invoke-static {v6}, La/e;->a(La/e;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/android/maps/driveabout/vector/cu;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/cu;->f()I

    move-result v6

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/cu;->g()I

    move-result v4

    iput v6, v0, La/g;->b:I

    iput v4, v0, La/g;->c:I

    iget-object v0, p0, La/d;->b:La/e;

    iget-object v7, p0, La/d;->b:La/e;

    invoke-static {v7}, La/e;->b(La/e;)I

    move-result v7

    sub-int v3, v7, v3

    add-int/2addr v3, v6

    invoke-static {v0, v3}, La/e;->c(La/e;I)I

    iget-object v0, p0, La/d;->b:La/e;

    iget-object v3, p0, La/d;->b:La/e;

    invoke-static {v3}, La/e;->c(La/e;)I

    move-result v3

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    invoke-static {v0, v3}, La/e;->d(La/e;I)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public g()Lad/l;
    .locals 2

    invoke-virtual {p0}, La/d;->e()Lad/d;

    move-result-object v0

    invoke-virtual {v0}, Lad/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lad/d;->a()Lad/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, La/d;->b:La/e;

    invoke-static {v0}, La/e;->d(La/e;)Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v4

    sget-object v0, La/e;->a:LG/w;

    invoke-virtual {p0, v0}, La/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g;

    if-nez v0, :cond_0

    sget-object v6, La/e;->a:LG/w;

    new-instance v0, La/g;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, La/g;-><init>(Lcom/google/android/maps/driveabout/vector/cu;IIJ)V

    invoke-virtual {p0, v6, v0}, La/d;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-wide v4, v0, La/g;->d:J

    goto :goto_0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, La/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g;

    iget-object v2, v0, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v3, p0, La/d;->b:La/e;

    invoke-static {v3}, La/e;->a(La/e;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v2, p0, La/d;->b:La/e;

    iget v3, v0, La/g;->b:I

    invoke-static {v2, v3}, La/e;->a(La/e;I)I

    iget-object v2, p0, La/d;->b:La/e;

    iget v0, v0, La/g;->c:I

    invoke-static {v2, v0}, La/e;->b(La/e;I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
