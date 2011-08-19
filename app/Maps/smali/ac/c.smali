.class public Lac/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Hashtable;

.field private b:Lac/u;

.field private c:Lac/u;

.field private final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lac/c;->d:I

    invoke-direct {p0}, Lac/c;->e()V

    return-void
.end method

.method private a(Lac/u;)V
    .locals 1

    iget-object v0, p0, Lac/c;->b:Lac/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lac/c;->b:Lac/u;

    iput-object p1, v0, Lac/u;->c:Lac/u;

    iget-object v0, p0, Lac/c;->b:Lac/u;

    iput-object v0, p1, Lac/u;->d:Lac/u;

    :cond_0
    iput-object p1, p0, Lac/c;->b:Lac/u;

    iget-object v0, p0, Lac/c;->c:Lac/u;

    if-nez v0, :cond_1

    iput-object p1, p0, Lac/c;->c:Lac/u;

    :cond_1
    return-void
.end method

.method private b(Lac/u;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lac/c;->b:Lac/u;

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Lac/u;->d:Lac/u;

    iput-object v0, p0, Lac/c;->b:Lac/u;

    :cond_0
    iget-object v0, p0, Lac/c;->c:Lac/u;

    if-ne v0, p1, :cond_1

    iget-object v0, p1, Lac/u;->c:Lac/u;

    iput-object v0, p0, Lac/c;->c:Lac/u;

    :cond_1
    iget-object v0, p1, Lac/u;->c:Lac/u;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lac/u;->c:Lac/u;

    iget-object v1, p1, Lac/u;->d:Lac/u;

    iput-object v1, v0, Lac/u;->d:Lac/u;

    :cond_2
    iget-object v0, p1, Lac/u;->d:Lac/u;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lac/u;->d:Lac/u;

    iget-object v1, p1, Lac/u;->c:Lac/u;

    iput-object v1, v0, Lac/u;->c:Lac/u;

    :cond_3
    iput-object v2, p1, Lac/u;->c:Lac/u;

    iput-object v2, p1, Lac/u;->d:Lac/u;

    return-void
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lac/c;->b:Lac/u;

    iput-object v0, p0, Lac/c;->c:Lac/u;

    iget v0, p0, Lac/c;->d:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    iget v1, p0, Lac/c;->d:I

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lac/c;->b(Lac/u;)V

    invoke-direct {p0, v0}, Lac/c;->a(Lac/u;)V

    iget-object v0, v0, Lac/u;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lac/u;

    invoke-direct {v0}, Lac/u;-><init>()V

    iput-object p1, v0, Lac/u;->a:Ljava/lang/Object;

    iput-object p2, v0, Lac/u;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lac/c;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lac/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lac/c;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lac/c;->d:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lac/c;->c:Lac/u;

    iget-object v1, v1, Lac/u;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lac/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v0}, Lac/c;->a(Lac/u;)V

    iget-object v1, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lac/c;->b(Lac/u;)V

    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lac/c;->b:Lac/u;

    const/4 v0, 0x0

    iput-object v0, p0, Lac/c;->c:Lac/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/util/Vector;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/u;

    iget-object v0, v0, Lac/u;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized c(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/util/Vector;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Lac/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/u;

    iget-object v0, v0, Lac/u;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-object v1
.end method
