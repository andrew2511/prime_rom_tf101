.class public Lcom/google/android/maps/driveabout/vector/bq;
.super Lcom/google/android/maps/driveabout/vector/au;


# instance fields
.field private final d:Ljava/util/LinkedList;

.field private final e:Ljava/util/HashMap;

.field private final f:Ljava/util/HashMap;

.field private g:LG/F;

.field private h:Ljava/util/List;

.field private final i:I

.field private j:I

.field private k:Z

.field private l:Lcom/google/android/maps/driveabout/vector/ae;


# direct methods
.method constructor <init>(ILcom/google/android/maps/driveabout/vector/r;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/au;-><init>(Lcom/google/android/maps/driveabout/vector/r;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->f:Ljava/util/HashMap;

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->j:I

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->k:Z

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bq;->i:I

    return-void
.end method

.method private a(Ljava/lang/RuntimeException;Ljava/util/Iterator;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bq;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/bq;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " E:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " C:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "GLMarkerOverlay"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Las/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 8

    const v7, -0x41b33333

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:LG/F;

    invoke-virtual {v1, v0}, LG/F;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    :goto_1
    invoke-virtual {v1}, LG/F;->a()LG/R;

    move-result-object v2

    invoke-virtual {v1}, LG/F;->d()LG/Q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v0

    invoke-virtual {v1}, LG/F;->e()LG/Q;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v3

    invoke-virtual {v1}, LG/F;->g()LG/Q;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v4

    invoke-virtual {v1}, LG/F;->f()LG/Q;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, LG/F;->a(LG/Q;LG/Q;LG/Q;LG/Q;)LG/F;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->e()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->au_()LG/Q;

    move-result-object v5

    invoke-virtual {v2, v5}, LG/R;->a(LG/Q;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, LG/F;->a(LG/Q;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v3, v5}, LG/F;->a(LG/Q;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ae;->b(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v0, v4, v2}, Lcom/google/android/maps/driveabout/vector/bq;->a(Ljava/lang/RuntimeException;Ljava/util/Iterator;I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_7
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:LG/F;

    goto/16 :goto_0
.end method

.method private c(FFLcom/google/android/maps/driveabout/vector/bF;)V
    .locals 2

    const/high16 v0, 0x428c

    sub-float v0, p2, v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->l:Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(LG/Q;)V

    return-void
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/ae;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->aj_()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->ak_()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private declared-synchronized j()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->aj_()I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->ak_()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public C_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->k:Z

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->i:I

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/ae;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/ae;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/bq;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/be;Z)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->a:Lcom/google/android/maps/driveabout/vector/r;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/vector/be;->a(Lcom/google/android/maps/driveabout/vector/ae;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/ae;->d(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/ae;->d(Z)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bq;->a:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/r;->d()V

    :cond_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bq;->d(Lcom/google/android/maps/driveabout/vector/ae;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    goto :goto_0

    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->a:Lcom/google/android/maps/driveabout/vector/r;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bq;->j()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 5

    const/4 v4, 0x1

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bq;->b(Lcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/br;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v0

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    move v0, v4

    :goto_3
    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public declared-synchronized a(Ljava/util/List;FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p5}, Lcom/google/android/maps/driveabout/vector/bq;->b(Lcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cA;->aw_()Z

    move-result v2

    if-eqz v2, :cond_0

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

.method public b(Lcom/google/android/maps/driveabout/vector/ae;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->a:Lcom/google/android/maps/driveabout/vector/r;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/ae;->d(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->a:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/r;->d()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bq;->d(Lcom/google/android/maps/driveabout/vector/ae;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bq;->c(FFLcom/google/android/maps/driveabout/vector/bF;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized c(Lcom/google/android/maps/driveabout/vector/ae;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bq;->d(Lcom/google/android/maps/driveabout/vector/ae;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ae;->b(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->k:Z

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->l:Lcom/google/android/maps/driveabout/vector/ae;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/bq;->c(FFLcom/google/android/maps/driveabout/vector/bF;)V

    monitor-exit p0

    move v0, v4

    goto :goto_0

    :cond_2
    monitor-exit p0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->k:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/bq;->c(FFLcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->l:Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->c()Lcom/google/android/maps/driveabout/vector/cf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->l:Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->c()Lcom/google/android/maps/driveabout/vector/cf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->l:Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ae;->au_()LG/Q;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cf;->a(LG/Q;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->l:Lcom/google/android/maps/driveabout/vector/ae;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bq;->k:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public h()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->a:Lcom/google/android/maps/driveabout/vector/r;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->a:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/r;->b()Lcom/google/android/maps/driveabout/vector/cA;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/ae;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ae;->d()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->a:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/r;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bq;->j()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->h:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method i()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->f:Ljava/util/HashMap;

    return-object v0
.end method
