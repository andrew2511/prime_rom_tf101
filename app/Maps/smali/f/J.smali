.class public Lf/J;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;
.implements Lac/h;
.implements Lf/r;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/Hashtable;

.field b:Lf/j;

.field volatile c:Z

.field private final d:Z

.field private final e:Ljava/util/Vector;

.field private f:Lf/T;

.field private final g:Ljava/util/Vector;

.field private h:I

.field private i:I

.field private volatile j:Z

.field private k:Lf/F;

.field private l:I

.field private final m:Ljava/util/Hashtable;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private p:J

.field private final q:Ljava/util/Vector;

.field private r:I

.field private s:J


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/J;->g:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lf/J;->k:Lf/F;

    iput v2, p0, Lf/J;->l:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/J;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/J;->o:Ljava/lang/Object;

    iput-boolean v4, p0, Lf/J;->c:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/J;->q:Ljava/util/Vector;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lf/J;->s:J

    const/16 v0, 0x1a

    iput v0, p0, Lf/J;->r:I

    if-ne p1, v3, :cond_0

    iput-boolean v4, p0, Lf/J;->d:Z

    const/16 v0, 0x61a8

    iput v0, p0, Lf/J;->h:I

    invoke-direct {p0}, Lf/J;->r()V

    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/J;->m:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    iput-boolean v2, p0, Lf/J;->j:Z

    new-instance v0, Lf/e;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lf/e;-><init>(Lf/J;LT/c;IILjava/lang/String;)V

    invoke-virtual {v0}, Lf/e;->b()V

    invoke-static {}, Lf/J;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lf/J;->p:J

    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lf/f;

    invoke-direct {v1, p0}, Lf/f;-><init>(Lf/J;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    return-void

    :cond_0
    iput-boolean v2, p0, Lf/J;->d:Z

    iput p1, p0, Lf/J;->h:I

    if-ne p2, v3, :cond_1

    invoke-direct {p0}, Lf/J;->r()V

    goto :goto_0

    :cond_1
    iput p2, p0, Lf/J;->i:I

    goto :goto_0
.end method

.method private a([J[Lf/K;III)I
    .locals 6

    aget-wide v0, p1, p5

    invoke-direct {p0, p1, p2, p5, p4}, Lf/J;->a([J[Lf/K;II)V

    move v2, p3

    move v3, p3

    :goto_0
    if-ge v2, p4, :cond_1

    aget-wide v4, p1, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lf/J;->a([J[Lf/K;II)V

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-wide v0, p1, p4

    aget-wide v4, p1, v3

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    invoke-direct {p0, p1, p2, p4, v3}, Lf/J;->a([J[Lf/K;II)V

    move v0, v3

    :goto_1
    return v0

    :cond_2
    move v0, p4

    goto :goto_1
.end method

.method static a(Lf/K;JJ)J
    .locals 2

    sub-long v0, p1, p3

    return-wide v0
.end method

.method private a(Lf/K;I)Lk/l;
    .locals 1

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lf/J;->c(Lf/K;)Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lf/J;->b(Lf/K;)Lk/l;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lf/K;Lf/K;Lf/P;)Lk/l;
    .locals 7

    const/16 v5, 0x100

    const/4 v4, 0x0

    const/16 v3, 0x80

    invoke-virtual {p1}, Lf/K;->c()I

    move-result v0

    invoke-virtual {p2}, Lf/K;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Lf/K;->d()I

    move-result v0

    invoke-virtual {p2}, Lf/K;->d()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ne v0, v2, :cond_1

    move v2, v4

    :goto_1
    move-object v0, p3

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lf/P;->a(IIIIII)Lk/l;

    move-result-object v0

    return-object v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private a(I)V
    .locals 7

    const/4 v3, 0x0

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lf/J;->j:Z

    invoke-virtual {p0}, Lf/J;->h()[Lf/K;

    move-result-object v2

    move v4, p1

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_1

    iget v0, p0, Lf/J;->i:I

    if-le v4, v0, :cond_1

    aget-object v5, v2, v3

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/P;

    invoke-virtual {v0}, Lf/P;->e()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lf/P;->v()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    iget-object v6, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lf/P;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sub-int v0, v4, v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lf/J;->j:Z

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lf/J;->j:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private a(IILjava/lang/String;)V
    .locals 1

    if-lez p1, :cond_0

    new-instance v0, Lf/B;

    invoke-direct {v0, p0, p3, p1, p2}, Lf/B;-><init>(Lf/J;Ljava/lang/String;II)V

    iput-object v0, p0, Lf/J;->b:Lf/j;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lf/E;

    invoke-direct {v0}, Lf/E;-><init>()V

    iput-object v0, p0, Lf/J;->b:Lf/j;

    goto :goto_0
.end method

.method static synthetic a(Lf/J;)V
    .locals 0

    invoke-direct {p0}, Lf/J;->v()V

    return-void
.end method

.method static synthetic a(Lf/J;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lf/J;->a(IILjava/lang/String;)V

    return-void
.end method

.method private a(Lf/P;)V
    .locals 2

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v0

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lf/P;I)V
    .locals 2

    iget-object v0, p0, Lf/J;->k:Lf/F;

    if-nez v0, :cond_0

    new-instance v0, Lf/F;

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v1

    invoke-virtual {v1}, Lf/K;->b()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lf/F;-><init>(Lf/J;B)V

    iput-object v0, p0, Lf/J;->k:Lf/F;

    :cond_0
    iget-object v0, p0, Lf/J;->k:Lf/F;

    invoke-virtual {v0, p1, p2}, Lf/F;->a(Lf/P;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lf/P;->a(Z)V

    return-void
.end method

.method private a([J[Lf/K;)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lf/J;->b([J[Lf/K;II)V

    return-void
.end method

.method private a([J[Lf/K;II)V
    .locals 4

    aget-object v0, p2, p4

    aget-object v1, p2, p3

    aput-object v1, p2, p4

    aput-object v0, p2, p3

    aget-wide v0, p1, p4

    aget-wide v2, p1, p3

    aput-wide v2, p1, p4

    aput-wide v0, p1, p3

    return-void
.end method

.method static synthetic b(Lf/J;)I
    .locals 1

    iget v0, p0, Lf/J;->r:I

    return v0
.end method

.method private b(Lf/K;)Lk/l;
    .locals 1

    iget-object v0, p0, Lf/J;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/l;

    return-object p0
.end method

.method private b([J[Lf/K;II)V
    .locals 6

    if-le p4, p3, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lf/J;->a([J[Lf/K;III)I

    move-result v0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-direct {p0, p1, p2, p3, v1}, Lf/J;->b([J[Lf/K;II)V

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0, p4}, Lf/J;->b([J[Lf/K;II)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lf/J;)I
    .locals 2

    iget v0, p0, Lf/J;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lf/J;->l:I

    return v0
.end method

.method private c(Lf/K;)Lk/l;
    .locals 2

    iget-object v0, p0, Lf/J;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/l;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lf/J;->d(Lf/K;)Lk/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf/J;->m:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic d(Lf/J;)I
    .locals 2

    iget v0, p0, Lf/J;->l:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lf/J;->l:I

    return v0
.end method

.method private d(Lf/K;)Lk/l;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lf/J;->t()J

    move-result-wide v0

    iget-wide v2, p0, Lf/J;->s:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lf/K;->h()Lf/K;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lf/K;->e()Lf/l;

    move-result-object v3

    invoke-virtual {p1}, Lf/K;->e()Lf/l;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf/l;->a(Lf/l;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v4, v5, v6}, Lf/J;->a(Lf/K;IZZ)Lf/P;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    invoke-direct {p0, p1, v2, v4}, Lf/J;->a(Lf/K;Lf/K;Lf/P;)Lk/l;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lf/J;->s()V

    iput-wide v0, p0, Lf/J;->s:J

    const-string v0, "Map Service image scaling"

    invoke-static {v0, v2}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v7

    goto :goto_0
.end method

.method private d(Z)V
    .locals 11

    const/4 v10, 0x1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x7d0

    move-wide v2, v0

    :goto_0
    iget-object v4, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v4

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lf/J;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v5

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/K;

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/P;

    invoke-virtual {v1}, Lf/P;->g()J

    move-result-wide v8

    add-long/2addr v8, v2

    cmp-long v8, v8, v5

    if-gez v8, :cond_0

    invoke-virtual {v1}, Lf/P;->d()V

    iget-object v1, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v10

    move v8, v1

    :goto_1
    if-ltz v8, :cond_0

    iget-object v1, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/x;

    const/16 v9, 0x8

    invoke-static {v9, v0}, Lf/K;->a(BLf/K;)Lf/K;

    move-result-object v9

    invoke-virtual {v1, v9}, Lf/x;->b(Lf/K;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v8, -0x1

    move v8, v1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xfa0

    move-wide v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Lf/J;->b(Z)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Lf/J;->b(Z)V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method private e(Lf/K;)J
    .locals 2

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/P;

    invoke-virtual {p0}, Lf/P;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lf/J;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lf/J;->q:Ljava/util/Vector;

    return-object v0
.end method

.method private r()V
    .locals 1

    iget v0, p0, Lf/J;->h:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lf/J;->i:I

    return-void
.end method

.method private s()V
    .locals 3

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lf/J;->j:Z

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/P;

    invoke-virtual {v0}, Lf/P;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lf/J;->j:Z

    invoke-virtual {p0}, Lf/J;->b()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static t()J
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private u()V
    .locals 2

    iget-boolean v0, p0, Lf/J;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/J;->c:Z

    iget-object v0, p0, Lf/J;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/J;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lf/J;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lf/J;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private v()V
    .locals 2

    iget-boolean v0, p0, Lf/J;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/J;->c:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MapService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lf/K;IZIJ)Lf/P;
    .locals 10

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/P;

    iget-object v3, p0, Lf/J;->b:Lf/j;

    if-nez v3, :cond_8

    move v3, v6

    :goto_0
    const-wide/high16 v4, -0x8000

    cmp-long v4, p5, v4

    if-nez v4, :cond_7

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v4

    invoke-virtual {v4}, Lac/m;->p()Lac/p;

    move-result-object v4

    invoke-interface {v4}, Lac/p;->a()J

    move-result-wide v4

    :goto_1
    if-nez v1, :cond_4

    iget-boolean v1, p0, Lf/J;->j:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v1

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, v6}, Lf/J;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lf/J;->b:Lf/j;

    if-eqz v6, :cond_0

    iget-object v2, p0, Lf/J;->b:Lf/j;

    invoke-interface {v2, p1}, Lf/j;->a(Lf/K;)Lf/P;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_2

    invoke-direct {p0, p1, p4}, Lf/J;->a(Lf/K;I)Lk/l;

    move-result-object v2

    if-eqz v3, :cond_1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v3

    invoke-virtual {v3}, Lak/h;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lf/P;

    invoke-direct {v3, p1, v2}, Lf/P;-><init>(Lf/K;Lk/l;)V

    invoke-direct {p0, v3, p2}, Lf/J;->a(Lf/P;I)V

    invoke-direct {p0, v3}, Lf/J;->a(Lf/P;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/googlenav/aT;->a(B)Lcom/google/googlenav/aT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aT;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    :goto_2
    move-wide v3, v4

    :goto_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v5}, Lf/J;->b(Z)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    move-wide v8, v3

    move-wide v2, v8

    :goto_4
    invoke-virtual {v1, v2, v3}, Lf/P;->a(J)V

    return-object v1

    :cond_1
    :try_start_3
    new-instance v3, Lf/P;

    const/4 v6, 0x1

    invoke-direct {v3, p1, v2, v6}, Lf/P;-><init>(Lf/K;Lk/l;Z)V

    invoke-direct {p0, v3}, Lf/J;->a(Lf/P;)V

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-nez v3, :cond_6

    const-wide/16 v6, 0x4e20

    sub-long v3, v4, v6

    :goto_5
    invoke-direct {p0, v2}, Lf/J;->a(Lf/P;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/googlenav/aT;->a(B)Lcom/google/googlenav/aT;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/aT;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0, v3}, Lf/J;->b(Z)V

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_3
    new-instance v1, Lf/P;

    move-object v0, v2

    check-cast v0, Lk/l;

    move-object p0, v0

    invoke-direct {v1, p1, p0, v7}, Lf/P;-><init>(Lf/K;Lk/l;Z)V

    move-wide v2, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lf/P;->e()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lf/P;->v()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    invoke-virtual {v2}, Lak/h;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, p2}, Lf/J;->a(Lf/P;I)V

    invoke-static {v6}, Lcom/google/googlenav/aT;->a(B)Lcom/google/googlenav/aT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aT;->c()V

    move-wide v2, v4

    goto :goto_4

    :cond_5
    invoke-static {v6}, Lcom/google/googlenav/aT;->a(B)Lcom/google/googlenav/aT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aT;->a()V

    move-wide v2, v4

    goto :goto_4

    :cond_6
    move-wide v3, v4

    goto :goto_5

    :cond_7
    move-wide v4, p5

    goto/16 :goto_1

    :cond_8
    move v3, p3

    goto/16 :goto_0
.end method

.method public a(Lf/K;IZZ)Lf/P;
    .locals 7

    const-wide/high16 v5, -0x8000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lf/J;->a(Lf/K;IZZJ)Lf/P;

    move-result-object v0

    return-object v0
.end method

.method a(Lf/K;IZZJ)Lf/P;
    .locals 7

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    move v4, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lf/J;->a(Lf/K;IZIJ)Lf/P;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0
.end method

.method public a(Lf/K;)Lf/U;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lf/J;->a(Lf/K;IZZ)Lf/P;

    move-result-object v0

    invoke-virtual {v0}, Lf/P;->p()Lf/U;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    return-object v0
.end method

.method public a(Lf/K;ZJ)Ljava/util/Vector;
    .locals 3

    iget-object v0, p0, Lf/J;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/x;

    invoke-virtual {v0}, Lf/x;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-static {v2, p1}, Lf/K;->a(BLf/K;)Lf/K;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lf/x;->a(Lf/K;Z)Lf/U;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/U;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lf/J;->g:Ljava/util/Vector;

    invoke-virtual {v0, p3, p4}, Lf/U;->b(J)Lk/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3, p4}, Lf/U;->a(J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lf/J;->g:Ljava/util/Vector;

    return-object v0
.end method

.method a(II)V
    .locals 5

    iget-object v0, p0, Lf/J;->b:Lf/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/J;->b:Lf/j;

    invoke-interface {v0, p1, p2}, Lf/j;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/K;

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/P;

    invoke-virtual {v1}, Lf/P;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return-void
.end method

.method a(Lax/g;)V
    .locals 1

    iget-object v0, p0, Lf/J;->q:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lf/T;)V
    .locals 0

    iput-object p1, p0, Lf/J;->f:Lf/T;

    return-void
.end method

.method public a(Lf/x;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p1}, Lac/i;->a(Lac/h;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    invoke-static {}, Lf/y;->f()V

    invoke-direct {p0}, Lf/J;->s()V

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lf/J;->d(Z)V

    iget-boolean v1, p0, Lf/J;->d:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x61a8

    iput v1, p0, Lf/J;->h:I

    invoke-direct {p0}, Lf/J;->r()V

    :goto_0
    invoke-virtual {p0}, Lf/J;->d()V

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lf/J;->h:I

    const/16 v2, 0x1f40

    sub-int/2addr v1, v2

    const/16 v2, 0x61a8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lf/J;->h:I

    invoke-direct {p0}, Lf/J;->r()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ap()LA/c;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    move v6, v7

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/P;

    invoke-virtual {v0}, Lf/P;->x()I

    move-result v0

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_0

    :cond_0
    new-instance v0, LA/c;

    const-string v5, "images"

    invoke-direct {v0, v5, v6}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, LA/c;

    const-string v5, "data"

    invoke-virtual {p0}, Lf/J;->e()I

    move-result v6

    invoke-direct {v0, v5, v6}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, LA/c;

    const-string v5, "mapCache"

    invoke-direct {v0, v5, v1, v4}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/J;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    move v4, v7

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/l;

    invoke-interface {v0}, Lk/l;->a()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    :cond_1
    new-instance v0, LA/c;

    const-string v1, "tempScaledImages"

    invoke-direct {v0, v1, v4}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LA/c;

    const-string v1, "layerServices"

    invoke-direct {v0, v1, v7}, LA/c;-><init>(Ljava/lang/String;I)V

    move v1, v7

    move-object v3, v0

    :goto_2
    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/x;

    invoke-virtual {v0}, Lf/x;->ap()LA/c;

    move-result-object v0

    invoke-virtual {v3, v0}, LA/c;->a(LA/c;)LA/c;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, LA/c;

    const-string v1, "MapService"

    invoke-direct {v0, v1, v7, v2}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    return-object v0
.end method

.method b()V
    .locals 3

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lf/J;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/l;

    invoke-interface {v0}, Lk/l;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/J;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b(Lax/g;)V
    .locals 1

    iget-object v0, p0, Lf/J;->q:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lf/x;)V
    .locals 1

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-static {p1}, Lac/i;->c(Lac/h;)V

    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lf/J;->j:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/x;

    invoke-virtual {v0}, Lf/x;->f()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Z)V
    .locals 2

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    invoke-direct {p0}, Lf/J;->u()V

    iget-object v0, p0, Lf/J;->b:Lf/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/J;->b:Lf/j;

    invoke-interface {v0, p1}, Lf/j;->a(Z)V

    :cond_0
    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/x;

    invoke-virtual {v0}, Lf/x;->d()V

    invoke-static {v0}, Lac/i;->c(Lac/h;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method d()V
    .locals 5

    invoke-virtual {p0}, Lf/J;->e()I

    move-result v0

    iget v1, p0, Lf/J;->h:I

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lf/J;->d:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x9c40

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x61a8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lf/J;->h:I

    invoke-direct {p0}, Lf/J;->r()V

    iget v1, p0, Lf/J;->h:I

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lf/J;->a(I)V

    goto :goto_0
.end method

.method e()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/P;

    invoke-virtual {p0}, Lf/P;->j()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()I
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lf/J;->b(Z)V

    invoke-virtual {p0}, Lf/J;->g()I

    move-result v0

    const/16 v2, 0x30

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lf/J;->h()[Lf/K;

    move-result-object v2

    move v4, v0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    const/16 v0, 0x18

    if-le v4, v0, :cond_0

    aget-object v0, v2, v3

    iget-object v5, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/P;

    invoke-virtual {v0}, Lf/P;->t()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lf/P;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v4, -0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lf/J;->b(Z)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_0
    move v0, v4

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Lf/J;->b(Z)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method g()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/P;

    invoke-virtual {p0}, Lf/P;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method h()[Lf/K;
    .locals 9

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v1

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v3, v0, [Lf/K;

    iget-object v0, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v4, v0, [J

    const/4 v0, 0x0

    iget-object v5, p0, Lf/J;->a:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    move v6, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/K;

    aput-object v0, v3, v6

    aget-object v0, v3, v6

    aget-object v7, v3, v6

    invoke-direct {p0, v7}, Lf/J;->e(Lf/K;)J

    move-result-wide v7

    invoke-static {v0, v1, v2, v7, v8}, Lf/J;->a(Lf/K;JJ)J

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4, v3}, Lf/J;->a([J[Lf/K;)V

    return-object v3
.end method

.method i()Z
    .locals 2

    iget-object v0, p0, Lf/J;->k:Lf/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/J;->k:Lf/F;

    const/4 v1, 0x0

    iput-object v1, p0, Lf/J;->k:Lf/F;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/x;

    invoke-virtual {v0}, Lf/x;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lf/x;->e()V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lf/J;->f:Lf/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/J;->f:Lf/T;

    invoke-interface {v0}, Lf/T;->o_()V

    :cond_0
    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/x;

    invoke-virtual {v0}, Lf/x;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l()Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lf/J;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/x;

    invoke-virtual {v0}, Lf/x;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public m()Z
    .locals 1

    iget v0, p0, Lf/J;->l:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()V
    .locals 2

    invoke-static {}, Lf/J;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lf/J;->p:J

    iget-object v0, p0, Lf/J;->b:Lf/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/J;->b:Lf/j;

    invoke-interface {v0}, Lf/j;->a()V

    :cond_0
    iget-object v0, p0, Lf/J;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/J;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method o()V
    .locals 0

    invoke-direct {p0}, Lf/J;->u()V

    return-void
.end method

.method p()V
    .locals 0

    invoke-direct {p0}, Lf/J;->v()V

    return-void
.end method

.method q()V
    .locals 1

    iget-object v0, p0, Lf/J;->b:Lf/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/J;->b:Lf/j;

    invoke-interface {v0}, Lf/j;->b()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    invoke-static {}, Lf/J;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x835

    add-long/2addr v0, v2

    invoke-static {}, Lf/J;->t()J

    move-result-wide v2

    const-wide/16 v4, 0xc29

    add-long/2addr v2, v4

    move-wide v10, v2

    move-wide v2, v0

    move-wide v0, v10

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lf/J;->c:Z

    if-nez v4, :cond_5

    :try_start_0
    iget-object v4, p0, Lf/J;->o:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lf/J;->t()J

    move-result-wide v5

    cmp-long v7, v2, v0

    if-gez v7, :cond_4

    move-wide v7, v2

    :goto_1
    sub-long v5, v7, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lf/J;->o:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v4, p0, Lf/J;->c:Z

    if-nez v4, :cond_0

    invoke-static {}, Lf/J;->t()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    invoke-virtual {p0}, Lf/J;->d()V

    const-wide/16 v2, 0x835

    add-long/2addr v2, v4

    :cond_2
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lf/J;->d(Z)V

    const-wide/16 v0, 0xc29

    add-long/2addr v0, v4

    :cond_3
    iget-object v6, p0, Lf/J;->b:Lf/j;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lf/J;->b:Lf/j;

    invoke-interface {v6}, Lf/j;->c()Z

    move-result v6

    if-nez v6, :cond_0

    iget-wide v6, p0, Lf/J;->p:J

    const-wide/16 v8, 0xfa0

    add-long/2addr v6, v8

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lf/J;->n:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v5, p0, Lf/J;->n:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    :try_start_5
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move-exception v4

    move-object v10, v4

    move-wide v11, v0

    move-object v0, v10

    move-wide v13, v2

    move-wide v3, v13

    move-wide v1, v11

    const-string v5, "MapService BG"

    invoke-static {v5, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v10, v1

    move-wide v0, v10

    move-wide v12, v3

    move-wide v2, v12

    goto :goto_0

    :cond_4
    move-wide v7, v0

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v4

    invoke-static {}, Lac/i;->b()V

    goto :goto_0

    :cond_5
    return-void

    :catch_2
    move-exception v5

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_2
.end method
