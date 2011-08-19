.class public abstract Lt/ai;
.super Lad/i;

# interfaces
.implements Lak/c;
.implements Lt/P;
.implements Lt/y;


# instance fields
.field protected a:Lt/l;

.field volatile b:I

.field protected c:Lac/p;

.field volatile d:I

.field volatile e:I

.field private f:Lt/ay;

.field private g:Lt/c;

.field private volatile h:Z

.field private final i:Z

.field private j:I

.field private k:Ljava/util/Locale;

.field private volatile l:Lt/r;

.field private final m:Lak/h;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Looper;

.field private p:Z

.field private final q:Ljava/util/List;

.field private final r:Lad/g;

.field private final s:Ljava/util/Map;

.field private final t:I

.field private u:Z

.field private final v:Ljava/io/File;

.field private w:Lcom/google/googlenav/aT;

.field private final x:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Lak/h;Ljava/lang/String;Lt/ay;Lt/c;IZILjava/util/Locale;Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lad/i;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lt/ai;->q:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt/ai;->s:Ljava/util/Map;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lt/ai;->c:Lac/p;

    iput-boolean v1, p0, Lt/ai;->u:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/ai;->x:Ljava/util/ArrayList;

    iput-object p3, p0, Lt/ai;->f:Lt/ay;

    iput-object p4, p0, Lt/ai;->g:Lt/c;

    iput-boolean v1, p0, Lt/ai;->h:Z

    iput p5, p0, Lt/ai;->t:I

    const/4 v0, -0x1

    iput v0, p0, Lt/ai;->j:I

    iput-boolean p6, p0, Lt/ai;->i:Z

    iput-object p8, p0, Lt/ai;->k:Ljava/util/Locale;

    iput-object p9, p0, Lt/ai;->v:Ljava/io/File;

    iput-object p1, p0, Lt/ai;->m:Lak/h;

    invoke-virtual {p0}, Lt/ai;->a()Lt/l;

    move-result-object v0

    iput-object v0, p0, Lt/ai;->a:Lt/l;

    iget-object v0, p0, Lt/ai;->a:Lt/l;

    invoke-static {v0, p0}, Lt/l;->a(Lt/l;Lt/ai;)Lt/ai;

    new-instance v0, Lt/R;

    invoke-direct {v0, p0, p7}, Lt/R;-><init>(Lt/ai;I)V

    iput-object v0, p0, Lt/ai;->r:Lad/g;

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lt/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v2, p0, Lt/ai;->g:Lt/c;

    :cond_0
    iput p1, p0, Lt/ai;->j:I

    iget-boolean v1, p0, Lt/ai;->i:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lt/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lt/ai;->g:Lt/c;

    :cond_1
    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v0}, Lt/ay;->a()Z

    :cond_2
    invoke-direct {p0}, Lt/ai;->l()V

    :cond_3
    return-void
.end method

.method private a(LG/u;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lt/ai;->i()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, LG/u;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lt/T;

    invoke-direct {v0, p0}, Lt/T;-><init>(Lt/ai;)V

    new-instance v1, Lt/q;

    invoke-interface {p1}, LG/u;->a()LG/w;

    move-result-object v2

    sget-object v3, Lt/X;->b:Lt/X;

    invoke-direct {v1, v2, v0, v3, v4}, Lt/q;-><init>(LG/w;Lt/A;Lt/X;Z)V

    iget-object v0, p0, Lt/ai;->n:Landroid/os/Handler;

    iget-object v2, p0, Lt/ai;->n:Landroid/os/Handler;

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lt/ai;)V
    .locals 0

    invoke-direct {p0}, Lt/ai;->m()V

    return-void
.end method

.method static synthetic a(Lt/ai;LG/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lt/ai;->b(LG/w;)V

    return-void
.end method

.method static synthetic a(Lt/ai;Lt/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lt/ai;->a(Lt/l;)V

    return-void
.end method

.method static synthetic a(Lt/ai;Lt/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lt/ai;->a(Lt/q;)V

    return-void
.end method

.method private a(Lt/l;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lt/ai;->q()V

    iget-boolean v0, p0, Lt/ai;->u:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lt/ai;->u:Z

    :goto_0
    iget-object v0, p0, Lt/ai;->r:Lad/g;

    invoke-virtual {v0}, Lad/g;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ai;->r:Lad/g;

    invoke-virtual {v0}, Lad/g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/q;

    invoke-direct {p0, v0}, Lt/ai;->a(Lt/q;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lt/l;->l()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lt/ai;->i()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lt/ai;->a(I)V

    :cond_1
    iget-object v0, p0, Lt/ai;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    move v1, v2

    :goto_2
    invoke-virtual {p1}, Lt/l;->i()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Lt/l;->d(I)Lt/q;

    move-result-object v2

    invoke-virtual {v2}, Lt/q;->a()LG/w;

    move-result-object v3

    iget-object v4, p0, Lt/ai;->s:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lt/ai;->b:I

    sub-int/2addr v4, v10

    iput v4, p0, Lt/ai;->b:I

    :try_start_0
    invoke-virtual {v2}, Lt/q;->c()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lt/ai;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lt/ai;->e:I

    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {p1, v1}, Lt/l;->c(I)[B

    move-result-object v4

    if-eqz v4, :cond_b

    array-length v5, v4

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    :goto_4
    invoke-virtual {p1, v1}, Lt/l;->a(I)LG/u;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lt/ai;->f:Lt/ay;

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lt/q;->c()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v6, v3, v5}, Lt/ay;->a(LG/w;LG/u;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0, v3, v5, v4}, Lt/c;->a(LG/w;LG/u;[B)V

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lt/q;->a(ILG/u;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget v4, p0, Lt/ai;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lt/ai;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v2, v10, v9}, Lt/q;->a(ILG/u;)V

    goto :goto_5

    :cond_7
    :try_start_1
    iget-object v4, p0, Lt/ai;->f:Lt/ay;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v4, v3}, Lt/ay;->a(LG/w;)V

    :cond_8
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lt/q;->a(ILG/u;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_2

    iget-object v0, p0, Lt/ai;->l:Lt/r;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lt/ai;->l:Lt/r;

    invoke-virtual {v0}, Lt/r;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_a
    new-instance v0, Lt/r;

    invoke-direct {v0, p0}, Lt/r;-><init>(Lt/ai;)V

    iput-object v0, p0, Lt/ai;->l:Lt/r;

    goto/16 :goto_1

    :cond_b
    move-object v4, v9

    goto :goto_4
.end method

.method private a(Lt/q;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lt/ai;->q()V

    invoke-virtual {p1}, Lt/q;->a()LG/w;

    move-result-object v1

    iget-object v0, p0, Lt/ai;->s:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lt/q;->a(Lt/q;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lt/q;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v4}, Lt/ai;->a(Lt/q;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lt/ai;->u:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lt/ai;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lt/q;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lt/ai;->r:Lad/g;

    invoke-virtual {v0, v1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/q;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lt/q;->a(Lt/q;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lt/ai;->r:Lad/g;

    invoke-virtual {v0, v1, p1}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lt/ai;->s:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lt/ai;->a:Lt/l;

    invoke-virtual {v0, p1}, Lt/l;->b(Lt/q;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lt/ai;->n()V

    :cond_5
    iget-object v0, p0, Lt/ai;->a:Lt/l;

    invoke-virtual {v0, p1}, Lt/l;->a(Lt/q;)V

    iget v0, p0, Lt/ai;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/ai;->b:I

    iget-object v0, p0, Lt/ai;->a:Lt/l;

    invoke-virtual {v0}, Lt/l;->j()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lt/q;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lt/ai;->n()V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lt/ai;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt/ai;->n:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lt/ai;->n:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lt/ai;->p:Z

    goto :goto_0
.end method

.method private a(Lt/q;Z)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lt/q;->a()LG/w;

    move-result-object v0

    iget-object v1, p0, Lt/ai;->f:Lt/ay;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v1, v0}, Lt/ay;->c(LG/w;)LG/u;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lt/ai;->c:Lac/p;

    invoke-interface {v1, v2}, LG/u;->a(Lac/p;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v0, v1}, Lt/ay;->a(LG/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v7, v5}, Lt/q;->a(ILG/u;)V

    :goto_0
    move v0, v6

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lt/q;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/aT;->a()V

    :cond_1
    invoke-direct {p0, v1}, Lt/ai;->a(LG/u;)V

    invoke-virtual {p1}, Lt/q;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v5

    :goto_2
    invoke-virtual {p1, v4, v0}, Lt/q;->a(ILG/u;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lt/q;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v0}, Lt/c;->b(LG/w;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v4, v5}, Lt/q;->a(ILG/u;)V

    move v0, v6

    goto :goto_1

    :cond_4
    invoke-interface {v1, v0}, Lt/c;->c(LG/w;)LG/u;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, p0, Lt/ai;->c:Lac/p;

    invoke-interface {v2, v3}, LG/u;->a(Lac/p;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v1, v2}, Lt/c;->a(LG/u;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lt/q;->c()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/aT;->c()V

    :cond_5
    iget-object v1, p0, Lt/ai;->f:Lt/ay;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v1, v0}, Lt/ay;->a(LG/w;)V

    :cond_6
    invoke-virtual {p1, v7, v5}, Lt/q;->a(ILG/u;)V

    :goto_3
    move v0, v6

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lt/q;->c()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/aT;->b()V

    :cond_8
    iget-object v1, p0, Lt/ai;->f:Lt/ay;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v1, v0, v2}, Lt/ay;->a(LG/w;LG/u;)V

    :cond_9
    invoke-direct {p0, v2}, Lt/ai;->a(LG/u;)V

    invoke-virtual {p1, v4, v2}, Lt/q;->a(ILG/u;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lt/q;->c()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/aT;->c()V

    :cond_b
    move v0, v4

    goto/16 :goto_1
.end method

.method private b(LG/w;)V
    .locals 4

    iget-object v1, p0, Lt/ai;->x:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lt/ai;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lt/ai;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lt/u;->a(Lt/y;LG/w;)V

    move v0, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt/ai;->x:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v3

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lt/ai;)V
    .locals 0

    invoke-direct {p0}, Lt/ai;->o()V

    return-void
.end method

.method static synthetic c(Lt/ai;)V
    .locals 0

    invoke-direct {p0}, Lt/ai;->p()V

    return-void
.end method

.method static synthetic d(Lt/ai;)I
    .locals 1

    iget v0, p0, Lt/ai;->t:I

    return v0
.end method

.method private l()V
    .locals 4

    iget-object v1, p0, Lt/ai;->x:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lt/ai;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lt/ai;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lt/u;->a(Lt/y;)V

    move v0, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt/ai;->x:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v3

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private m()V
    .locals 1

    invoke-direct {p0}, Lt/ai;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt/ai;->p:Z

    invoke-direct {p0}, Lt/ai;->n()V

    return-void
.end method

.method private n()V
    .locals 3

    invoke-direct {p0}, Lt/ai;->q()V

    iget-object v0, p0, Lt/ai;->a:Lt/l;

    invoke-virtual {v0}, Lt/l;->i()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, LaT/g;

    const-string v1, "addRequest"

    iget-object v2, p0, Lt/ai;->a:Lt/l;

    invoke-direct {v0, v1, v2}, LaT/g;-><init>(Ljava/lang/String;Lak/d;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget-object v0, p0, Lt/ai;->m:Lak/h;

    iget-object v1, p0, Lt/ai;->a:Lt/l;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lt/ai;->q:Ljava/util/List;

    iget-object v1, p0, Lt/ai;->a:Lt/l;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lt/ai;->a()Lt/l;

    move-result-object v0

    iput-object v0, p0, Lt/ai;->a:Lt/l;

    iget-object v0, p0, Lt/ai;->a:Lt/l;

    invoke-static {v0, p0}, Lt/l;->a(Lt/l;Lt/ai;)Lt/ai;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    invoke-direct {p0}, Lt/ai;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/ai;->u:Z

    return-void
.end method

.method private p()V
    .locals 5

    invoke-direct {p0}, Lt/ai;->q()V

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lt/ai;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lt/ai;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lt/l;->i()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lt/l;->d(I)Lt/q;

    move-result-object v3

    iget-object v4, p0, Lt/ai;->s:Ljava/util/Map;

    invoke-virtual {v3}, Lt/q;->a()LG/w;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lt/ai;->b:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lt/ai;->b:I

    invoke-virtual {v0, v2}, Lt/l;->d(I)Lt/q;

    move-result-object v3

    invoke-direct {p0, v3}, Lt/ai;->a(Lt/q;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final q()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(LG/w;Z)LG/u;
    .locals 2

    new-instance v0, Lt/ar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt/ar;-><init>(Lt/R;)V

    new-instance v1, Lt/q;

    invoke-direct {v1, p1, v0}, Lt/q;-><init>(LG/w;Lt/A;)V

    invoke-direct {p0, v1, p2}, Lt/ai;->a(Lt/q;Z)Z

    invoke-static {v0}, Lt/ar;->a(Lt/ar;)LG/u;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Lt/l;
.end method

.method public a(IZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lt/ai;->n:Landroid/os/Handler;

    iget-object v1, p0, Lt/ai;->n:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(LG/w;Lt/A;)V
    .locals 3

    iget-object v0, p0, Lt/ai;->l:Lt/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ai;->l:Lt/r;

    invoke-virtual {v0}, Lt/r;->a()V

    :cond_0
    new-instance v0, Lt/q;

    invoke-direct {v0, p1, p2}, Lt/q;-><init>(LG/w;Lt/A;)V

    iget-object v1, p0, Lt/ai;->n:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lt/ai;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(LG/w;Lt/A;Lt/X;Z)V
    .locals 3

    new-instance v0, Lt/q;

    invoke-direct {v0, p1, p2, p3, p4}, Lt/q;-><init>(LG/w;Lt/A;Lt/X;Z)V

    iget-object v1, p0, Lt/ai;->n:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lt/ai;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lak/d;)V
    .locals 4

    instance-of v1, p1, Lt/l;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lt/l;

    move-object v1, v0

    invoke-static {v1}, Lt/l;->a(Lt/l;)Lt/ai;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lt/ai;->n:Landroid/os/Handler;

    iget-object v2, p0, Lt/ai;->n:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/aT;)V
    .locals 0

    iput-object p1, p0, Lt/ai;->w:Lcom/google/googlenav/aT;

    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 4

    iget-object v0, p0, Lt/ai;->k:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lt/ai;->n:Landroid/os/Handler;

    iget-object v2, p0, Lt/ai;->n:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lt/c;->a(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lt/ai;->g:Lt/c;

    :cond_1
    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v0}, Lt/ay;->a()Z

    :cond_2
    iput-object p1, p0, Lt/ai;->k:Ljava/util/Locale;

    invoke-direct {p0}, Lt/ai;->l()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public a(Lt/u;)V
    .locals 3

    iget-object v0, p0, Lt/ai;->x:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/ai;->x:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(LG/w;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lt/c;->c(LG/w;)LG/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LG/u;->b()I

    move-result v0

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v1

    invoke-interface {v1}, Lt/c;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public aA_()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->e()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lt/ai;->o:Landroid/os/Looper;

    new-instance v0, Lt/S;

    invoke-direct {v0, p0}, Lt/S;-><init>(Lt/ai;)V

    iput-object v0, p0, Lt/ai;->n:Landroid/os/Handler;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lt/ai;->g:Lt/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ai;->g:Lt/c;

    iget-object v1, p0, Lt/ai;->v:Ljava/io/File;

    invoke-interface {v0, v1}, Lt/c;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lt/ai;->g:Lt/c;

    :cond_0
    iget-object v0, p0, Lt/ai;->g:Lt/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt/ai;->k:Ljava/util/Locale;

    iget-object v1, p0, Lt/ai;->g:Lt/c;

    invoke-interface {v1}, Lt/c;->d()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lt/ai;->g:Lt/c;

    iget-object v1, p0, Lt/ai;->k:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lt/c;->a(Ljava/util/Locale;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/ai;->h:Z

    :cond_2
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lt/ai;->m:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->a(Lak/c;)V

    invoke-virtual {p0}, Lt/ai;->start()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lt/ai;->n:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public b(Lak/d;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lt/ai;->o:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ai;->o:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt/ai;->o:Landroid/os/Looper;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lt/ai;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v0}, Lt/ay;->a()Z

    :cond_1
    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lt/c;->e()V

    :cond_2
    iget-object v0, p0, Lt/ai;->m:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->b(Lak/c;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v0}, Lt/ay;->a()Z

    :cond_0
    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lt/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lt/c;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt/ai;->g:Lt/c;

    :cond_1
    invoke-direct {p0}, Lt/ai;->l()V

    return-void
.end method

.method public f()J
    .locals 2

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    invoke-interface {v0}, Lt/c;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ai;->f:Lt/ay;

    invoke-interface {v0}, Lt/ay;->a()Z

    :cond_0
    return-void
.end method

.method public h()J
    .locals 4

    iget-object v0, p0, Lt/ai;->m:Lak/h;

    invoke-virtual {v0}, Lak/h;->n()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lt/ai;->m:Lak/h;

    invoke-virtual {v2}, Lak/h;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lt/ai;->b:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lt/ai;->c:Lac/p;

    invoke-interface {v2}, Lac/p;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lt/c;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lt/ai;->j:I

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Las/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lt/c;
    .locals 1

    iget-object v0, p0, Lt/ai;->g:Lt/c;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lt/ai;->h:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lt/ai;->g:Lt/c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lt/ai;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    monitor-exit p0

    :goto_1
    return-object v0

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lt/ai;->g:Lt/c;

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
