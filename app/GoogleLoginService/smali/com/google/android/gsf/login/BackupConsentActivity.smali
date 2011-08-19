.class public Lcom/google/android/gsf/login/BackupConsentActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "BackupConsentActivity.java"


# instance fields
.field private mAgreeBackup:Landroid/widget/CheckBox;

.field private mIsUpgrade:Z

.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/BackupConsentActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mAgreeBackup:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .prologue
    const v2, 0x7f0c0015

    .line 100
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BackupConsentActivity;->setContentView(I)V

    .line 101
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BackupConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mNextButton:Landroid/view/View;

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/BackupConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mAgreeBackup:Landroid/widget/CheckBox;

    .line 105
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/BackupConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, checkboxText:Landroid/widget/TextView;
    new-instance v1, Lcom/google/android/gsf/login/BackupConsentActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/login/BackupConsentActivity$1;-><init>(Lcom/google/android/gsf/login/BackupConsentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mNextButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/BackupConsentActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 115
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mIsUpgrade:Z

    if-eqz v1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mNextButton:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :cond_0
    return-void
.end method

.method static shouldFinishSoon(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 73
    .local v3, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "last_setup_shown"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, lastVers:Ljava/lang/String;
    const-string v4, "backup_provisioned"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v7

    .line 78
    .local v0, backupProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.SETUP_VERSION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, curVers:Ljava/lang/String;
    const-string v4, "eclair_1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    .line 96
    .end local v0           #backupProvisioned:Z
    .end local v1           #curVers:Ljava/lang/String;
    .end local v2           #lastVers:Ljava/lang/String;
    :goto_1
    return v4

    .restart local v2       #lastVers:Ljava/lang/String;
    :cond_0
    move v0, v6

    .line 75
    goto :goto_0

    .line 91
    .end local v2           #lastVers:Ljava/lang/String;
    :catch_0
    move-exception v4

    :cond_1
    move v4, v6

    .line 96
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "android.intent.action.UPGRADE_SETUP"

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackupConsentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mIsUpgrade:Z

    .line 47
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mIsUpgrade:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-static {p0}, Lcom/google/android/gsf/login/BackupConsentActivity;->shouldFinishSoon(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackupConsentActivity;->finish()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackupConsentActivity;->initViews()V

    .line 56
    if-nez p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mAgreeBackup:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackupConsentActivity;->setResult(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gsf/login/BackupConsentActivity;->mAgreeBackup:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackupConsentActivity;->enableBackup(Z)Z

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackupConsentActivity;->finish()V

    .line 127
    return-void
.end method
