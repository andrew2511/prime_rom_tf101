.class Lt/r;
.super Lad/i;


# instance fields
.field final synthetic a:Lt/ai;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method constructor <init>(Lt/ai;)V
    .locals 2

    iput-object p1, p0, Lt/r;->a:Lt/ai;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCommitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lt/ai;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lad/i;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lt/ai;->d(Lt/ai;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/r;->c:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lt/r;->start()V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/r;->b:Z

    return-void
.end method

.method public aA_()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lt/r;->a:Lt/ai;

    invoke-virtual {v0}, Lt/ai;->k()Lt/c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lt/r;->b:Z

    :try_start_1
    iget-object v1, p0, Lt/r;->a:Lt/ai;

    invoke-static {v1}, Lt/ai;->d(Lt/ai;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lt/r;->sleep(J)V

    iget-boolean v1, p0, Lt/r;->b:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lt/c;->w_()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/r;->c:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lt/r;->c:Z

    return v0
.end method
