.class final Lcom/google/googlenav/appwidget/hotpot/y;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/HotpotService;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/appwidget/hotpot/HotpotService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/y;->a:Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/y;->a:Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(Lcom/google/googlenav/appwidget/hotpot/HotpotService;)Lcom/google/googlenav/appwidget/hotpot/v;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(ILjava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/y;->a:Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->b(Lcom/google/googlenav/appwidget/hotpot/HotpotService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    return-void
.end method
