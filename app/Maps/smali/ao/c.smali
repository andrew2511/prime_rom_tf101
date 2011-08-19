.class Lao/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lao/d;


# direct methods
.method constructor <init>(Lao/d;)V
    .locals 0

    iput-object p1, p0, Lao/c;->a:Lao/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lao/c;->a:Lao/d;

    invoke-static {v0}, Lao/d;->a(Lao/d;)Lcom/google/googlenav/wallpaper/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/b;->b()V

    :cond_0
    return-void
.end method
