.class Lcom/android/browser/NetworkStateHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NetworkStateHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/NetworkStateHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/browser/NetworkStateHandler$1;->this$0:Lcom/android/browser/NetworkStateHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 70
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, typeName:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, subtypeName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/NetworkStateHandler$1;->this$0:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v4, v5, v6}, Lcom/android/browser/NetworkStateHandler;->access$000(Lcom/android/browser/NetworkStateHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v4, "noConnectivity"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 78
    .local v1, noConnection:Z
    iget-object v4, p0, Lcom/android/browser/NetworkStateHandler$1;->this$0:Lcom/android/browser/NetworkStateHandler;

    if-nez v1, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/browser/NetworkStateHandler;->onNetworkToggle(Z)V

    .line 80
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #noConnection:Z
    .end local v2           #subtypeName:Ljava/lang/String;
    .end local v3           #typeName:Ljava/lang/String;
    :cond_0
    return-void

    .line 72
    .restart local v0       #info:Landroid/net/NetworkInfo;
    .restart local v2       #subtypeName:Ljava/lang/String;
    .restart local v3       #typeName:Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_0

    .restart local v1       #noConnection:Z
    :cond_2
    move v5, v7

    .line 78
    goto :goto_1
.end method
