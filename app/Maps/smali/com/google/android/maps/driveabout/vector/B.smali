.class Lcom/google/android/maps/driveabout/vector/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/j;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/bV;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/bV;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/B;->a:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG/w;Lcom/google/android/maps/driveabout/vector/cu;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/B;->a:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bV;)Lcom/google/android/maps/driveabout/vector/cB;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/B;->a:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bV;->b(Lcom/google/android/maps/driveabout/vector/bV;)Lad/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/maps/driveabout/vector/cu;->d()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/B;->a:Lcom/google/android/maps/driveabout/vector/bV;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->d:Lcom/google/android/maps/driveabout/vector/bw;

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
