.class Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->notifyIncomingSessionStanza(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/ISessionStanzaListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

.field final synthetic val$fromJid:Ljava/lang/String;

.field final synthetic val$messageXml:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;->val$fromJid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;->val$messageXml:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/ISessionStanzaListener;)Z
    .locals 7
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    .line 597
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->getAccountId()J

    move-result-wide v1

    .line 598
    .local v1, listenerAccountId:J
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->access$300(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    move v3, v6

    .line 611
    .end local v1           #listenerAccountId:J
    :goto_0
    return v3

    .line 602
    .restart local v1       #listenerAccountId:J
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;->val$fromJid:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;->val$messageXml:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->onStanzaReceived(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    const/4 v3, 0x1

    goto :goto_0

    .line 604
    .end local v1           #listenerAccountId:J
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 605
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VideoChatSessionMgr] processPacket caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removing listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    invoke-static {v3, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->access$500(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    move v3, v6

    .line 611
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    check-cast p1, Lcom/google/android/gtalkservice/ISessionStanzaListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;->call(Lcom/google/android/gtalkservice/ISessionStanzaListener;)Z

    move-result v0

    return v0
.end method
