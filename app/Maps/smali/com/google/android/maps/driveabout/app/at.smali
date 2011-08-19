.class Lcom/google/android/maps/driveabout/app/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dB;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/at;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/at;->a:Lcom/google/android/maps/driveabout/app/dB;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/at;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dB;->b(Lcom/google/android/maps/driveabout/app/dB;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/at;->a:Lcom/google/android/maps/driveabout/app/dB;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/dB;->a(Lcom/google/android/maps/driveabout/app/dB;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/at;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/dB;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
