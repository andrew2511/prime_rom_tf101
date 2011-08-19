.class Lcom/google/googlenav/networkinitiated/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/networkinitiated/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/networkinitiated/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/h;->a:Lcom/google/googlenav/networkinitiated/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/h;->a:Lcom/google/googlenav/networkinitiated/f;

    invoke-virtual {v0}, Lcom/google/googlenav/networkinitiated/f;->c()V

    return-void
.end method
