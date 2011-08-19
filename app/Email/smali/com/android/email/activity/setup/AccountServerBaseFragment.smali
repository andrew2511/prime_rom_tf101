.class public abstract Lcom/android/email/activity/setup/AccountServerBaseFragment;
.super Landroid/app/Fragment;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;,
        Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;,
        Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;
    }
.end annotation


# static fields
.field protected static sDefaultUri:Ljava/net/URI;

.field public static sSetupModeArgs:Landroid/os/Bundle;


# instance fields
.field mBaseScheme:Ljava/lang/String;

.field protected mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

.field protected mContext:Landroid/content/Context;

.field mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field public mProceedButton:Landroid/widget/Button;

.field private mProceedButtonPressed:Z

.field protected mSettingsMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 63
    const-string v0, "protocol"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sDefaultUri:Ljava/net/URI;

    if-nez v0, :cond_0

    .line 113
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sDefaultUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V

    return-void
.end method

.method private clearButtonBounce()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 220
    return-void
.end method

.method public static declared-synchronized getSettingsModeArgs()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 103
    const-class v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    .line 105
    sget-object v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    const-string v2, "AccountServerBaseFragment.settings"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    :cond_0
    sget-object v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public enableNextButton(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V

    .line 201
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    invoke-interface {v0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onEnableProceedButtons(Z)V

    .line 202
    return-void
.end method

.method public haveSettingsChanged()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 303
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 305
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 306
    .local v3, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v7

    .line 308
    .local v4, sendChanged:Z
    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 309
    .local v1, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v5, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v7

    .line 311
    .local v2, recvChanged:Z
    :goto_1
    if-nez v4, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    move v5, v7

    :goto_2
    return v5

    .end local v1           #recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v2           #recvChanged:Z
    .end local v4           #sendChanged:Z
    :cond_1
    move v4, v6

    .line 306
    goto :goto_0

    .restart local v1       #recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v4       #sendChanged:Z
    :cond_2
    move v2, v6

    .line 309
    goto :goto_1

    .restart local v2       #recvChanged:Z
    :cond_3
    move v5, v6

    .line 311
    goto :goto_2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 153
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    .line 156
    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_0

    .line 157
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 1
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCheckSettingsComplete(I)V
    .locals 2
    .parameter "settingsResult"

    .prologue
    .line 269
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 288
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f000f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccountServerBaseFragment.settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    .line 132
    :cond_0
    return-void
.end method

.method protected onCreateViewSettingsMode(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v0, :cond_0

    .line 139
    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f0f0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    :cond_0
    return-void
.end method

.method public abstract onNext()V
.end method

.method public abstract saveSettingsAfterEdit()V
.end method

.method public abstract saveSettingsAfterSetup()V
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 185
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 186
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    .line 187
    return-void

    :cond_0
    move-object v0, p1

    .line 185
    goto :goto_0
.end method

.method protected startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "accountId"
    .parameter "checkHost"
    .parameter "checkLogin"
    .parameter "checkSettingsMode"

    .prologue
    .line 212
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;JLjava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method
