.class Lcom/google/googlenav/networkinitiated/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/d;->a:Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/d;->a:Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;

    invoke-static {v0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a(Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;)V

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/d;->a:Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;

    invoke-virtual {v0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->stopSelf()V

    return-void
.end method
