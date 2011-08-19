.class Lcom/android/email/Controller$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->updateMailboxList(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/email/Controller$1;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$1;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/email/Controller$1;->this$0:Lcom/android/email/Controller;

    iget-wide v3, p0, Lcom/android/email/Controller$1;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 314
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    iget-wide v2, p0, Lcom/android/email/Controller$1;->val$accountId:J

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "updateMailboxList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lcom/android/email/Controller$1;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$1;->val$accountId:J

    iget-object v5, p0, Lcom/android/email/Controller$1;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    goto :goto_0
.end method
