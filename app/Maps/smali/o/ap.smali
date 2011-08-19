.class public Lo/ap;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lo/ap;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lo/F;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/F;-><init>(Lo/ap;LT/c;)V

    invoke-virtual {v0}, Lo/F;->b()V

    return-void
.end method

.method public declared-synchronized a(Lo/s;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/ap;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Lo/j;
    .locals 5

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lo/ap;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lo/ap;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/s;

    invoke-interface {p0}, Lo/s;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lo/s;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, Lo/j;

    invoke-direct {v2, v0, v1}, Lo/j;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method
