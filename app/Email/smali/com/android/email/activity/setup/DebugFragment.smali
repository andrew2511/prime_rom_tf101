.class public Lcom/android/email/activity/setup/DebugFragment;
.super Landroid/app/Fragment;
.source "DebugFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mEnableDebugLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeLoggingView:Landroid/widget/CheckBox;

.field private mEnableStrictModeView:Landroid/widget/CheckBox;

.field private mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

.field private mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

.field private mPreferences:Lcom/android/email/Preferences;

.field private mVersionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private clearWebViewCache()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, webview:Landroid/webkit/WebView;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 153
    const-string v1, "Email"

    const-string v2, "Cleard WebView cache."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    throw v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->updateLoggingFlags(Landroid/content/Context;)V

    .line 138
    return-void

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableDebugLogging(Z)V

    .line 112
    sput-boolean p2, Lcom/android/email/Email;->DEBUG:Z

    .line 113
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE:Z

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeLogging(Z)V

    .line 117
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeFileLogging(Z)V

    .line 121
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    goto :goto_0

    .line 124
    :pswitch_4
    sput-boolean p2, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 125
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setInhibitGraphicsAcceleration(Z)V

    goto :goto_0

    .line 128
    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setForceOneMinuteRefresh(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    goto :goto_0

    .line 132
    :pswitch_6
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableStrictMode(Z)V

    .line 133
    invoke-static {p2}, Lcom/android/email/Email;->enableStrictMode(Z)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f004d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 144
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/DebugFragment;->clearWebViewCache()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x7f0f0050
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 57
    const v3, 0x7f04001a

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    .line 62
    const v3, 0x7f0f004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mVersionView:Landroid/widget/TextView;

    .line 63
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mVersionView:Landroid/widget/TextView;

    const v4, 0x7f080058

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f080002

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v3, 0x7f0f004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    .line 67
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    const v3, 0x7f0f004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    .line 70
    const v3, 0x7f0f004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    .line 74
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    invoke-static {v0}, Lcom/android/email/ExchangeUtils;->isExchangeAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 77
    .local v1, exchangeAvailable:Z
    if-eqz v1, :cond_0

    .line 78
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    :goto_0
    const v3, 0x7f0f0050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v3, 0x7f0f0051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    .line 91
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    const v3, 0x7f0f0052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    .line 96
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    const v3, 0x7f0f0053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    .line 101
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    return-object v2

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 84
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
