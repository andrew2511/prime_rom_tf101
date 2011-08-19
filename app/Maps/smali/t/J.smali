.class Lt/J;
.super Lad/i;


# instance fields
.field private final a:I

.field private final b:Lt/at;


# direct methods
.method constructor <init>(Ljava/lang/String;ILt/at;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCommitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lad/i;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lt/J;->a:I

    iput-object p3, p0, Lt/J;->b:Lt/at;

    invoke-virtual {p0}, Lt/J;->start()V

    return-void
.end method


# virtual methods
.method public aA_()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lt/J;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lt/J;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lt/J;->b:Lt/at;

    invoke-static {v0}, Lt/at;->a(Lt/at;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
