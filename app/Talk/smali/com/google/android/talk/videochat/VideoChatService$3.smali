.class Lcom/google/android/talk/videochat/VideoChatService$3;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatService;->initCallManager()Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private callJid:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;JZ)V
    .locals 1
    .parameter "remoteFullJid"
    .parameter "accountId"
    .parameter "isVideo"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/talk/videochat/VideoChatService;->postOngoingNotification(Ljava/lang/String;JZ)V

    .line 446
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->callJid:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->access$400(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/String;J)V

    .line 448
    return-void
.end method

.method public onDeinit(Ljava/lang/String;J)V
    .locals 1
    .parameter "remoteFullJid"
    .parameter "accountId"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->callJid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->callJid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatService;->removeOngoingNotification()V

    .line 454
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatService;->getNetworkConnectionManager()Lcom/google/android/talk/videochat/NetworkConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->stopUsingMobileHipri()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->access$500(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/String;J)V

    .line 458
    return-void
.end method

.method public onInit(Ljava/lang/String;JZ)V
    .locals 1
    .parameter "remoteBareJid"
    .parameter "accountId"
    .parameter "isVideo"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$3;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatService;->getNetworkConnectionManager()Lcom/google/android/talk/videochat/NetworkConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->startUsingMobileHipriIfOnMobileNetwork()V

    .line 442
    return-void
.end method
