.class Lcom/google/googlenav/ui/android/P;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/ac;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/P;->a:Lcom/google/googlenav/ui/android/ac;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/P;->a:Lcom/google/googlenav/ui/android/ac;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/ac;->c(Lcom/google/googlenav/ui/android/ac;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/ui/android/P;->a:Lcom/google/googlenav/ui/android/ac;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/ac;->d(Lcom/google/googlenav/ui/android/ac;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ButtonWindow"

    const-string v1, "Cannot make the button window visible if the owner view is not attached to a window."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/P;->a:Lcom/google/googlenav/ui/android/ac;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/ac;->a(Lcom/google/googlenav/ui/android/ac;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
