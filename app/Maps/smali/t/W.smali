.class Lt/W;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lt/am;


# direct methods
.method constructor <init>(Lt/am;)V
    .locals 0

    iput-object p1, p0, Lt/W;->a:Lt/am;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lt/W;->a:Lt/am;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lt/j;

    invoke-static {v0, p0}, Lt/am;->a(Lt/am;Lt/j;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lt/W;->a:Lt/am;

    invoke-static {v0}, Lt/am;->a(Lt/am;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lt/W;->a:Lt/am;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lt/N;

    invoke-static {v0, p0}, Lt/am;->a(Lt/am;Lt/N;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lt/W;->a:Lt/am;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lt/N;

    invoke-static {v0, p0}, Lt/am;->b(Lt/am;Lt/N;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
