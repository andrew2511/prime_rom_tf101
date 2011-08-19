.class Lcom/google/android/maps/driveabout/vector/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bm;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/bj;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/h;->a:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/h;->a:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/bj;)LM/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/h;->a:Lcom/google/android/maps/driveabout/vector/bj;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/h;->a:Lcom/google/android/maps/driveabout/vector/bj;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/bj;Z)Z

    monitor-exit v0

    :cond_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
