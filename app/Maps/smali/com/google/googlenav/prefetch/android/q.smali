.class Lcom/google/googlenav/prefetch/android/q;
.super LT/d;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/w;

.field final synthetic b:Lcom/google/googlenav/prefetch/android/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/f;LT/c;Lcom/google/googlenav/prefetch/android/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/q;->b:Lcom/google/googlenav/prefetch/android/f;

    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/q;->a:Lcom/google/googlenav/prefetch/android/w;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/q;->b:Lcom/google/googlenav/prefetch/android/f;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/f;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v11

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/q;->b:Lcom/google/googlenav/prefetch/android/f;

    invoke-static {v4}, Lcom/google/googlenav/prefetch/android/f;->a(Lcom/google/googlenav/prefetch/android/f;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/q;->a:Lcom/google/googlenav/prefetch/android/w;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/w;->a()V

    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v0, 0x4e

    const-string v3, "rg"

    const-string v4, ""

    invoke-static {v0, v3, v4}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v3

    invoke-static {v3}, LaC/a;->a(Law/e;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v4

    move v5, v11

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {v0}, LG/w;->i()LG/S;

    move-result-object v6

    invoke-virtual {v6}, LG/S;->f()LG/Q;

    move-result-object v6

    new-instance v7, Lcom/google/googlenav/prefetch/android/d;

    invoke-direct {v7, v1}, Lcom/google/googlenav/prefetch/android/d;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const/16 v8, 0x2710

    new-instance v9, Lo/bV;

    invoke-direct {v9}, Lo/bV;-><init>()V

    invoke-virtual {v6}, LG/Q;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Lo/bV;->a(I)Lo/bV;

    move-result-object v9

    invoke-virtual {v6}, LG/Q;->c()I

    move-result v6

    invoke-virtual {v9, v6}, Lo/bV;->b(I)Lo/bV;

    move-result-object v6

    invoke-virtual {v6, v8}, Lo/bV;->c(I)Lo/bV;

    move-result-object v6

    invoke-virtual {v6, v8}, Lo/bV;->d(I)Lo/bV;

    move-result-object v6

    invoke-virtual {v6, v7}, Lo/bV;->a(Lo/cd;)Lo/bV;

    move-result-object v6

    invoke-virtual {v6, v3}, Lo/bV;->a(Law/e;)Lo/bV;

    move-result-object v6

    invoke-virtual {v6}, Lo/bV;->a()Lo/J;

    move-result-object v6

    iget-object v8, p0, Lcom/google/googlenav/prefetch/android/q;->b:Lcom/google/googlenav/prefetch/android/f;

    invoke-static {v8}, Lcom/google/googlenav/prefetch/android/f;->a(Lcom/google/googlenav/prefetch/android/f;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    if-ge v5, v0, :cond_3

    invoke-virtual {v6, v11}, Lo/J;->a(Z)V

    :goto_3
    invoke-virtual {v4, v6}, Lak/h;->c(Lak/d;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v12}, Lo/J;->a(Z)V

    goto :goto_3

    :cond_4
    const-wide/16 v2, 0x1e

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/q;->a:Lcom/google/googlenav/prefetch/android/w;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/w;->a()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_4
.end method
