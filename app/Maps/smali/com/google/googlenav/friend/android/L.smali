.class Lcom/google/googlenav/friend/android/L;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/r;

.field final synthetic b:Lcom/google/googlenav/friend/android/d;

.field final synthetic c:Lcom/google/googlenav/friend/android/J;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/J;Lcom/google/googlenav/friend/android/r;Lcom/google/googlenav/friend/android/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/L;->c:Lcom/google/googlenav/friend/android/J;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/L;->a:Lcom/google/googlenav/friend/android/r;

    iput-object p3, p0, Lcom/google/googlenav/friend/android/L;->b:Lcom/google/googlenav/friend/android/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/android/L;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/L;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/L;->c:Lcom/google/googlenav/friend/android/J;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/J;->c:Lcom/google/googlenav/friend/android/r;

    invoke-static {v0, v2}, Lcom/google/googlenav/friend/android/r;->a(Lcom/google/googlenav/friend/android/r;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/L;->b:Lcom/google/googlenav/friend/android/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/L;->b:Lcom/google/googlenav/friend/android/d;

    iget-boolean v0, v0, Lcom/google/googlenav/friend/android/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/L;->b:Lcom/google/googlenav/friend/android/d;

    iput-boolean v2, v0, Lcom/google/googlenav/friend/android/d;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/L;->c:Lcom/google/googlenav/friend/android/J;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/J;->c:Lcom/google/googlenav/friend/android/r;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/r;->a(Lcom/google/googlenav/friend/android/r;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/L;->c:Lcom/google/googlenav/friend/android/J;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/L;->c:Lcom/google/googlenav/friend/android/J;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/J;->c:Lcom/google/googlenav/friend/android/r;

    invoke-static {v0, v2}, Lcom/google/googlenav/friend/android/r;->b(Lcom/google/googlenav/friend/android/r;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/L;->c:Lcom/google/googlenav/friend/android/J;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/J;->c:Lcom/google/googlenav/friend/android/r;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/r;->b(Lcom/google/googlenav/friend/android/r;)Lcom/google/googlenav/friend/android/I;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/android/I;->m()V

    return-void
.end method
