.class Lcom/google/android/maps/rideabout/app/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/l;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/app/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/l;

    check-cast p2, Lcom/google/android/maps/rideabout/app/n;

    invoke-virtual {p2}, Lcom/google/android/maps/rideabout/app/n;->a()Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;)Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;)Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-static {v1}, Lcom/google/android/maps/rideabout/app/l;->b(Lcom/google/android/maps/rideabout/app/l;)Lu/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/l;

    invoke-static {v2}, Lcom/google/android/maps/rideabout/app/l;->c(Lcom/google/android/maps/rideabout/app/l;)LB/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lu/d;LB/c;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/l;->a(Lcom/google/android/maps/rideabout/app/l;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;

    return-void
.end method
