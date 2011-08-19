.class final Lcom/google/googlenav/prefetch/android/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/c;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlenav/prefetch/android/a;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/c;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-static {v1, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->c()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/c;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/google/googlenav/prefetch/android/m;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, LE/d;

    invoke-static {v1, p0, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/m;LE/d;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/c;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/prefetch/android/c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->stopSelf()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
