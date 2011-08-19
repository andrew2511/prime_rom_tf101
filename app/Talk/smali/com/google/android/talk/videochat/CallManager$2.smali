.class Lcom/google/android/talk/videochat/CallManager$2;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/CallManager;->handleIncomingCall(Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;

.field final synthetic val$accountId:J

.field final synthetic val$existingCall:Lcom/google/android/talk/videochat/CallState;

.field final synthetic val$isVideo:Z

.field final synthetic val$remoteBareJid:Ljava/lang/String;

.field final synthetic val$remoteJid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    iput-object p2, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$remoteBareJid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$remoteJid:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$accountId:J

    iput-boolean p6, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$isVideo:Z

    iput-object p7, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$existingCall:Lcom/google/android/talk/videochat/CallState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$800(Lcom/google/android/talk/videochat/CallManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$remoteBareJid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/CallState;

    iget v0, v0, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$900(Lcom/google/android/talk/videochat/CallManager;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1065
    const-string v0, "talk:videochat"

    const-string v1, "Incoming call no longer waiting for accept. Give up trying to connect to wifi."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$1000(Lcom/google/android/talk/videochat/CallManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    .line 1072
    const-string v0, "talk:videochat"

    const-string v1, "Wi-Fi doesn\'t have a connection. Retrying..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v2}, Lcom/google/android/talk/videochat/CallManager;->access$1100(Lcom/google/android/talk/videochat/CallManager;)J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/talk/videochat/CallManager;->access$1200()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$1400(Lcom/google/android/talk/videochat/CallManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/google/android/talk/videochat/CallManager;->access$1300()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$900(Lcom/google/android/talk/videochat/CallManager;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1080
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$remoteJid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/videochat/CallManager;->access$1500(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;Z)Z

    .line 1081
    const-string v0, "talk:videochat"

    const-string v1, "Couldn\'t get wifi connection. Declining new call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/videochat/CallManager;->access$1102(Lcom/google/android/talk/videochat/CallManager;J)J

    .line 1086
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$2;->this$0:Lcom/google/android/talk/videochat/CallManager;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$remoteJid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$accountId:J

    iget-boolean v4, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$isVideo:Z

    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager$2;->val$existingCall:Lcom/google/android/talk/videochat/CallState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->access$1600(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V

    goto :goto_0
.end method
