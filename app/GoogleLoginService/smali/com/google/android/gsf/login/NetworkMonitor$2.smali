.class Lcom/google/android/gsf/login/NetworkMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/gsf/login/NetworkMonitor$2;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    invoke-static {}, Lcom/google/android/gsf/login/NetworkMonitor;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NetworkMonitor"

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 136
    .local v2, ni:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/google/android/gsf/login/NetworkMonitor$2;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Lcom/google/android/gsf/login/NetworkMonitor;->access$202(Lcom/google/android/gsf/login/NetworkMonitor;Z)Z

    .line 139
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/login/NetworkMonitor$2;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {v3}, Lcom/google/android/gsf/login/NetworkMonitor;->access$300(Lcom/google/android/gsf/login/NetworkMonitor;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "digest"

    invoke-static {v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, digest:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/login/NetworkMonitor$2;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lcom/google/android/gsf/login/NetworkMonitor;->access$302(Lcom/google/android/gsf/login/NetworkMonitor;Z)Z

    .line 146
    .end local v1           #digest:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/login/NetworkMonitor$2;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {v3}, Lcom/google/android/gsf/login/NetworkMonitor;->access$000(Lcom/google/android/gsf/login/NetworkMonitor;)V

    .line 147
    return-void

    .restart local v2       #ni:Landroid/net/NetworkInfo;
    :cond_3
    move v4, v5

    .line 136
    goto :goto_0

    .end local v2           #ni:Landroid/net/NetworkInfo;
    .restart local v1       #digest:Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 143
    goto :goto_1
.end method
