.class Lcom/android/email/activity/setup/AccountSecurity$1;
.super Landroid/os/AsyncTask;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSecurity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/android/emailcommon/provider/EmailContent$Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSecurity;

.field final synthetic val$accountId:J

.field final synthetic val$passwordExpired:Z

.field final synthetic val$passwordExpiring:Z

.field final synthetic val$showDialog:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSecurity;JZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$accountId:J

    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpiring:Z

    iput-boolean p5, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpired:Z

    iput-boolean p6, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$showDialog:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 3
    .parameter "params"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity$1;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-static {v2, p1}, Lcom/android/email/activity/setup/AccountSecurity;->access$002(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 126
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-nez v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpiring:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpired:Z

    if-eqz v2, :cond_3

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 133
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v2, "password_expiration"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpired:Z

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    move-result-object v0

    .line 137
    .local v0, dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    const-string v2, "password_expiration"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0           #dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 144
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$showDialog:Z

    if-eqz v2, :cond_4

    .line 146
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 147
    .restart local v1       #fm:Landroid/app/FragmentManager;
    const-string v2, "security_needed"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    move-result-object v0

    .line 150
    .local v0, dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    const-string v2, "security_needed"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0           #dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSecurity;->access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    .line 158
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity$1;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method
