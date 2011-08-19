.class Lcom/google/android/maps/driveabout/vector/J;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;

.field private q:Lcom/google/android/maps/driveabout/vector/aS;

.field private r:Lcom/google/android/maps/driveabout/vector/aT;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Lcom/google/android/maps/driveabout/vector/aS;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/J;->p:Ljava/util/ArrayList;

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/J;->k:I

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/J;->l:I

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/J;->n:Z

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/J;->m:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/J;->q:Lcom/google/android/maps/driveabout/vector/aS;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/J;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/J;->c:Z

    return p1
.end method

.method private j()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/J;->r:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->c()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/J;->r:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->h:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/cI;->c(Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 21

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aT;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/aT;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/J;->r:Lcom/google/android/maps/driveabout/vector/aT;

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->h:Z

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v16, v12

    move-object v12, v2

    move-object/from16 v2, v16

    move/from16 v17, v10

    move v10, v4

    move/from16 v4, v17

    move/from16 v18, v8

    move v8, v6

    move/from16 v6, v18

    move/from16 v19, v5

    move v5, v9

    move/from16 v9, v19

    move/from16 v20, v3

    move v3, v11

    move/from16 v11, v20

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->b:Z

    move v14, v0

    if-eqz v14, :cond_0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->k()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :goto_2
    return-void

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->p:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->p:Ljava/util/ArrayList;

    move-object v2, v0

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object/from16 v16, v2

    move v2, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move-object/from16 v3, v16

    :goto_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_11

    :try_start_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v3, 0x0

    move-object/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v2

    move-object/from16 v2, v16

    goto :goto_0

    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    move v14, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->d:Z

    move v15, v0

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->d:Z

    move v14, v0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->j:Z

    move v14, v0

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->k()V

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->j:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v9, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->k()V

    const/4 v9, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    move v14, v0

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    move v14, v0

    if-eqz v14, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->j()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/vector/cI;->a()Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->k()V

    :cond_6
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/vector/cI;->b()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->r:Lcom/google/android/maps/driveabout/vector/aT;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/vector/aT;->d()V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->f:Z

    move v14, v0

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->g:Z

    move v14, v0

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    move v14, v0

    if-eqz v14, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->j()V

    :cond_8
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->g:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->f:Z

    move v14, v0

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->g:Z

    move v14, v0

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->g:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v6, :cond_b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->o:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->m()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->h:Z

    move v14, v0

    if-nez v14, :cond_c

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->h:Z

    move v14, v0

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    move v14, v0

    if-nez v14, :cond_d

    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    const/4 v8, 0x1

    const/4 v10, 0x1

    move/from16 v16, v10

    move v10, v8

    move/from16 v8, v16

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    move v14, v0

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/J;->k:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/J;->l:I

    move v7, v0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)Z

    move/from16 v16, v7

    move v7, v8

    move v8, v3

    move/from16 v3, v16

    :goto_5
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    move-object/from16 v16, v2

    move v2, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->b(Lcom/google/android/maps/driveabout/vector/J;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v14

    if-eqz v14, :cond_c

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->r:Lcom/google/android/maps/driveabout/vector/aT;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/maps/driveabout/vector/aT;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v11, 0x1

    :try_start_7
    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->h:Z

    const/4 v11, 0x1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v3

    monitor-enter v3

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->k()V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    :catch_0
    move-exception v2

    :try_start_a
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->c(Lcom/google/android/maps/driveabout/vector/J;)V

    throw v2

    :cond_f
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/J;->n:Z

    goto :goto_5

    :cond_10
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :cond_11
    if-eqz v2, :cond_13

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->r:Lcom/google/android/maps/driveabout/vector/aT;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/android/maps/driveabout/vector/aT;->a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v2, :cond_12

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v2

    monitor-enter v2

    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/J;->k()V

    monitor-exit v2

    goto/16 :goto_2

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v3

    :cond_12
    :try_start_d
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v12, 0x0

    move/from16 v16, v12

    move-object v12, v2

    move/from16 v2, v16

    :cond_13
    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->q:Lcom/google/android/maps/driveabout/vector/aS;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->r:Lcom/google/android/maps/driveabout/vector/aT;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/maps/driveabout/vector/aT;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v11, v12, v13}, Lcom/google/android/maps/driveabout/vector/aS;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const/4 v11, 0x0

    :cond_14
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->q:Lcom/google/android/maps/driveabout/vector/aS;

    move-object v9, v0

    invoke-interface {v9, v12, v5, v4}, Lcom/google/android/maps/driveabout/vector/aS;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    const/4 v9, 0x0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->q:Lcom/google/android/maps/driveabout/vector/aS;

    move-object v13, v0

    invoke-interface {v13, v12}, Lcom/google/android/maps/driveabout/vector/aS;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/J;->r:Lcom/google/android/maps/driveabout/vector/aT;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/maps/driveabout/vector/aT;->b()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v13

    if-nez v13, :cond_16

    const/4 v10, 0x1

    :cond_16
    if-eqz v8, :cond_17

    const/4 v7, 0x1

    move-object/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v2

    move-object/from16 v2, v16

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v2

    :catchall_4
    move-exception v3

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v3

    :cond_17
    move-object/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v2

    move-object/from16 v2, v16

    goto/16 :goto_0
.end method

.method private m()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/J;->k:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/J;->l:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->n:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/J;->m:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/J;->m:I

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(II)V
    .locals 3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/J;->k:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/J;->l:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->n:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->o:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->o:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->i(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/J;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->i(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/J;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/J;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/J;->m:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->n:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->f:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->f:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->d:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->n:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->o:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->b:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->j:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/J;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/J;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/J;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/J;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MAP"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/J;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->w()Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    goto :goto_0
.end method
