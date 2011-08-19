.class Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/AttachmentDownloadService;


# direct methods
.method private constructor <init>(Lcom/android/email/service/AttachmentDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/AttachmentDownloadService;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/android/email/service/AttachmentDownloadService;)V

    return-void
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .locals 5
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 627
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-static {v2, p3, p4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->access$600(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v1

    .line 628
    .local v1, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v1, :cond_1

    .line 629
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 631
    packed-switch p5, :pswitch_data_0

    .line 634
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, code:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    if-eq p5, v2, :cond_2

    .line 637
    const-string v2, "AttachmentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> Attachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    :goto_1
    iput p5, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    .line 643
    iput p6, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    .line 646
    :cond_1
    packed-switch p5, :pswitch_data_1

    .line 650
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2, p3, p4, p5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->endDownload(JI)V

    .line 653
    :pswitch_0
    return-void

    .line 632
    :pswitch_1
    const-string v0, "Success"

    .restart local v0       #code:Ljava/lang/String;
    goto :goto_0

    .line 633
    .end local v0           #code:Ljava/lang/String;
    :pswitch_2
    const-string v0, "In progress"

    .restart local v0       #code:Ljava/lang/String;
    goto :goto_0

    .line 638
    :cond_2
    iget v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    add-int/lit8 v2, v2, 0xf

    if-lt p6, v2, :cond_0

    .line 639
    const-string v2, "AttachmentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> Attachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 646
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 0
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .locals 0
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 663
    return-void
.end method

.method public syncMailboxStatus(JII)V
    .locals 0
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 668
    return-void
.end method
