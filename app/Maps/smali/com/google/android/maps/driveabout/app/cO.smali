.class Lcom/google/android/maps/driveabout/app/cO;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cO;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cO;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cO;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
