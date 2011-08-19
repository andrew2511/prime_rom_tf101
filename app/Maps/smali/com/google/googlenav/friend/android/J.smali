.class Lcom/google/googlenav/friend/android/J;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final a:Lcom/google/googlenav/friend/android/d;

.field final b:Landroid/os/Handler;

.field final synthetic c:Lcom/google/googlenav/friend/android/r;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/r;Lcom/google/googlenav/friend/android/d;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/friend/android/J;->c:Lcom/google/googlenav/friend/android/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/friend/android/J;->a:Lcom/google/googlenav/friend/android/d;

    new-instance v0, Lcom/google/googlenav/friend/android/L;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/friend/android/L;-><init>(Lcom/google/googlenav/friend/android/J;Lcom/google/googlenav/friend/android/r;Lcom/google/googlenav/friend/android/d;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/J;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/J;->c:Lcom/google/googlenav/friend/android/r;

    invoke-static {v0, v2}, Lcom/google/googlenav/friend/android/r;->a(Lcom/google/googlenav/friend/android/r;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/J;->a:Lcom/google/googlenav/friend/android/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/J;->a:Lcom/google/googlenav/friend/android/d;

    iput-boolean v2, v0, Lcom/google/googlenav/friend/android/d;->b:Z

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {}, Lo/aX;->q()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/J;->c:Lcom/google/googlenav/friend/android/r;

    invoke-static {v0, v2}, Lcom/google/googlenav/friend/android/r;->c(Lcom/google/googlenav/friend/android/r;Z)Z

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/J;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
