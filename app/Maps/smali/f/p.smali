.class Lf/p;
.super Lf/X;


# instance fields
.field final synthetic a:Lf/H;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lf/H;)V
    .locals 2

    iput-object p1, p0, Lf/p;->a:Lf/H;

    const/16 v0, 0x1a

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lf/X;-><init>(IB)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/p;->c:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(II)V
    .locals 0

    return-void
.end method

.method public a(Lf/m;)V
    .locals 1

    iget-object v0, p0, Lf/p;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    iget-object v0, p0, Lf/p;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lf/K;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lf/p;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lf/p;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/m;

    invoke-virtual {v0}, Lf/m;->a()Lf/K;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lf/p;->a([Lf/K;Ljava/io/DataOutput;)V

    return-void
.end method

.method protected a(ILf/K;[B)Z
    .locals 4

    iget-object v0, p0, Lf/p;->a:Lf/H;

    invoke-static {v0}, Lf/H;->a(Lf/H;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/m;

    if-nez v0, :cond_1

    new-instance v0, Lf/m;

    invoke-direct {v0, p2}, Lf/m;-><init>(Lf/K;)V

    :cond_0
    :goto_0
    array-length v1, p3

    if-nez v1, :cond_2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    invoke-static {}, Lf/H;->e()[Lf/o;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lf/m;->a(J[Lf/o;)V

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lf/p;->a:Lf/H;

    invoke-static {v1}, Lf/H;->b(Lf/H;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf/p;->a:Lf/H;

    invoke-static {v0}, Lf/H;->a(Lf/H;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lf/p;->a:Lf/H;

    invoke-static {v0}, Lf/H;->c(Lf/H;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0}, Lf/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lf/m;

    invoke-direct {v0, p2}, Lf/m;-><init>(Lf/K;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3}, Lf/m;->a([B)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
