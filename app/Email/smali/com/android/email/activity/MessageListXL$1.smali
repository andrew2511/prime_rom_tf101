.class Lcom/android/email/activity/MessageListXL$1;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;

.field final synthetic val$accountId:J

.field final synthetic val$rawMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    iput-wide p2, p0, Lcom/android/email/activity/MessageListXL$1;->val$accountId:J

    iput-object p4, p0, Lcom/android/email/activity/MessageListXL$1;->val$rawMessage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 564
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXL$1;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 568
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 564
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "accountName"

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1400(Lcom/android/email/activity/MessageListXL;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$1;->val$rawMessage:Ljava/lang/String;

    .line 584
    .local v0, message:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/BannerController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/activity/BannerController;->show(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXL$1;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/MessageListXL;->access$1602(Lcom/android/email/activity/MessageListXL;J)J

    goto :goto_0

    .line 582
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$1;->val$rawMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1
.end method
