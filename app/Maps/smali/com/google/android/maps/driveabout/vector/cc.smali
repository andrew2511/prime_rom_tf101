.class public Lcom/google/android/maps/driveabout/vector/cc;
.super Lcom/google/android/maps/driveabout/vector/au;


# instance fields
.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/google/android/maps/driveabout/vector/ci;

.field private final f:I


# direct methods
.method public constructor <init>(ILcom/google/android/maps/driveabout/vector/r;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/au;-><init>(Lcom/google/android/maps/driveabout/vector/r;)V

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cc;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cc;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/r;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/cc;-><init>(ILcom/google/android/maps/driveabout/vector/r;)V

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cc;->e:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ci;->e()Lcom/google/android/maps/driveabout/vector/ba;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ba;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ba;->a()Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cc;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/S;->ax_()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cc;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/S;->ax_()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cc;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cc;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x493e0

    :goto_0
    return v0

    :cond_0
    const v0, 0x30d40

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cc;->e:Lcom/google/android/maps/driveabout/vector/ci;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cc;->e:Lcom/google/android/maps/driveabout/vector/ci;

    if-eqz v0, :cond_0

    if-gtz p4, :cond_0

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cc;->h()V

    move v1, v4

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->s()V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/google/android/maps/driveabout/vector/S;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->t()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/cA;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/android/maps/driveabout/vector/cA;->a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)I

    move-result v2

    if-ge v2, p6, :cond_0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/d;

    invoke-direct {v3, v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/d;-><init>(Lcom/google/android/maps/driveabout/vector/cA;Lcom/google/android/maps/driveabout/vector/au;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
