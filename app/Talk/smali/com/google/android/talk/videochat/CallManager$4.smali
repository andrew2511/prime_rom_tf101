.class Lcom/google/android/talk/videochat/CallManager$4;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/CallManager;->asyncReportEndCause(Ljava/lang/String;JZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;

.field final synthetic val$accountId:J

.field final synthetic val$endCause:I

.field final synthetic val$isVideo:Z

.field final synthetic val$remoteBareJid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CallManager;JLjava/lang/String;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$4;->this$0:Lcom/google/android/talk/videochat/CallManager;

    iput-wide p2, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$accountId:J

    iput-object p4, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$remoteBareJid:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$isVideo:Z

    iput p6, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$endCause:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1514
    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager$4;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v5}, Lcom/google/android/talk/videochat/CallManager;->access$1800(Lcom/google/android/talk/videochat/CallManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1516
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager$4;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v5}, Lcom/google/android/talk/videochat/CallManager;->access$1900(Lcom/google/android/talk/videochat/CallManager;)Ljava/util/HashMap;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$accountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gtalkservice/IImSession;

    .line 1517
    .local v3, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v3, :cond_2

    .line 1518
    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$remoteBareJid:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 1520
    .local v0, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-nez v0, :cond_0

    .line 1528
    :cond_0
    if-eqz v0, :cond_1

    .line 1529
    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$remoteBareJid:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$accountId:J

    invoke-static {v1, v5, v6, v7}, Lcom/google/android/talk/DatabaseUtils;->getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 1531
    .local v4, nickname:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$isVideo:Z

    iget v6, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$endCause:I

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gtalkservice/IChatSession;->reportEndCause(Ljava/lang/String;ZI)V

    .line 1540
    .end local v0           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .end local v3           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v4           #nickname:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1534
    .restart local v3       #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_2
    const-string v5, "talk:videochat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no ImSession in handleCallStateChanged for account id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/talk/videochat/CallManager$4;->val$accountId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1537
    .end local v3           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1538
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "talk:videochat"

    const-string v6, "Problem inserting end cause message into chat history"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
