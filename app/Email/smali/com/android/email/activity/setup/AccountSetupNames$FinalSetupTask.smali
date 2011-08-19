.class Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 214
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    .line 215
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    .line 220
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 226
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 228
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "isSecurityHold"

    .prologue
    const/4 v4, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v1, v0, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->access$100(Lcom/android/email/activity/setup/AccountSetupNames;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
