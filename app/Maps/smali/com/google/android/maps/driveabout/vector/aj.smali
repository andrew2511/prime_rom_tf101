.class public abstract Lcom/google/android/maps/driveabout/vector/aj;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/google/android/maps/driveabout/vector/bj;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/vector/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/bj;

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/ci;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/ci;Z)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 0

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/bj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/aj;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final d()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aj;->c:Z

    return v0
.end method
