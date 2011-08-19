.class public Lah/I;
.super Lad/i;


# instance fields
.field private final a:Laa/b;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Iterator;

.field private final d:Ljava/util/List;

.field private e:Lah/d;

.field private f:Lah/C;

.field private g:J

.field private h:J

.field private i:LaT/f;

.field private volatile j:F

.field private volatile k:Z

.field private volatile l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "EventLogPlayerThread"

    invoke-direct {p0, v0}, Lad/i;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lah/I;->d:Ljava/util/List;

    iput-wide v2, p0, Lah/I;->g:J

    iput-wide v2, p0, Lah/I;->h:J

    const/high16 v0, 0x3f80

    iput v0, p0, Lah/I;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lah/I;->k:Z

    iput-boolean v1, p0, Lah/I;->l:Z

    iput-boolean v1, p0, Lah/I;->m:Z

    new-instance v0, Laa/b;

    invoke-direct {v0}, Laa/b;-><init>()V

    iput-object v0, p0, Lah/I;->a:Laa/b;

    invoke-virtual {p0}, Lah/I;->start()V

    return-void
.end method

.method private a(LaT/f;)Z
    .locals 1

    iget-object v0, p0, Lah/I;->a:Laa/b;

    invoke-virtual {v0, p1}, Laa/b;->a(LaT/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lah/I;->a:Laa/b;

    invoke-virtual {v0, p1}, Laa/b;->b(LaT/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lah/I;->b(LaT/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lah/I;->c(LaT/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lah/I;->d(LaT/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lah/I;->e(LaT/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lah/I;->f(LaT/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(LaT/f;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lah/r;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->g(Z)V

    move v0, v2

    :goto_1
    return v0

    :cond_0
    instance-of v0, p1, Lah/k;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lah/I;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lah/I;->c:Ljava/util/Iterator;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lah/I;->h:J

    iput-wide v0, p0, Lah/I;->g:J

    const/4 v0, 0x0

    iput-object v0, p0, Lah/I;->i:LaT/f;

    invoke-direct {p0}, Lah/I;->e()LaT/f;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(LaT/f;)Z
    .locals 3

    const/4 v2, 0x1

    instance-of v0, p1, Lah/l;

    if-eqz v0, :cond_1

    check-cast p1, Lah/l;

    iget-object v0, p0, Lah/I;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lah/K;

    invoke-interface {p0, p1}, Lah/K;->a(Lah/l;)V

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    instance-of v0, p1, Lah/m;

    if-eqz v0, :cond_3

    check-cast p1, Lah/m;

    iget-object v0, p0, Lah/I;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lah/K;

    invoke-interface {p0, p1}, Lah/K;->a(Lah/m;)V

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lah/v;

    if-eqz v0, :cond_5

    check-cast p1, Lah/v;

    iget-object v0, p0, Lah/I;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lah/K;

    invoke-interface {p0, p1}, Lah/K;->a(Lah/v;)V

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lah/G;

    if-eqz v0, :cond_7

    check-cast p1, Lah/G;

    iget-object v0, p0, Lah/I;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lah/K;

    invoke-interface {p0, p1}, Lah/K;->a(Lah/G;)V

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(LaT/f;)Z
    .locals 1

    instance-of v0, p1, Lah/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lah/I;->e:Lah/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lah/I;->e:Lah/d;

    check-cast p1, Lah/p;

    invoke-virtual {v0, p1}, Lah/d;->a(Lah/p;)Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized e()LaT/f;
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lah/I;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lah/I;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaT/f;

    :goto_0
    if-eqz v0, :cond_2

    iput-object v0, p0, Lah/I;->i:LaT/f;

    iget-wide v0, p0, Lah/I;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lah/I;->i:LaT/f;

    invoke-virtual {v0}, LaT/f;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lah/I;->i:LaT/f;

    invoke-virtual {v0}, LaT/f;->g()J

    move-result-wide v0

    iget-wide v2, p0, Lah/I;->h:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    move-wide v0, v4

    :cond_0
    long-to-float v0, v0

    iget v1, p0, Lah/I;->j:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-long v0, v0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lah/I;->g:J

    iget-object v0, p0, Lah/I;->i:LaT/f;

    invoke-virtual {v0}, LaT/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lah/I;->i:LaT/f;

    invoke-virtual {v0}, LaT/f;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lah/I;->h:J

    :cond_1
    :goto_2
    iget-object v0, p0, Lah/I;->i:LaT/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lah/I;->i:LaT/f;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lah/I;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide v0, v4

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private e(LaT/f;)Z
    .locals 2

    instance-of v0, p1, Lah/x;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lah/x;

    invoke-virtual {p1}, Lah/x;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f(LaT/f;)Z
    .locals 4

    instance-of v0, p1, Lah/E;

    if-eqz v0, :cond_0

    check-cast p1, Lah/E;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->c()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lah/E;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Laa/b;
    .locals 1

    iget-object v0, p0, Lah/I;->a:Laa/b;

    return-object v0
.end method

.method public a(LaT/d;)V
    .locals 1

    invoke-virtual {p1}, LaT/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lah/I;->a(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lah/I;->b:Ljava/util/List;

    invoke-direct {p0}, Lah/I;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aA_()V
    .locals 6

    const-wide/16 v4, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lah/I;->m:Z

    if-nez v0, :cond_4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lah/I;->m:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lah/I;->l:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lah/I;->g:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lah/I;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    :cond_2
    iget-boolean v0, p0, Lah/I;->l:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lah/I;->g:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

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

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lah/I;->m:Z

    iget-object v0, p0, Lah/I;->f:Lah/C;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lah/I;->f:Lah/C;

    invoke-interface {v0}, Lah/C;->a()V

    :cond_5
    return-void

    :cond_6
    :try_start_3
    iget-wide v0, p0, Lah/I;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lah/I;->i:LaT/f;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    :try_start_4
    invoke-direct {p0, v0}, Lah/I;->a(LaT/f;)Z

    :cond_8
    invoke-direct {p0}, Lah/I;->e()LaT/f;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lah/I;->k:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lah/I;->c()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lah/I;->m:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
