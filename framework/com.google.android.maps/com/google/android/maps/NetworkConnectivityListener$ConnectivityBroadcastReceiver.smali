.class Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/NetworkConnectivityListener;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/NetworkConnectivityListener;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/google/android/maps/NetworkConnectivityListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #getter for: Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z
    invoke-static {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->access$000(Lcom/google/android/maps/NetworkConnectivityListener;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 94
    :cond_15
    const-string v5, "NetworkConnectivityListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceived() called with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #getter for: Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;
    invoke-static {v7}, Lcom/google/android/maps/NetworkConnectivityListener;->access$100(Lcom/google/android/maps/NetworkConnectivityListener;)Lcom/google/android/maps/NetworkConnectivityListener$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_41
    return-void

    .line 98
    :cond_42
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 101
    .local v3, noConnectivity:Z
    if-eqz v3, :cond_b3

    .line 102
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    sget-object v6, Lcom/google/android/maps/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #setter for: Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;
    invoke-static {v5, v6}, Lcom/google/android/maps/NetworkConnectivityListener;->access$102(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$State;)Lcom/google/android/maps/NetworkConnectivityListener$State;

    .line 107
    :goto_51
    iget-object v6, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    #setter for: Lcom/google/android/maps/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6, v5}, Lcom/google/android/maps/NetworkConnectivityListener;->access$202(Lcom/google/android/maps/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 109
    iget-object v6, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    const-string v5, "otherNetwork"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    #setter for: Lcom/google/android/maps/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6, v5}, Lcom/google/android/maps/NetworkConnectivityListener;->access$302(Lcom/google/android/maps/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 112
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/google/android/maps/NetworkConnectivityListener;->mReason:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/google/android/maps/NetworkConnectivityListener;->access$402(Lcom/google/android/maps/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    const-string v6, "isFailover"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #setter for: Lcom/google/android/maps/NetworkConnectivityListener;->mIsFailover:Z
    invoke-static {v5, v6}, Lcom/google/android/maps/NetworkConnectivityListener;->access$502(Lcom/google/android/maps/NetworkConnectivityListener;Z)Z

    .line 123
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #getter for: Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->access$600(Lcom/google/android/maps/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Handler;>;"
    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 126
    .local v4, target:Landroid/os/Handler;
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #getter for: Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->access$600(Lcom/google/android/maps/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 127
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8f

    .line 104
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Handler;>;"
    .end local v2           #message:Landroid/os/Message;
    .end local v4           #target:Landroid/os/Handler;
    :cond_b3
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    sget-object v6, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #setter for: Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;
    invoke-static {v5, v6}, Lcom/google/android/maps/NetworkConnectivityListener;->access$102(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$State;)Lcom/google/android/maps/NetworkConnectivityListener$State;

    goto :goto_51
.end method
