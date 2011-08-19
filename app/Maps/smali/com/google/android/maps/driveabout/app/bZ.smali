.class Lcom/google/android/maps/driveabout/app/bZ;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/az;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bZ;->a:Lcom/google/android/maps/driveabout/app/az;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/bZ;->setResultCode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.app.action.ENTER_CAR_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/bZ;->setResultCode(I)V

    goto :goto_0
.end method
