.class Lcom/google/android/maps/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->E()V

    return-void
.end method
