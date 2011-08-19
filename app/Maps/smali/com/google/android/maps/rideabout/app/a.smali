.class Lcom/google/android/maps/rideabout/app/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/NavigationService;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/rideabout/app/NavigationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/a;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/rideabout/app/NavigationService;Lcom/google/android/maps/rideabout/app/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/a;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/view/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "segmentIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, LB/l;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-static {v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/view/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/rideabout/view/g;->a(LB/l;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/view/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, LB/b;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-static {v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/view/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/rideabout/view/g;->a(LB/b;)V

    goto :goto_0
.end method
