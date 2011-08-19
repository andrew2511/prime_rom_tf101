.class public Lcom/google/android/gsf/login/SyncIntroActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SyncIntroActivity.java"


# static fields
.field private static final RESTORE_INTENT:Landroid/content/Intent;


# instance fields
.field private mAgreeBackup:Landroid/widget/CompoundButton;

.field private mAgreeRestore:Landroid/widget/CompoundButton;

.field private mBackgroundId:I

.field private final mBackupServiceConnection:Landroid/content/ServiceConnection;

.field private mDoneButton:Landroid/view/View;

.field protected mHandler:Landroid/os/Handler;

.field private mPrimaryMessage:Landroid/widget/TextView;

.field private mState:I

.field private mSyncMessage:Landroid/widget/TextView;

.field private mSyncSettings:Landroid/widget/ListView;

.field private mTitle:Landroid/widget/TextView;

.field private mTopDivider:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 70
    const v0, 0x7f02001e

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackgroundId:I

    .line 206
    new-instance v0, Lcom/google/android/gsf/login/SyncIntroActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/SyncIntroActivity$1;-><init>(Lcom/google/android/gsf/login/SyncIntroActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/google/android/gsf/login/SyncIntroActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/SyncIntroActivity$2;-><init>(Lcom/google/android/gsf/login/SyncIntroActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/SyncIntroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->onRestoreDone()V

    return-void
.end method

.method private onRestoreDone()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "GoogleLoginService"

    const-string v1, "Restore done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 293
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setupSyncEnableBackup()V

    .line 294
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    .line 296
    return-void
.end method

.method private replaceTextWithIcon(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "textView"
    .parameter "text"
    .parameter "iconResId"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 79
    .local v2, msg:Ljava/lang/CharSequence;
    invoke-static {v2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 80
    .local v3, pos:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 81
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 82
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, p0, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 83
    .local v1, imageSpan:Landroid/text/style/ImageSpan;
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 84
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v5, 0x21

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void

    .line 89
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v1           #imageSpan:Landroid/text/style/ImageSpan;
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Couldn\'t find tag (%i) for icon in TextView"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private showRestoringScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 299
    const v1, 0x7f020020

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->trySetBackground(I)V

    .line 300
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 302
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    const v2, 0x7f0800ae

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const v1, 0x7f0c0070

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const v1, 0x7f0c0074

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, backupView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_0
    return-void
.end method

.method private trySetBackground(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackgroundId:I

    if-eq v0, p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iput p1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackgroundId:I

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method protected isFullScreen()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    const v13, 0x7f0c000e

    const/16 v10, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "EXTRA_ACCOUNT_WAS_NEWLY_CREATED"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 98
    .local v0, accountWasNewlyCreated:Z
    const v8, 0x7f030022

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0, v13}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTitle:Landroid/widget/TextView;

    .line 100
    const v8, 0x7f0c0039

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    .line 101
    const v8, 0x7f0c0072

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mDoneButton:Landroid/view/View;

    .line 102
    const v8, 0x7f0c006f

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncMessage:Landroid/widget/TextView;

    .line 103
    const v8, 0x7f0c0015

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CompoundButton;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    .line 104
    const v8, 0x7f0c0076

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CompoundButton;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    .line 105
    const v8, 0x7f0c0001

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    .line 107
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 108
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 109
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 111
    const v8, 0x7f0c0075

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, agreeRestoreLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isFirstRun()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->backupExists()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v0, :cond_1

    move v2, v12

    .line 113
    .local v2, allowRestore:Z
    :goto_0
    if-eqz v2, :cond_2

    move v8, v11

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 115
    sget-object v8, Lcom/google/android/gsf/login/SyncIntroActivity;->mUserData:Ljava/util/HashMap;

    sget-object v9, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v9}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, username:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SyncIntroActivity;->isFirstGoogleAccount(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 117
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v12}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 118
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 119
    invoke-virtual {p0, v13}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 120
    .local v6, titleView:Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 121
    const v8, 0x7f0800ef

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :goto_2
    if-nez v2, :cond_0

    .line 126
    const v8, 0x7f0c0014

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0800a5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 140
    .end local v6           #titleView:Landroid/widget/TextView;
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const v9, 0x7f0c0071

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Landroid/app/ListFragment;

    .line 142
    .local v4, fragment:Landroid/app/ListFragment;
    invoke-virtual {v4}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    .line 144
    const v8, 0x7f0c0070

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 145
    .local v5, layout:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SyncIntroActivity;->isFirstGoogleAccount(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x4

    :goto_4
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isXLargeScreen()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 148
    invoke-static {p0}, Lcom/google/android/gsf/login/BackupConsentActivity;->shouldFinishSoon(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 155
    const-string v8, "GoogleLoginService"

    const-string v9, "Backup screen is requested to finish soon. Ignore it."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_5
    return-void

    .end local v2           #allowRestore:Z
    .end local v4           #fragment:Landroid/app/ListFragment;
    .end local v5           #layout:Landroid/widget/LinearLayout;
    .end local v7           #username:Ljava/lang/String;
    :cond_1
    move v2, v11

    .line 112
    goto :goto_0

    .restart local v2       #allowRestore:Z
    :cond_2
    move v8, v10

    .line 113
    goto :goto_1

    .line 123
    .restart local v6       #titleView:Landroid/widget/TextView;
    .restart local v7       #username:Ljava/lang/String;
    :cond_3
    const v8, 0x7f0800ee

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 130
    .end local v6           #titleView:Landroid/widget/TextView;
    :cond_4
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 131
    const v8, 0x7f0c0074

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 132
    .local v3, backupView:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 136
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    goto :goto_3

    .end local v3           #backupView:Landroid/view/View;
    .restart local v4       #fragment:Landroid/app/ListFragment;
    .restart local v5       #layout:Landroid/widget/LinearLayout;
    :cond_5
    move v8, v11

    .line 145
    goto :goto_4

    .line 158
    :cond_6
    if-eqz v0, :cond_7

    .line 159
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    const v9, 0x7f0800ea

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v7, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/google/android/gsf/login/SyncIntroActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_6
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mDoneButton:Landroid/view/View;

    invoke-virtual {p0, v8, v12}, Lcom/google/android/gsf/login/SyncIntroActivity;->setDefaultButton(Landroid/view/View;Z)V

    goto :goto_5

    .line 161
    :cond_7
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    const v9, 0x7f080091

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v7, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/google/android/gsf/login/SyncIntroActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 164
    :cond_8
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncMessage:Landroid/widget/TextView;

    const-string v9, "%i"

    const v10, 0x7f020017

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/login/SyncIntroActivity;->replaceTextWithIcon(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_6
.end method

.method public performRestore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->showRestoringScreen()V

    .line 241
    sget-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    const-string v0, "GoogleLoginService"

    const-string v1, "Could not connect to restore service... skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GoogleLoginService"

    const-string v1, "Starting restore service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    sget-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setupSyncEnableBackup()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 255
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 256
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "account"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "account"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    move-object v0, v7

    .line 259
    .local v0, account:Landroid/accounts/Account;
    :goto_0
    if-eqz v0, :cond_3

    .line 260
    iget-object v7, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 261
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 262
    iget-object v7, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .line 264
    .local v6, item:Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    invoke-virtual {v6}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->getSyncAdapterType()Landroid/content/SyncAdapterType;

    move-result-object v7

    iget-object v1, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 265
    .local v1, authority:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    .line 266
    .local v2, checked:Z
    const-string v7, "GoogleLoginService"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 267
    const-string v7, "GoogleLoginService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting auto sync for account="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " authority="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 271
    const-string v7, "GoogleLoginService"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    const-string v7, "GoogleLoginService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requesting sync for account="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " authority="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v7}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #checked:Z
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #item:Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    :cond_2
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 279
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_3
    iget-object v7, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    if-eqz v7, :cond_4

    .line 280
    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setBackupAccount(Landroid/accounts/Account;)Z

    .line 282
    iget-object v7, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SyncIntroActivity;->enableBackup(Z)Z

    .line 285
    :cond_4
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 175
    iget v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 182
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mDoneButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->performRestore()V

    .line 204
    :goto_0
    return-void

    .line 177
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setupSyncEnableBackup()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
