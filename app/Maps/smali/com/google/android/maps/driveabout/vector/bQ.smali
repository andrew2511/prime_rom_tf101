.class Lcom/google/android/maps/driveabout/vector/bQ;
.super Lad/g;


# instance fields
.field private b:Lcom/google/android/maps/driveabout/vector/u;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lad/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(LG/w;Lcom/google/android/maps/driveabout/vector/cu;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->b:Lcom/google/android/maps/driveabout/vector/u;

    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bQ;->b:Lcom/google/android/maps/driveabout/vector/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LG/w;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bQ;->a(LG/w;Lcom/google/android/maps/driveabout/vector/cu;)V

    return-void
.end method

.method public declared-synchronized f()Lcom/google/android/maps/driveabout/vector/u;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->b:Lcom/google/android/maps/driveabout/vector/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
