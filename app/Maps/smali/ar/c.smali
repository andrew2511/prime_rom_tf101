.class Lar/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lar/b;

.field private final b:I


# direct methods
.method constructor <init>(Lar/b;Landroid/os/Looper;I)V
    .locals 0

    iput-object p1, p0, Lar/c;->a:Lar/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput p3, p0, Lar/c;->b:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lar/d;

    iget-object v1, p0, Lar/c;->a:Lar/b;

    invoke-static {v1}, Lar/b;->b(Lar/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lar/c;->a:Lar/b;

    invoke-static {v2}, Lar/b;->f(Lar/b;)I

    move-result v2

    invoke-static {v0}, Lar/d;->a(Lar/d;)Lcom/google/android/location/internal/b;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lar/c;->a:Lar/b;

    invoke-static {v1}, Lar/b;->g(Lar/b;)Lcom/google/android/location/internal/f;

    move-result-object v1

    iget v3, p0, Lar/c;->b:I

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/location/internal/b;->a(ILcom/google/android/location/internal/a;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkLocationClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lar/d;

    iget-object v1, p0, Lar/c;->a:Lar/b;

    invoke-static {v1}, Lar/b;->b(Lar/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    invoke-static {v0}, Lar/d;->a(Lar/d;)Lcom/google/android/location/internal/b;

    move-result-object v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    iget-object v1, p0, Lar/c;->a:Lar/b;

    invoke-static {v1}, Lar/b;->g(Lar/b;)Lcom/google/android/location/internal/f;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/location/internal/b;->a(Lcom/google/android/location/internal/a;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    iget-object v1, p0, Lar/c;->a:Lar/b;

    invoke-static {v1}, Lar/b;->h(Lar/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catch_1
    move-exception v1

    const-string v2, "NetworkLocationClient"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lar/c;->a:Lar/b;

    invoke-static {v0}, Lar/b;->i(Lar/b;)Lcom/google/android/location/internal/d;

    move-result-object v0

    iget-object v1, p0, Lar/c;->a:Lar/b;

    invoke-static {v1}, Lar/b;->b(Lar/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    iget-object v2, v0, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/g;

    iget-object v3, p0, Lar/c;->a:Lar/b;

    invoke-static {v3}, Lar/b;->j(Lar/b;)Lcom/google/android/location/internal/d;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/g;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lar/c;->a:Lar/b;

    invoke-static {v2}, Lar/b;->d(Lar/b;)Lar/c;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lar/c;->a:Lar/b;

    invoke-static {v4}, Lar/b;->c(Lar/b;)Lar/d;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v2, p0, Lar/c;->a:Lar/b;

    invoke-static {v2, v0}, Lar/b;->a(Lar/b;Lcom/google/android/location/internal/d;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_3
    iget-object v0, p0, Lar/c;->a:Lar/b;

    invoke-static {v0}, Lar/b;->k(Lar/b;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
