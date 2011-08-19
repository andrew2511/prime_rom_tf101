.class Lt/S;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lt/ai;


# direct methods
.method constructor <init>(Lt/ai;)V
    .locals 0

    iput-object p1, p0, Lt/S;->a:Lt/ai;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lt/S;->a:Lt/ai;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lt/q;

    invoke-static {v0, p0}, Lt/ai;->a(Lt/ai;Lt/q;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lt/S;->a:Lt/ai;

    invoke-static {v0}, Lt/ai;->a(Lt/ai;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lt/S;->a:Lt/ai;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lt/l;

    invoke-static {v0, p0}, Lt/ai;->a(Lt/ai;Lt/l;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lt/S;->a:Lt/ai;

    invoke-static {v0}, Lt/ai;->b(Lt/ai;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/S;->a:Lt/ai;

    invoke-static {v0}, Lt/ai;->c(Lt/ai;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
