.class final Lcom/asus/vibe2/Utils_SrvPlayback$1;
.super Ljava/lang/Object;
.source "Utils_SrvPlayback.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Utils_SrvPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 26
    check-cast p2, Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;->getService()Lcom/asus/vibe2/Srv_Playback;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/vibe2/Utils_SrvPlayback;->access$002(Lcom/asus/vibe2/Srv_Playback;)Lcom/asus/vibe2/Srv_Playback;

    .line 27
    invoke-static {}, Lcom/asus/vibe2/Utils_SrvPlayback;->access$000()Lcom/asus/vibe2/Srv_Playback;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.vibe.action.PLAYER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/asus/vibe2/Srv_Playback;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/asus/vibe2/Utils_SrvPlayback;->access$002(Lcom/asus/vibe2/Srv_Playback;)Lcom/asus/vibe2/Srv_Playback;

    .line 32
    return-void
.end method
