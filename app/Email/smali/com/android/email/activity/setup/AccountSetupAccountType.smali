.class public Lcom/android/email/activity/setup/AccountSetupAccountType;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupAccountType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAccountType;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method private onExchange()V
    .locals 7

    .prologue
    .line 123
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 124
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 125
    .local v1, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const-string v3, "eas"

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iget v5, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v6, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 127
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 128
    .local v2, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const-string v3, "eas"

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iget v5, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v6, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 131
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 132
    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 133
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 134
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 135
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 137
    return-void
.end method

.method private onImap()V
    .locals 5

    .prologue
    .line 105
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 106
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 107
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const-string v2, "imap"

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 109
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v3, "imap"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 112
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 113
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 114
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-static {p0, v2, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 116
    return-void
.end method

.method private onPop()V
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 91
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 92
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const-string v2, "pop3"

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 94
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v3, "pop3"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 95
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 96
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-static {p0, v2, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 98
    return-void
.end method


# virtual methods
.method checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 146
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-gez v0, :cond_0

    move v0, v8

    .line 172
    :goto_0
    return v0

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move v2, v7

    .line 158
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 160
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_5

    iget-object v3, p1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    add-int/lit8 v0, v2, 0x1

    :goto_2
    move v2, v0

    .line 164
    goto :goto_1

    .line 166
    :cond_1
    if-eqz v1, :cond_2

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_2
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-ge v2, v0, :cond_4

    move v0, v8

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v7

    .line 172
    goto :goto_0

    .line 166
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    :pswitch_0
    return-void

    .line 178
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onPop()V

    goto :goto_0

    .line 181
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onImap()V

    goto :goto_0

    .line 184
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    goto :goto_0

    .line 187
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x7f0f0011
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 54
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    .line 57
    .local v1, flowMode:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const v3, 0x7f040008

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->setContentView(I)V

    .line 64
    const v3, 0x7f0f0011

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v3, 0x7f0f0012

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v3, 0x7f0f0013

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    .local v0, exchangeButton:Landroid/widget/Button;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    const v3, 0x7f0f0018

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 69
    .local v2, previousButton:Landroid/widget/Button;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_2
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->isExchangeAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const v3, 0x7f0800d1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
