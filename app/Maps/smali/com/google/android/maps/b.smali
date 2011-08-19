.class Lcom/google/android/maps/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    sget-object v1, Lcom/google/android/maps/a;->f:Lcom/google/android/maps/a;

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/a;)Lcom/google/android/maps/a;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->b(Lcom/google/android/maps/MapsActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->c(Lcom/google/android/maps/MapsActivity;)LT/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->c(Lcom/google/android/maps/MapsActivity;)LT/a;

    move-result-object v0

    invoke-virtual {v0}, LT/a;->h()I

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;LT/a;)LT/a;

    goto :goto_0
.end method
