.class Lcom/google/android/maps/driveabout/app/bM;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aG;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aG;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bM;->a:Lcom/google/android/maps/driveabout/app/aG;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFinish()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bM;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bM;->a:Lcom/google/android/maps/driveabout/app/aG;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aG;->c:Lcom/google/android/maps/driveabout/app/bL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bL;->a()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bM;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTick(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bM;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bM;->a:Lcom/google/android/maps/driveabout/app/aG;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aG;->c:Lcom/google/android/maps/driveabout/app/bL;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bL;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
