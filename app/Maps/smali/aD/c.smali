.class LaD/c;
.super LT/d;


# instance fields
.field final synthetic a:LaD/r;


# direct methods
.method constructor <init>(LaD/r;LT/c;)V
    .locals 0

    iput-object p1, p0, LaD/c;->a:LaD/r;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, LaD/c;->a:LaD/r;

    :goto_0
    invoke-static {v0, v7}, LaD/r;->a(LaD/r;Z)Z

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Law/e;

    sget-object v2, Ls/T;->u:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v0}, Law/e;->a([B)Law/e;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Law/e;->i(I)I

    move-result v0

    iget-object v2, p0, LaD/c;->a:LaD/r;

    invoke-static {v2}, LaD/r;->e(LaD/r;)Ljava/util/Hashtable;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v1, v4, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {v4}, LaD/j;->a(Law/e;)LaD/j;

    move-result-object v4

    iget-object v5, p0, LaD/c;->a:LaD/r;

    invoke-static {v5}, LaD/r;->e(LaD/r;)Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v4}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, LaD/c;->a:LaD/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LaD/r;->a(LaD/r;Z)Z

    iget-object v0, p0, LaD/c;->a:LaD/r;

    invoke-static {v0}, LaD/r;->h(LaD/r;)Ljava/util/Vector;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v1, p0, LaD/c;->a:LaD/r;

    invoke-static {v1}, LaD/r;->h(LaD/r;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, LaD/c;->a:LaD/r;

    invoke-static {v1}, LaD/r;->h(LaD/r;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, LaD/c;->a:LaD/r;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v2, v3}, LaD/r;->c(LaD/r;Ljava/util/Vector;)Ljava/util/Vector;

    iget-object v2, p0, LaD/c;->a:LaD/r;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, LaD/r;->a(Ljava/util/Vector;LaD/n;)Z

    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, LaD/c;->a:LaD/r;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOURCE_PROFILE_PHOTO_MANAGER_IMP-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, LaD/r;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to load IDs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, LaD/c;->a:LaD/r;

    invoke-static {v0}, LaD/r;->g(LaD/r;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, p0, LaD/c;->a:LaD/r;

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, LaD/c;->a:LaD/r;

    invoke-static {v1, v7}, LaD/r;->a(LaD/r;Z)Z

    throw v0
.end method
