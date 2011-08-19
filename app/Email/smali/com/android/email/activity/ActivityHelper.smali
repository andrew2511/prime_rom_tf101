.class public final Lcom/android/email/activity/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static debugSetWindowFlags(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/high16 v2, 0x100

    .line 131
    sget-boolean v0, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public static deleteMessage(Landroid/app/Activity;J)V
    .locals 3
    .parameter "activity"
    .parameter "messageId"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static moveMessages(Landroid/app/Activity;J[J)V
    .locals 1
    .parameter "activity"
    .parameter "newMailboxId"
    .parameter "messageIds"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/email/Controller;->moveMessage([JJ)Landroid/os/AsyncTask;

    .line 109
    new-instance v0, Lcom/android/email/activity/ActivityHelper$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/activity/ActivityHelper$1;-><init>(Landroid/app/Activity;J[J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method public static openCalendar(Landroid/app/Activity;J)V
    .locals 4
    .parameter "activity"
    .parameter "epochEventStartTime"

    .prologue
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.calendar/time/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    const-string v2, "VIEW"

    const-string v3, "DAY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public static openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z
    .locals 4
    .parameter "activity"
    .parameter "url"
    .parameter "senderAccountId"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    .line 85
    :goto_0
    return v2

    .line 74
    :cond_0
    const/4 v1, 0x0

    .line 75
    .local v1, result:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 85
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    goto :goto_1
.end method
