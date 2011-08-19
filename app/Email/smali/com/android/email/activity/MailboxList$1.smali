.class Lcom/android/email/activity/MailboxList$1;
.super Landroid/os/AsyncTask;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->onCreate(Landroid/os/Bundle;)V
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
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$1;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$1;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 109
    const/4 v6, 0x0

    .line 110
    .local v6, accountName:Ljava/lang/String;
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$1;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$1;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "displayName"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 114
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 118
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 120
    new-array v0, v9, [Ljava/lang/String;

    aput-object v6, v0, v8

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$1;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 130
    .local v0, accountName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$1;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList;->finish()V

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$1;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 135
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$1;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
