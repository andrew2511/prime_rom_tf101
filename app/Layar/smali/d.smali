.class public final Ld;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/google/ads/Ad;

.field private c:Lcom/google/ads/AdListener;

.field private d:Lc;

.field private e:Lcom/google/ads/AdRequest;

.field private f:Lcom/google/ads/AdSize;

.field private g:Lf;

.field private h:Ljava/lang/String;

.field private i:Lg;

.field private j:Lh;

.field private k:Landroid/os/Handler;

.field private l:Z

.field private m:Z

.field private n:J

.field private o:Lx;

.field private p:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/Ad;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Ld;->q:I

    iput-object p1, p0, Ld;->a:Landroid/app/Activity;

    iput-object p2, p0, Ld;->b:Lcom/google/ads/Ad;

    iput-object p3, p0, Ld;->f:Lcom/google/ads/AdSize;

    iput-object p4, p0, Ld;->h:Ljava/lang/String;

    new-instance v0, Lf;

    invoke-direct {v0}, Lf;-><init>()V

    iput-object v0, p0, Ld;->g:Lf;

    iput-object v1, p0, Ld;->c:Lcom/google/ads/AdListener;

    iput-object v1, p0, Ld;->d:Lc;

    iput-object v1, p0, Ld;->e:Lcom/google/ads/AdRequest;

    iput-boolean v2, p0, Ld;->l:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ld;->k:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld;->n:J

    iput-boolean v2, p0, Ld;->m:Z

    new-instance v0, Lx;

    invoke-direct {v0, p0}, Lx;-><init>(Ld;)V

    iput-object v0, p0, Ld;->o:Lx;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ld;->p:Ljava/util/LinkedList;

    new-instance v0, Lg;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lg;-><init>(Landroid/content/Context;Lcom/google/ads/AdSize;)V

    iput-object v0, p0, Ld;->i:Lg;

    iget-object v0, p0, Ld;->i:Lg;

    invoke-static {v0}, Lu;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Ld;->i:Lg;

    invoke-virtual {v0, v2}, Lg;->setBackgroundColor(I)V

    iget-object v0, p0, Ld;->i:Lg;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lg;->setVisibility(I)V

    new-instance v0, Lh;

    sget-object v1, La$a;->b:La$a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lh;-><init>(Ld;La$a;Z)V

    iput-object v0, p0, Ld;->j:Lh;

    iget-object v0, p0, Ld;->i:Lg;

    iget-object v1, p0, Ld;->j:Lh;

    invoke-virtual {v0, v1}, Lg;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu;->g(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized t()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->d:Lc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->b:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ld;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ld;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->k:Landroid/os/Handler;

    iget-object v1, p0, Ld;->o:Lx;

    iget-wide v2, p0, Ld;->n:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(F)V
    .locals 2

    monitor-enter p0

    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-long v0, v0

    :try_start_0
    iput-wide v0, p0, Ld;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Ld;->q:I

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ld;->c:Lcom/google/ads/AdListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ld;->d:Lc;

    iget-object v0, p0, Ld;->b:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/InterstitialAd;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Ld;->g:Lf;

    invoke-virtual {v0}, Lf;->n()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->b:Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ld;->g:Lf;

    invoke-virtual {v0}, Lf;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdRequest;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ld;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loadAd called while the ad is already loading."

    invoke-static {v0}, Lt;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Ld;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld;->l:Z

    iput-object p1, p0, Ld;->e:Lcom/google/ads/AdRequest;

    new-instance v0, Lc;

    invoke-direct {v0, p0}, Lc;-><init>(Ld;)V

    iput-object v0, p0, Ld;->d:Lc;

    iget-object v0, p0, Ld;->d:Lc;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/ads/AdRequest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Ld;->a:Landroid/app/Activity;

    return-object v0
.end method

.method final c()Lcom/google/ads/Ad;
    .locals 1

    iget-object v0, p0, Ld;->b:Lcom/google/ads/Ad;

    return-object v0
.end method

.method public final declared-synchronized d()Lc;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->d:Lc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lg;
    .locals 1

    iget-object v0, p0, Ld;->i:Lg;

    return-object v0
.end method

.method final g()Lh;
    .locals 1

    iget-object v0, p0, Ld;->j:Lh;

    return-object v0
.end method

.method public final h()Lcom/google/ads/AdSize;
    .locals 1

    iget-object v0, p0, Ld;->f:Lcom/google/ads/AdSize;

    return-object v0
.end method

.method public final i()Lf;
    .locals 1

    iget-object v0, p0, Ld;->g:Lf;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Ld;->q:I

    return v0
.end method

.method public final declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized m()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ld;->d:Lc;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld;->l:Z

    iget-object v0, p0, Ld;->i:Lg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg;->setVisibility(I)V

    iget-object v0, p0, Ld;->g:Lf;

    invoke-virtual {v0}, Lf;->c()V

    iget-object v0, p0, Ld;->b:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld;->q()V

    :cond_0
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lt;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->b:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->g:Lf;

    invoke-virtual {v0}, Lf;->o()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lt;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->b:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onDismissScreen(Lcom/google/ads/Ad;)V
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

.method public final declared-synchronized o()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->g:Lf;

    invoke-virtual {v0}, Lf;->b()V

    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lt;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->b:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onPresentScreen(Lcom/google/ads/Ad;)V
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

.method public final declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lt;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->c:Lcom/google/ads/AdListener;

    iget-object v1, p0, Ld;->b:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onLeaveApplication(Lcom/google/ads/Ad;)V
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

.method public final declared-synchronized q()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lw;

    invoke-direct {v2}, Lw;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ld;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized r()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->e:Lcom/google/ads/AdRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld;->i:Lg;

    invoke-virtual {v0}, Lg;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lt;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld;->e:Lcom/google/ads/AdRequest;

    invoke-virtual {p0, v0}, Ld;->a(Lcom/google/ads/AdRequest;)V

    iget-object v0, p0, Ld;->k:Landroid/os/Handler;

    iget-object v1, p0, Ld;->o:Lx;

    iget-wide v2, p0, Ld;->n:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Disabling refreshing because the ad is not visible."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized s()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld;->d:Lc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->d:Lc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Ld;->d:Lc;

    :cond_0
    iget-object v0, p0, Ld;->i:Lg;

    invoke-virtual {v0}, Lg;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
