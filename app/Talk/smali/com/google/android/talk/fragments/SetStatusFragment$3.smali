.class Lcom/google/android/talk/fragments/SetStatusFragment$3;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 273
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$500(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    .line 274
    .local v1, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v1, v3, v4}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$702(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/gtalkservice/IImSession;)Lcom/google/android/gtalkservice/IImSession;

    .line 279
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_2

    .line 292
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    if-nez v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->finish()V

    goto :goto_0

    .line 282
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$800(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 283
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$900(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 285
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget v2, v2, Lcom/google/android/talk/fragments/SetStatusFragment;->mLogLevel:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 286
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    const-string v3, "initialize: update views"

    invoke-static {v2, v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1000(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;)V

    .line 288
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1100(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    if-nez v2, :cond_4

    .line 294
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->finish()V

    .line 298
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$500(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1300(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/talk/TalkApp;->removeServiceStateChangedCallback(Landroid/os/Handler;)V

    goto :goto_0

    .line 289
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "talk"

    const-string v3, "RemoteException failure"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    if-nez v2, :cond_4

    .line 294
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->finish()V

    goto :goto_1

    .line 292
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v3

    if-nez v3, :cond_5

    .line 294
    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$3;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->finish()V

    :cond_5
    throw v2
.end method
