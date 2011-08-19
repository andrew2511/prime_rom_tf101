.class Lao/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lao/f;


# direct methods
.method constructor <init>(Lao/f;)V
    .locals 0

    iput-object p1, p0, Lao/e;->a:Lao/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lao/e;->a:Lao/f;

    invoke-static {v0}, Lao/f;->a(Lao/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lao/e;->a:Lao/f;

    invoke-static {v0}, Lao/f;->b(Lao/f;)Lao/a;

    move-result-object v0

    invoke-interface {v0}, Lao/a;->a()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lao/e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
