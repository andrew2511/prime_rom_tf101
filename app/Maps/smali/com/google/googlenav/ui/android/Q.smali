.class Lcom/google/googlenav/ui/android/Q;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/ac;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/Q;->a:Lcom/google/googlenav/ui/android/ac;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Q;->a:Lcom/google/googlenav/ui/android/ac;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/ac;->a(Lcom/google/googlenav/ui/android/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/Q;->a:Lcom/google/googlenav/ui/android/ac;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/ac;->b(Lcom/google/googlenav/ui/android/ac;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Q;->a:Lcom/google/googlenav/ui/android/ac;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/ac;->b(Lcom/google/googlenav/ui/android/ac;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
