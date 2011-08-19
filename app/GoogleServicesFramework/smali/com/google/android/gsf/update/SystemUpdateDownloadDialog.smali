.class public Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;
.super Landroid/app/Activity;
.source "SystemUpdateDownloadDialog.java"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mButtonClicked:Z

.field private mPending:Landroid/app/PendingIntent;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mButtonClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->reschedule(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->deschedule()V

    return-void
.end method

.method private deschedule()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mPending:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_next_dialog"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method private reschedule(Z)V
    .locals 5
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "download_next_dialog"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->isDownloadAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    .line 188
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_next_dialog"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mPending:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "download_dialog_trigger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mPending:Landroid/app/PendingIntent;

    .line 63
    const-string v0, "update"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 65
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mAlarmManager:Landroid/app/AlarmManager;

    .line 67
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mButtonClicked:Z

    .line 69
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->requestWindowFeature(I)Z

    .line 70
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 75
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$2;-><init>(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;-><init>(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->setIntent(Landroid/content/Intent;)V

    .line 142
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "status"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, status:I
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_urgency"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, urgency:I
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "url"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, url:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rejected_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, rejectedKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->isDownloadAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->finish()V

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    sget-boolean v4, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-eqz v4, :cond_1

    .line 159
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->reschedule(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 129
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->deschedule()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->onNewIntent(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 168
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mButtonClicked:Z

    if-nez v0, :cond_0

    .line 170
    const v0, 0x3112a

    const-string v1, "user-leave-download"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method
