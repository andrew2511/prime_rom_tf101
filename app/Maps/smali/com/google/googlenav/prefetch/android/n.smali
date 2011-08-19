.class Lcom/google/googlenav/prefetch/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Lt/A;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/google/googlenav/prefetch/android/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;ILcom/google/googlenav/prefetch/android/a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/n;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/googlenav/prefetch/android/n;->c:I

    iput p2, p0, Lcom/google/googlenav/prefetch/android/n;->b:I

    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/n;->i:Lcom/google/googlenav/prefetch/android/a;

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->d:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->e:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->f:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->g:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->h:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(LG/w;ILG/u;)V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    packed-switch p2, :pswitch_data_0

    :goto_0
    if-nez p3, :cond_2

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/prefetch/android/n;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->g:I

    :goto_1
    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/googlenav/prefetch/android/l;->c()Lcom/google/googlenav/prefetch/android/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/l;->a(LG/w;)V

    :cond_0
    iget v0, p0, Lcom/google/googlenav/prefetch/android/n;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->b:I

    iget v0, p0, Lcom/google/googlenav/prefetch/android/n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v0, 0x6

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/n;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/n;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/n;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/n;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/n;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/n;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/n;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/n;->i:Lcom/google/googlenav/prefetch/android/a;

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/a;->d()LE/c;

    move-result-object v2

    invoke-virtual {v2}, LE/c;->c()Lcom/google/googlenav/prefetch/android/v;

    move-result-object v2

    const-string v3, "a"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/n;->i:Lcom/google/googlenav/prefetch/android/a;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/PrefetcherService;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_3
    iget v0, p0, Lcom/google/googlenav/prefetch/android/n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_4
    iget v0, p0, Lcom/google/googlenav/prefetch/android/n;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->e:I

    goto/16 :goto_0

    :pswitch_2
    iget v0, p0, Lcom/google/googlenav/prefetch/android/n;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->f:I

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/google/googlenav/prefetch/android/n;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/n;->h:I

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->i:Lcom/google/googlenav/prefetch/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/a;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
