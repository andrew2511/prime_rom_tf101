.class public Lcom/google/android/maps/driveabout/vector/cB;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Map;

.field private static final b:Lcom/google/android/maps/driveabout/vector/cu;


# instance fields
.field private c:La/e;

.field private final d:Lt/y;

.field private final e:Ljava/lang/String;

.field private final f:La/a;

.field private final g:Lad/r;

.field private h:Ljava/util/ArrayList;

.field private final i:Lt/u;

.field private j:I

.field private final k:Ljava/util/HashMap;

.field private l:J

.field private m:J

.field private final n:Ljava/util/LinkedList;

.field private final o:Lcom/google/android/maps/driveabout/vector/bQ;

.field private p:Lac/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ay;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ay;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cB;->b:Lcom/google/android/maps/driveabout/vector/cu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cB;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La/a;ZLad/r;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->p:Lac/p;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cB;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-static {}, La/e;->a()La/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/cB;->g:Lad/r;

    if-eqz p3, :cond_1

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cB;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cB;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cB;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bQ;

    const/16 v4, 0x55

    invoke-direct {v3, v4}, Lcom/google/android/maps/driveabout/vector/bQ;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cB;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bQ;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cB;->h()V

    :goto_0
    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->k:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->l:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    invoke-static {p1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->d:Lt/y;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ax;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/ax;-><init>(Lcom/google/android/maps/driveabout/vector/cB;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->i:Lt/u;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->d:Lt/y;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->i:Lt/u;

    invoke-interface {v0, v1}, Lt/y;->a(Lt/u;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    goto :goto_0

    :cond_2
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cB;->d:Lt/y;

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cB;->i:Lt/u;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lad/r;->a:Lad/r;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;ZLad/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLad/r;)V
    .locals 1

    invoke-static {p1}, La/a;->a(Ljava/lang/String;)La/a;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;La/a;ZLad/r;)V

    return-void
.end method

.method private declared-synchronized a(LG/w;Z)Lcom/google/android/maps/driveabout/vector/cu;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, LG/w;->b()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bQ;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v0, v2, p1, v1}, La/e;->a(La/a;LG/w;Z)Lcom/google/android/maps/driveabout/vector/cu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v1, p2

    goto :goto_0
.end method

.method private a(LG/w;ILG/u;)V
    .locals 7

    invoke-virtual {p1}, LG/w;->b()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/cB;->l:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    instance-of v1, p3, LG/P;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, p3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/as;

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Lt/y;->a(LG/w;Z)LG/u;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object v0, v2

    check-cast v0, LG/P;

    move-object v1, v0

    move-object v0, v3

    check-cast v0, LG/P;

    move-object v2, v0

    invoke-static {v1, v2}, LG/x;->a(LG/P;LG/P;)LG/P;

    move-result-object v1

    :goto_2
    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    move-object v1, v2

    :goto_3
    const/4 v2, 0x0

    if-nez p2, :cond_9

    instance-of v3, v1, LG/P;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->g:Lad/r;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/D;->a(LG/u;Lad/r;)Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v1

    move-object v3, v1

    :goto_4
    monitor-enter p0

    if-nez v3, :cond_8

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    :try_start_2
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cB;->b:Lcom/google/android/maps/driveabout/vector/cu;

    move-object v2, v1

    :goto_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, LG/w;->b()I

    move-result v1

    const/4 v4, 0x3

    if-gt v1, v4, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/bQ;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v1, :cond_3

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cB;->b:Lcom/google/android/maps/driveabout/vector/cu;

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v4, p1}, Lcom/google/android/maps/driveabout/vector/bQ;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v4, v5, v1}, La/e;->a(La/a;Lcom/google/android/maps/driveabout/vector/cu;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/bQ;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v4, v1

    move-wide v5, v1

    :goto_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;Lcom/google/android/maps/driveabout/vector/cu;IJ)V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    instance-of v3, v1, LG/G;

    if-eqz v3, :cond_9

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/ac;->a(LG/u;)Lcom/google/android/maps/driveabout/vector/ac;

    move-result-object v1

    move-object v3, v1

    goto :goto_4

    :cond_5
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v1, v4, p1, v2}, La/e;->a(La/a;LG/w;Lcom/google/android/maps/driveabout/vector/cu;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :cond_7
    move-wide v5, v4

    goto :goto_7

    :cond_8
    move-object v2, v3

    goto :goto_5

    :cond_9
    move-object v3, v2

    goto :goto_4

    :cond_a
    move-object v1, v2

    goto/16 :goto_2

    :cond_b
    move-object v1, p3

    goto/16 :goto_3
.end method

.method private a(LG/w;Lcom/google/android/maps/driveabout/vector/cu;IJ)V
    .locals 9

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/j;->a(LG/w;Lcom/google/android/maps/driveabout/vector/cu;IJ)V

    :cond_0
    monitor-exit v6

    return-void

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v8, v2

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/j;->a(LG/w;Lcom/google/android/maps/driveabout/vector/cu;IJ)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/cB;LG/w;ILG/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;ILG/u;)V

    return-void
.end method

.method private b(LG/w;ILG/u;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->d:Lt/y;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lt/y;->a(LG/w;Z)LG/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;ILG/u;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/cB;LG/w;ILG/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cB;->b(LG/w;ILG/u;)V

    return-void
.end method

.method private c(LG/w;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->d:Lt/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->d:Lt/y;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/aI;

    invoke-direct {v1, p0, v3}, Lcom/google/android/maps/driveabout/vector/aI;-><init>(Lcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/ay;)V

    invoke-interface {v0, p1, v1}, Lt/y;->a(LG/w;Lt/A;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/as;

    new-instance v2, Lcom/google/android/maps/driveabout/vector/i;

    invoke-direct {v2, p0, v3}, Lcom/google/android/maps/driveabout/vector/i;-><init>(Lcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/ay;)V

    invoke-interface {v0, p1, v2}, Lt/y;->a(LG/w;Lt/A;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized g()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cB;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    new-instance v1, LG/w;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LG/w;-><init>(III)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bQ;->c(Ljava/lang/Object;Ljava/lang/Object;)V
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

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bQ;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bQ;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bQ;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(LG/w;)Lcom/google/android/maps/driveabout/vector/cu;
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;Z)Lcom/google/android/maps/driveabout/vector/cu;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cB;->b:Lcom/google/android/maps/driveabout/vector/cu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->p:Lac/p;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lac/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->p:Lac/p;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lac/p;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->k:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->c(LG/w;)V

    :cond_3
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/cb;LG/Q;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cB;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    invoke-interface {p1, v0, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(ILG/Q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/bQ;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/maps/driveabout/vector/bQ;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;)Lcom/google/android/maps/driveabout/vector/cu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cB;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/j;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->n:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    invoke-virtual {v0, p1}, La/e;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bQ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cB;->b:Lcom/google/android/maps/driveabout/vector/cu;

    if-eq v0, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v0, v2, v1}, La/e;->a(La/a;Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    invoke-virtual {v0, p1}, La/e;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bQ;->a()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cB;->g()V
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

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bQ;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->j:I

    return v0
.end method

.method public declared-synchronized b(LG/w;)Lcom/google/android/maps/driveabout/vector/cu;
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;Z)Lcom/google/android/maps/driveabout/vector/cu;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cB;->b:Lcom/google/android/maps/driveabout/vector/cu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->p:Lac/p;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lac/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cB;->b:Lcom/google/android/maps/driveabout/vector/cu;

    if-eq v0, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v0, v2, v1}, La/e;->b(La/a;Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v0, v1}, La/e;->a(La/a;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->o:Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bQ;->a()V
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

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v0, v1}, La/e;->b(La/a;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cB;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v0, v1}, La/e;->d(La/a;)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->m:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->m:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->l:J

    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->c:La/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->f:La/a;

    invoke-virtual {v0, v1}, La/e;->c(La/a;)V
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
