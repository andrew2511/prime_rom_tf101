.class public LaK/j;
.super Lf/v;


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/vector/bD;

.field private d:Lcom/google/android/maps/driveabout/vector/bO;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:[Lf/K;

.field private h:B

.field private i:Lcom/google/android/maps/driveabout/vector/bV;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILf/h;Lf/l;I)V
    .locals 7

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lf/v;-><init>(IIILf/h;Lf/l;I)V

    const/4 v0, 0x0

    iput-object v0, p0, LaK/j;->f:Landroid/widget/TextView;

    new-instance v0, LaK/b;

    invoke-direct {v0, p0, p1}, LaK/b;-><init>(LaK/j;Landroid/content/Context;)V

    iput-object v0, p0, LaK/j;->c:Lcom/google/android/maps/driveabout/vector/bD;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aQ;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aQ;-><init>(Lak/h;)V

    new-instance v1, LaK/a;

    invoke-direct {v1, p0}, LaK/a;-><init>(LaK/j;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aQ;->a(Lcom/google/android/maps/driveabout/vector/t;)V

    new-instance v1, LaK/c;

    invoke-direct {v1, p0}, LaK/c;-><init>(LaK/j;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aQ;->a(Lcom/google/android/maps/driveabout/vector/bv;)V

    iget-object v1, p0, LaK/j;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/aQ;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lf/K;

    iput-object v0, p0, LaK/j;->g:[Lf/K;

    return-void
.end method

.method private y()V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x5

    iget-object v0, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LaK/j;->k()B

    move-result v0

    iget-byte v1, p0, LaK/j;->h:B

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LaK/j;->k()B

    move-result v0

    iput-byte v0, p0, LaK/j;->h:B

    invoke-virtual {p0}, LaK/j;->b()Lf/C;

    move-result-object v0

    invoke-virtual {v0}, Lf/C;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lf/C;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x86

    const-string v1, "satellitebicycling"

    move v2, v5

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_1
    iget-object v3, p0, LaK/j;->i:Lcom/google/android/maps/driveabout/vector/bV;

    if-eqz v3, :cond_2

    iget-object v3, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    iget-object v4, p0, LaK/j;->i:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-interface {v3, v4}, Lcom/google/android/maps/driveabout/vector/bO;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_2
    if-eqz v0, :cond_9

    if-ne v2, v5, :cond_8

    iget-object v3, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/bO;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/bV;->c(ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    iput-object v0, p0, LaK/j;->i:Lcom/google/android/maps/driveabout/vector/bV;

    :goto_2
    iget-object v0, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    iget-object v1, p0, LaK/j;->i:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/bO;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :goto_3
    iget-object v0, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/bO;->b(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    const/4 v1, 0x2

    const-string v2, "satellite"

    move-object v7, v2

    move v2, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lf/C;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lf/C;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x87

    const-string v1, "terrainbicycling"

    move v2, v5

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_1

    :cond_5
    const/16 v0, 0xc

    const/4 v1, 0x4

    const-string v2, "terrain"

    move-object v7, v2

    move v2, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lf/C;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x82

    const-string v1, "basebicycling"

    move v2, v5

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_1

    :cond_7
    const/16 v0, 0xa

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_8
    iget-object v3, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/bO;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/bV;->b(ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    iput-object v0, p0, LaK/j;->i:Lcom/google/android/maps/driveabout/vector/bV;

    goto :goto_2

    :cond_9
    iput-object v6, p0, LaK/j;->i:Lcom/google/android/maps/driveabout/vector/bV;

    goto :goto_3
.end method


# virtual methods
.method public a(Lf/h;II)Lf/h;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getMapPoint should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bO;)V
    .locals 2

    iput-object p1, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    if-eqz p1, :cond_0

    iget-object v0, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    iget-object v1, p0, LaK/j;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/bO;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    invoke-virtual {p0}, LaK/j;->b()Lf/C;

    move-result-object v0

    invoke-virtual {v0}, Lf/C;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaK/j;->b(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lf/C;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, LaK/j;->b:Lf/C;

    invoke-direct {p0}, LaK/j;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lf/h;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setCenterPoint should be called on the MapController, not map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lf/l;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setZoom should be called on the MapController, not map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lf/K;

    iput-object v0, p0, LaK/j;->g:[Lf/K;

    const/4 v0, 0x0

    invoke-virtual {p0}, LaK/j;->k()B

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {v0}, LG/w;->b()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lf/l;->b(I)Lf/l;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, LG/w;->c()I

    move-result v5

    invoke-virtual {v0}, LG/w;->d()I

    move-result v0

    invoke-static {v1, v5, v0, v4}, Lf/K;->a(BIILf/l;)Lf/K;

    move-result-object v0

    iget-object v4, p0, LaK/j;->g:[Lf/K;

    add-int/lit8 v5, v3, 0x1

    aput-object v0, v4, v3

    move v0, v5

    :goto_2
    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, LaK/j;->a:Lf/J;

    invoke-virtual {v0}, Lf/J;->k()V

    iget-object v0, p0, LaK/j;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, LaK/j;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->c()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/googlenav/prefetch/android/l;->d()Lcom/google/googlenav/prefetch/android/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LaK/j;->g()[Lf/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/l;->a([Lf/K;)I

    move-result v0

    iget-object v1, p0, LaK/j;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "% prefetched"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LaK/j;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaK/j;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method public a(Lf/K;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, LaK/j;->g:[Lf/K;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method public a(Lf/h;Z)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "canCover should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lf/h;ZLf/l;)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "canCover should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lk/m;ZZZZ)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "drawMap should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized d(Lf/h;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public g()[Lf/K;
    .locals 1

    iget-object v0, p0, LaK/j;->g:[Lf/K;

    return-object v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w()Lcom/google/android/maps/driveabout/vector/bD;
    .locals 1

    iget-object v0, p0, LaK/j;->c:Lcom/google/android/maps/driveabout/vector/bD;

    return-object v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LaK/j;->d:Lcom/google/android/maps/driveabout/vector/bO;

    iput-object v0, p0, LaK/j;->e:Landroid/widget/TextView;

    iput-object v0, p0, LaK/j;->i:Lcom/google/android/maps/driveabout/vector/bV;

    const/4 v0, 0x0

    iput-byte v0, p0, LaK/j;->h:B

    return-void
.end method
