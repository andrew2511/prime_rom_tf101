.class Lcom/android/vending/api/RadioHttpClient$HipriWaiter;
.super Landroid/content/BroadcastReceiver;
.source "RadioHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RadioHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HipriWaiter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/api/RadioHttpClient;


# direct methods
.method private constructor <init>(Lcom/android/vending/api/RadioHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;->this$0:Lcom/android/vending/api/RadioHttpClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/api/RadioHttpClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;-><init>(Lcom/android/vending/api/RadioHttpClient;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;->this$0:Lcom/android/vending/api/RadioHttpClient;

    invoke-static {v1}, Lcom/android/vending/api/RadioHttpClient;->access$000(Lcom/android/vending/api/RadioHttpClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_0
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 71
    .local v0, info:Landroid/net/NetworkInfo;
    const-string v2, "Network info: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;->this$0:Lcom/android/vending/api/RadioHttpClient;

    invoke-static {v2}, Lcom/android/vending/api/RadioHttpClient;->access$100(Lcom/android/vending/api/RadioHttpClient;)V

    .line 76
    :cond_0
    monitor-exit v1

    .line 77
    return-void

    .line 76
    .end local v0           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
