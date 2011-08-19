.class public Lau/e;
.super Ljava/lang/Object;

# interfaces
.implements Lt/o;


# static fields
.field private static b:Lau/e;

.field private static final l:LG/Z;


# instance fields
.field private a:Ljava/util/List;

.field private final c:Lad/g;

.field private d:LG/A;

.field private e:LG/Z;

.field private f:LG/e;

.field private g:Ljava/util/Set;

.field private h:Ljava/util/List;

.field private i:Ljava/util/Set;

.field private final j:Ljava/lang/Object;

.field private final k:Lt/am;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG/Z;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG/Z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lau/e;->l:LG/Z;

    return-void
.end method

.method protected constructor <init>(Lt/am;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lau/e;->a:Ljava/util/List;

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lau/e;->g:Ljava/util/Set;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lau/e;->h:Ljava/util/List;

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lau/e;->i:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lau/e;->j:Ljava/lang/Object;

    new-instance v0, Lad/g;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lau/e;->c:Lad/g;

    iput-object p1, p0, Lau/e;->k:Lt/am;

    return-void
.end method

.method private a(LG/e;LG/A;)LG/Z;
    .locals 6

    const/4 v5, 0x1

    if-nez p2, :cond_5

    invoke-virtual {p1}, LG/e;->a()LG/A;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lau/e;->c:Lad/g;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lau/e;->c:Lad/g;

    invoke-virtual {v0, v1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/Z;

    invoke-virtual {p1}, LG/e;->a()LG/A;

    move-result-object v4

    invoke-virtual {v4, v1}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lau/e;->c:Lad/g;

    invoke-virtual {v4, v1}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lau/e;->c:Lad/g;

    invoke-virtual {p1}, LG/e;->a()LG/A;

    move-result-object v4

    invoke-virtual {v1, v4}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/Z;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, LG/e;->a(LG/Z;)LG/B;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LG/B;->a()LG/Z;

    move-result-object v0

    iget-object v1, p0, Lau/e;->c:Lad/g;

    invoke-virtual {p1}, LG/e;->a()LG/A;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v5

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p1}, LG/e;->c()LG/B;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lau/e;->l:LG/Z;

    :goto_2
    iget-object v2, p0, Lau/e;->c:Lad/g;

    invoke-virtual {p1}, LG/e;->a()LG/A;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lau/e;->l:LG/Z;

    if-eq v0, v2, :cond_0

    move v1, v5

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lau/e;->b(LG/e;)V

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, LG/B;->a()LG/Z;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move-object v1, p2

    goto :goto_0
.end method

.method public static a()Lau/e;
    .locals 1

    sget-object v0, Lau/e;->b:Lau/e;

    return-object v0
.end method

.method public static a(Lt/am;)Lau/e;
    .locals 1

    sget-object v0, Lau/e;->b:Lau/e;

    if-nez v0, :cond_0

    new-instance v0, Lau/e;

    invoke-direct {v0, p0}, Lau/e;-><init>(Lt/am;)V

    sput-object v0, Lau/e;->b:Lau/e;

    :cond_0
    sget-object v0, Lau/e;->b:Lau/e;

    return-object v0
.end method

.method private a(LG/e;LG/Z;)V
    .locals 5

    invoke-virtual {p1, p2}, LG/e;->a(LG/Z;)LG/B;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LG/B;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/A;

    invoke-virtual {v1}, LG/B;->a()LG/Z;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lau/e;->a(LG/A;LG/Z;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lau/e;->k:Lt/am;

    new-instance v4, Lau/d;

    invoke-direct {v4, p0}, Lau/d;-><init>(Lau/e;)V

    invoke-virtual {v3, v0, v4}, Lt/am;->a(LG/A;Lt/o;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lau/e;LG/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lau/e;->b(LG/e;)V

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lau/e;->b:Lau/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lau/e;->b:Lau/e;

    :cond_0
    return-void
.end method

.method private b(LG/e;)V
    .locals 2

    invoke-direct {p0}, Lau/e;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/f;

    invoke-interface {v0, p0, p1}, Lau/f;->a(Lau/e;LG/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lau/e;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/f;

    invoke-interface {v0, p0}, Lau/f;->a(Lau/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    invoke-direct {p0}, Lau/e;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/f;

    invoke-interface {v0, p0}, Lau/f;->b(Lau/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lau/e;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lau/e;->a:Ljava/util/List;

    invoke-static {v1}, Lj/X;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(LG/e;)LG/B;
    .locals 1

    invoke-virtual {p1}, LG/e;->a()LG/A;

    move-result-object v0

    invoke-virtual {p0, v0}, Lau/e;->a(LG/A;)LG/Z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, LG/e;->a(LG/Z;)LG/B;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LG/A;)LG/Z;
    .locals 3

    iget-object v0, p0, Lau/e;->k:Lt/am;

    invoke-virtual {v0, p1}, Lt/am;->a(LG/A;)LG/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LG/e;->a()LG/A;

    move-result-object v0

    invoke-virtual {v0, p1}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1, p1}, Lau/e;->a(LG/e;LG/A;)LG/Z;

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v1, Lau/e;->l:LG/Z;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    iget-object v2, p0, Lau/e;->c:Lad/g;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lau/e;->c:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/Z;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, p1}, Lau/e;->a(LG/e;LG/A;)LG/Z;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v1, p0, Lau/e;->k:Lt/am;

    invoke-virtual {v1, p1, p0}, Lt/am;->a(LG/A;Lt/o;)V

    goto :goto_0
.end method

.method public a(LG/A;ILG/e;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lau/e;->e:LG/Z;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lau/e;->e:LG/Z;

    invoke-virtual {v1}, LG/Z;->a()LG/A;

    move-result-object v1

    invoke-virtual {v1, p1}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lau/e;->e:LG/Z;

    const/4 v2, 0x0

    iput-object v2, p0, Lau/e;->e:LG/Z;

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-direct {p0, p3, v1}, Lau/e;->a(LG/e;LG/Z;)V

    :cond_2
    invoke-direct {p0, p3, p1}, Lau/e;->a(LG/e;LG/A;)LG/Z;

    move-result-object v0

    iget-object v1, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lau/e;->d:LG/A;

    invoke-virtual {p1, v2}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lau/e;->f:LG/e;

    if-eqz v2, :cond_3

    invoke-virtual {p3}, LG/e;->a()LG/A;

    move-result-object v2

    iget-object v3, p0, Lau/e;->f:LG/e;

    invoke-virtual {v3}, LG/e;->a()LG/A;

    move-result-object v3

    invoke-virtual {v2, v3}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    invoke-virtual {p3, v0}, LG/e;->a(LG/Z;)LG/B;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lau/e;->f:LG/e;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lau/e;->f:LG/e;

    move v0, v4

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lau/e;->f()V

    :cond_4
    iget-object v0, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lau/e;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lau/e;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lau/e;->h:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lau/e;->g()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_5
    :try_start_4
    iput-object p3, p0, Lau/e;->f:LG/e;

    move v0, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :cond_6
    move v1, v5

    goto :goto_3

    :cond_7
    move v0, v5

    goto :goto_2

    :cond_8
    move-object v1, v2

    goto :goto_1
.end method

.method public a(LG/Z;)V
    .locals 2

    iget-object v0, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lau/e;->e:LG/Z;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lau/e;->k:Lt/am;

    invoke-virtual {p1}, LG/Z;->a()LG/A;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lt/am;->a(LG/A;Lt/o;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Lau/f;)V
    .locals 2

    iget-object v0, p0, Lau/e;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lau/e;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/util/Set;)V
    .locals 5

    iget-object v1, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_3

    :try_start_0
    invoke-static {}, Lj/O;->d()Lj/O;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lau/e;->i:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lau/e;->i:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lau/e;->i:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lau/e;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lau/e;->g:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lau/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lau/e;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/A;

    iget-object v3, p0, Lau/e;->k:Lt/am;

    invoke-virtual {v3, v0}, Lt/am;->a(LG/A;)LG/e;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lau/e;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lau/e;->g:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lau/e;->k:Lt/am;

    invoke-virtual {v3, v0, p0}, Lt/am;->a(LG/A;Lt/o;)V

    goto :goto_2

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lau/e;->g()V

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method a(LG/A;LG/Z;)Z
    .locals 2

    iget-object v1, p0, Lau/e;->c:Lad/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lau/e;->c:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/Z;

    invoke-virtual {p2, v0}, LG/Z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lau/e;->c:Lad/g;

    invoke-virtual {v0, p1, p2}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(LG/A;)V
    .locals 3

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lau/e;->f:LG/e;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lau/e;->d:LG/A;

    const/4 v0, 0x0

    iput-object v0, p0, Lau/e;->f:LG/e;

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lau/e;->f()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iput-object p1, p0, Lau/e;->d:LG/A;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lau/e;->k:Lt/am;

    invoke-virtual {v0, p1, p0}, Lt/am;->a(LG/A;Lt/o;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public b(LG/Z;)Z
    .locals 4

    iget-object v0, p0, Lau/e;->k:Lt/am;

    invoke-virtual {p1}, LG/Z;->a()LG/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/am;->a(LG/A;)LG/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, LG/e;->a(LG/Z;)LG/B;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lau/e;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/B;

    invoke-virtual {p0}, LG/B;->b()LG/A;

    move-result-object v2

    invoke-virtual {v0}, LG/B;->b()LG/A;

    move-result-object v3

    invoke-virtual {v2, v3}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lau/e;->k:Lt/am;

    invoke-virtual {p1}, LG/Z;->a()LG/A;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lt/am;->a(LG/A;Lt/o;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()LG/e;
    .locals 2

    iget-object v0, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lau/e;->f:LG/e;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lau/e;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lau/e;->h:Ljava/util/List;

    invoke-static {v1}, Lj/v;->a(Ljava/util/Collection;)Lj/v;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Ljava/util/Set;
    .locals 3

    invoke-virtual {p0}, Lau/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/e;

    invoke-virtual {p0, v0}, Lau/e;->a(LG/e;)LG/B;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
