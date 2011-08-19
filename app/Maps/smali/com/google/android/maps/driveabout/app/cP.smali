.class Lcom/google/android/maps/driveabout/app/cP;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cP;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cP;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cP;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
