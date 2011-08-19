.class Lcom/android/email/service/MailService$7;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;

.field final synthetic val$accountId:J

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    iput-wide p2, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    iput p4, p0, Lcom/android/email/service/MailService$7;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    invoke-static {v0}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/email/service/MailService;->access$500()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 347
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 349
    .local v7, newMessageCount:I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 351
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    iget-wide v1, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 352
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    iget-wide v1, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/service/MailService;->access$600(Lcom/android/email/service/MailService;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 358
    const-string v0, "Email-MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    iget v1, p0, Lcom/android/email/service/MailService$7;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 362
    return-void

    .line 355
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
