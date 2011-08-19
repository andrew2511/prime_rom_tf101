.class Lcom/google/android/maps/MyLocationOverlay$1;
.super Landroid/os/Handler;
.source "MyLocationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MyLocationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MyLocationOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MyLocationOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay$1;->this$0:Lcom/google/android/maps/MyLocationOverlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay$1;->this$0:Lcom/google/android/maps/MyLocationOverlay;

    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay$1;->this$0:Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay$1;->this$0:Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, v1, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MyLocationOverlay;->onLocationChanged(Landroid/location/Location;)V

    .line 135
    :cond_f
    return-void
.end method
