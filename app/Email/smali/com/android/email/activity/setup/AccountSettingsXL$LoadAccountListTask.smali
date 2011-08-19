.class Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;
.super Landroid/os/AsyncTask;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 401
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 405
    .line 406
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 407
    aget-object v0, p1, v11

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 409
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 414
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 415
    new-array v1, v1, [Landroid/preference/PreferenceActivity$Header;

    move v2, v11

    move-object v3, v6

    .line 417
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 419
    cmp-long v6, v4, v7

    if-nez v6, :cond_0

    .line 420
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 423
    :cond_0
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 424
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 425
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 426
    iput-wide v4, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 427
    iput-object v6, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 428
    iput-object v9, v10, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 429
    const-class v6, Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 430
    invoke-static {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->buildArguments(J)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 432
    add-int/lit8 v4, v2, 0x1

    aput-object v10, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 433
    goto :goto_0

    .line 435
    :cond_1
    if-eqz v0, :cond_2

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_2
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v1, v0, v11

    aput-object v3, v0, v12

    return-object v0

    .line 435
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 401
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, [Landroid/preference/PreferenceActivity$Header;

    move-object v0, v3

    check-cast v0, [Landroid/preference/PreferenceActivity$Header;

    move-object v2, v0

    .line 447
    .local v2, headers:[Landroid/preference/PreferenceActivity$Header;
    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 449
    .local v1, deletingAccountFound:Z
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-static {v3, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$402(Lcom/android/email/activity/setup/AccountSettingsXL;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;

    .line 450
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    .line 451
    if-nez v1, :cond_0

    .line 452
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$502(Lcom/android/email/activity/setup/AccountSettingsXL;J)J

    goto :goto_0
.end method
