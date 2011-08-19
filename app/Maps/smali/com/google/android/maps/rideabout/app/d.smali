.class Lcom/google/android/maps/rideabout/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/l;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/app/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/l;->d(Lcom/google/android/maps/rideabout/app/l;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ShowTransitNavDisclaimer"

    invoke-static {v0, v1, p1}, LK/d;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/l;->e(Lcom/google/android/maps/rideabout/app/l;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    const-string v1, "d"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/l;->j()V

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/l;->j()V

    return-void
.end method
