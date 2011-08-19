.class final Lcom/android/exchange/ExchangeService$5;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->alert(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exchangeService:Lcom/android/exchange/ExchangeService;

.field final synthetic val$id:J

.field final synthetic val$service:Lcom/android/exchange/AbstractSyncService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;JLcom/android/exchange/AbstractSyncService;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$5;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iput-wide p2, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    iput-object p4, p0, Lcom/android/exchange/ExchangeService$5;->val$service:Lcom/android/exchange/AbstractSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1430
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iget-wide v4, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 1431
    .local v1, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_2

    .line 1434
    sget-boolean v3, Lcom/android/exchange/Eas;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1435
    const-string v3, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alert for mailbox "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_0
    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1438
    :cond_1
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1439
    .local v0, args:[Ljava/lang/String;
    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->access$500(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 1440
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1442
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1462
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_2
    :goto_0
    return-void

    .line 1446
    :cond_3
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$service:Lcom/android/exchange/AbstractSyncService;

    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1447
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$service:Lcom/android/exchange/AbstractSyncService;

    iput-object v1, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 1449
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$service:Lcom/android/exchange/AbstractSyncService;

    invoke-virtual {v3}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1453
    const-string v3, "Alarm failed; releasing mailbox"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1454
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$900()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1455
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$5;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iget-wide v5, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    invoke-static {v4, v5, v6}, Lcom/android/exchange/ExchangeService;->access$1000(Lcom/android/exchange/ExchangeService;J)V

    .line 1456
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1100()V

    goto :goto_0

    .line 1456
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
