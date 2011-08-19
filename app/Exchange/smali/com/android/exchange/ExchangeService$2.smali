.class Lcom/android/exchange/ExchangeService$2;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/android/exchange/EasSyncService;

    invoke-direct {v0}, Lcom/android/exchange/EasSyncService;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/exchange/EasSyncService;->tryAutodiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    .line 475
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 476
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public hostChanged(J)V
    .locals 9
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 410
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_0

    .line 430
    .end local p0
    :goto_0
    return-void

    .line 411
    .restart local p0
    :cond_0
    iget-object v6, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 413
    .local v6, syncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/android/exchange/ExchangeService$SyncError;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 414
    .local v4, mailboxId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 416
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 419
    .local v3, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v3, :cond_2

    .line 420
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 421
    :cond_2
    if-eqz v0, :cond_1

    iget-wide v7, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_1

    .line 422
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 423
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    goto :goto_1

    .line 427
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v3           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v4           #mailboxId:J
    :cond_3
    const/4 v7, 0x1

    invoke-static {v1, p1, p2, v7}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;JZ)V

    .line 429
    const-string v7, "host changed"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAttachment(JZ)V
    .locals 5
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 397
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 398
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_0

    .line 399
    const-string v1, "ExchangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAttachment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    new-instance v1, Lcom/android/exchange/PartRequest;

    invoke-direct {v1, v0, v4, v4}, Lcom/android/exchange/PartRequest;-><init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 402
    return-void
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    return-void
.end method

.method public moveMessage(JJ)V
    .locals 1
    .parameter "messageId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Lcom/android/exchange/MessageMoveRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/exchange/MessageMoveRequest;-><init>(JJ)V

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 463
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public sendMeetingResponse(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/exchange/MeetingResponseRequest;-><init>(JI)V

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 438
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$000(Lcom/android/exchange/ExchangeService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 459
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-static {p1}, Lcom/android/exchange/Eas;->setUserDebug(I)V

    .line 434
    return-void
.end method

.method public startSync(JZ)V
    .locals 9
    .parameter "mailboxId"
    .parameter "userRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 350
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 351
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 353
    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    .line 356
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$100()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 357
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$100()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v3

    goto :goto_0

    .line 363
    :cond_2
    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 364
    .local v2, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_0

    .line 365
    iget v3, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 369
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "syncServerId"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mailboxKey=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    iget-object v3, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v3, "start outbox"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_3
    iget v3, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    iget v3, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v3, v5, :cond_5

    .line 382
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$100()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 383
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$100()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 384
    :catch_1
    move-exception v3

    goto :goto_0

    .line 388
    :cond_5
    if-eqz p3, :cond_6

    move v3, v5

    :goto_1
    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_1
.end method

.method public stopSync(J)V
    .locals 0
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    .line 394
    return-void
.end method

.method public updateFolderList(J)V
    .locals 2
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 406
    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    const-class v0, Lcom/android/exchange/EasSyncService;

    iget-object v7, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v7}, Lcom/android/exchange/AbstractSyncService;->validate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
