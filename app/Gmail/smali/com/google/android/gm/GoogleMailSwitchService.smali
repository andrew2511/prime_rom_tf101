.class public Lcom/google/android/gm/GoogleMailSwitchService;
.super Landroid/app/IntentService;
.source "GoogleMailSwitchService.java"


# static fields
.field private static final GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.widget.GmailWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.widget.GoogleMailWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "GoogleMailSwitchService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private deviceMissingMobileData()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 216
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/google/android/gm/GoogleMailSwitchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 218
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 220
    .local v1, mobileNetwork:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    move v4, v5

    .line 240
    :goto_0
    return v4

    .line 226
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 227
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_2

    .line 229
    :cond_1
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/google/android/gm/GoogleMailSwitchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 231
    .local v3, tm:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    .line 237
    goto :goto_0

    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    move v4, v6

    .line 240
    goto :goto_0
.end method

.method private enableGoogleMailActivities(Z)V
    .locals 11
    .parameter "useGoogleMail"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 109
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.ConversationListActivityGmail"

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v1, gmailList:Landroid/content/ComponentName;
    new-instance v4, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.ConversationListActivityGoogleMail"

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v4, googleMailList:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.ComposeActivityGmail"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, gmailCompose:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.ComposeActivityGoogleMail"

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v3, googleMailCompose:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.MailboxSelectionActivity"

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v2, gmailMailboxSelection:Landroid/content/ComponentName;
    new-instance v5, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.MailboxSelectionActivityGoogleMail"

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v5, googleMailMailboxSelection:Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {v6, v1, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 140
    invoke-virtual {v6, v4, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 144
    invoke-virtual {v6, v0, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 146
    invoke-virtual {v6, v3, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 150
    invoke-virtual {v6, v2, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 153
    invoke-virtual {v6, v5, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 158
    sget-object v7, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 161
    sget-object v7, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 194
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/GoogleMailSwitchService;->setLabelShortcutActivityState(Z)V

    .line 195
    return-void

    .line 167
    :cond_0
    invoke-virtual {v6, v1, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 169
    invoke-virtual {v6, v4, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 172
    invoke-virtual {v6, v0, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 174
    invoke-virtual {v6, v3, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 178
    invoke-virtual {v6, v2, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 180
    invoke-virtual {v6, v5, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 185
    sget-object v7, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 188
    sget-object v7, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method private setLabelShortcutActivityState(Z)V
    .locals 1
    .parameter "useGoogleMail"

    .prologue
    .line 204
    invoke-static {p0}, Lcom/google/android/gm/Utils;->shortcutActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->enableLabelShortcutActivity(Landroid/content/Context;Z)V

    .line 207
    :cond_0
    return-void
.end method

.method private validateWidgetProvider()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 89
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 90
    .local v1, enableGoogleMailFeatures:Z
    if-eqz v1, :cond_0

    sget-object v4, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    move-object v2, v4

    .line 92
    .local v2, enabledWidgetComponent:Landroid/content/ComponentName;
    :goto_0
    if-eqz v1, :cond_1

    sget-object v4, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    move-object v0, v4

    .line 94
    .local v0, disabledWidgetComponent:Landroid/content/ComponentName;
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 97
    invoke-virtual {v3, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 100
    return-void

    .line 90
    .end local v0           #disabledWidgetComponent:Landroid/content/ComponentName;
    .end local v2           #enabledWidgetComponent:Landroid/content/ComponentName;
    :cond_0
    sget-object v4, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    move-object v2, v4

    goto :goto_0

    .line 92
    .restart local v2       #enabledWidgetComponent:Landroid/content/ComponentName;
    :cond_1
    sget-object v4, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.google.android.googleapps.GOOGLE_MAIL_SWITCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const-string v3, "useGoogleMail"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 55
    .local v2, useGoogleMail:Z
    invoke-direct {p0, v2}, Lcom/google/android/gm/GoogleMailSwitchService;->enableGoogleMailActivities(Z)V

    .line 82
    .end local v2           #useGoogleMail:Z
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_country"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, countryCode:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 61
    const-string v3, "Gmail"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received country code of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->deviceMissingMobileData()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-direct {p0, v6}, Lcom/google/android/gm/GoogleMailSwitchService;->enableGoogleMailActivities(Z)V

    .line 73
    :cond_3
    invoke-static {p0}, Lcom/google/android/gm/GservicesChangedReceiver;->disableReceiver(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    .end local v1           #countryCode:Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->validateWidgetProvider()V

    .line 80
    invoke-static {p0}, Lcom/google/android/gm/GoogleMailDeviceStartupReceiver;->disableReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method
