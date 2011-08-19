.class Lcom/google/android/talk/videochat/CallManager$5;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1882
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1884
    const/4 v6, 0x0

    .line 1885
    .local v6, remoteJid:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$2300(Lcom/google/android/talk/videochat/CallManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1886
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$2300(Lcom/google/android/talk/videochat/CallManager;)Ljava/lang/String;

    move-result-object v6

    .line 1887
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/CallManager;->access$2400(Lcom/google/android/talk/videochat/CallManager;Z)Z

    .line 1893
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1894
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v6}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v2, v6}, Lcom/google/android/talk/videochat/CallManager;->access$2600(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v4}, Lcom/google/android/talk/videochat/CallManager;->access$2700(Lcom/google/android/talk/videochat/CallManager;)Lcom/google/android/talk/videochat/Libjingle;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/talk/videochat/Libjingle;->isVideo(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->asyncReportEndCause(Ljava/lang/String;JZI)V

    .line 1900
    :cond_1
    return-void

    .line 1888
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$2500(Lcom/google/android/talk/videochat/CallManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$2500(Lcom/google/android/talk/videochat/CallManager;)Ljava/lang/String;

    move-result-object v6

    .line 1890
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$5;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0, v6, v1}, Lcom/google/android/talk/videochat/CallManager;->access$1500(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
