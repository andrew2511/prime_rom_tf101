.class Lcom/splashtop/remote/MainActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$12;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 963
    iget-object v3, p0, Lcom/splashtop/remote/MainActivity$12;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v3}, Lcom/splashtop/remote/MainActivity;->access$1400(Lcom/splashtop/remote/MainActivity;)Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 966
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 967
    .local v1, connectivityMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 968
    .local v2, wifiNetInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 969
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 971
    iget-object v3, p0, Lcom/splashtop/remote/MainActivity$12;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v3}, Lcom/splashtop/remote/MainActivity;->access$200(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0
.end method
