.class public Lcom/android/setupwizard/BaseActivity;
.super Lcom/android/setupwizard/NetworkMonitoringActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizard/BaseActivity$ProvisioningMode;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOGV:Z

.field private static mForceCdma:Z

.field protected static mUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWirelessSettingsIntent:Landroid/content/Intent;


# instance fields
.field private mAgreementView:Landroid/app/AlertDialog;

.field private mAllNetworkSetupSkipped:Z

.field protected mAllowBackHardKey:Z

.field private final mBackButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mBootstrapMode:Ljava/lang/Boolean;

.field private mEnableBypass:Z

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mIsFirstRun:Z

.field private mIsHomeActivity:Z

.field private mIsPessimisticMode:Z

.field private final mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

.field private mOtaspMode:I

.field private final mOtaspPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneServiceState:I

.field private mPrimaryButton:Landroid/view/View;

.field private mProvisioningMode:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

.field mScreenSize:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelephonyInterface:Lcom/android/internal/telephony/ITelephony;

.field private mTitleArea:Landroid/view/View;

.field private mTouchEventState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-string v0, "SetupWizard"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/setupwizard/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    .line 82
    const-string v0, "setupwizard.force_cdma"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/setupwizard/BaseActivity;->mForceCdma:Z

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/setupwizard/BaseActivity;->mUserData:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/setupwizard/NetworkMonitoringActivity;-><init>()V

    .line 240
    iput v1, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    .line 242
    iput-boolean v1, p0, Lcom/android/setupwizard/BaseActivity;->mIsHomeActivity:Z

    .line 243
    sget-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->OPTIONAL:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    .line 253
    iput-boolean v2, p0, Lcom/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    .line 267
    iput-boolean v1, p0, Lcom/android/setupwizard/BaseActivity;->mEnableBypass:Z

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mBootstrapMode:Ljava/lang/Boolean;

    .line 279
    iput v2, p0, Lcom/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    .line 282
    iput v1, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspMode:I

    .line 284
    new-instance v0, Lcom/android/setupwizard/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizard/BaseActivity$1;-><init>(Lcom/android/setupwizard/BaseActivity;)V

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 361
    new-instance v0, Lcom/android/setupwizard/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/android/setupwizard/BaseActivity$2;-><init>(Lcom/android/setupwizard/BaseActivity;)V

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mBackButtonClickListener:Landroid/view/View$OnClickListener;

    .line 394
    new-instance v0, Lcom/android/setupwizard/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/android/setupwizard/BaseActivity$3;-><init>(Lcom/android/setupwizard/BaseActivity;)V

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/setupwizard/BaseActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/setupwizard/BaseActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/setupwizard/BaseActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mPrimaryButton:Landroid/view/View;

    return-object v0
.end method

.method private allNetworkSetupSkipped()Z
    .locals 1

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    return v0
.end method

.method private doOtasp()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 930
    sget-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "SetupWizard"

    const-string v1, "doOtasp() E"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 942
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 944
    const-string v2, "otasp_result_code_pending_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 945
    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizard/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 951
    :goto_0
    sget-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "SetupWizard"

    const-string v1, "doOtasp() X RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_1
    const/4 v0, -0x1

    .line 957
    :goto_1
    return v0

    .line 947
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/setupwizard/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 948
    const-string v1, "firstRun"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 949
    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizard/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 954
    sget-boolean v1, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_3

    .line 955
    const-string v1, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOtasp() X RESULT_CANCELLED otasp, activity not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v4

    .line 957
    goto :goto_1
.end method

.method private maybeDoOtasp()V
    .locals 3

    .prologue
    const/16 v2, 0x2712

    .line 968
    sget-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "SetupWizard"

    const-string v1, "maybeDoOtasp() E"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isWifiOnlyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    const-string v0, "SetupWizard"

    const-string v1, "skipping activation for wifi-only build"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/setupwizard/BaseActivity;->onPageCompleted(II)V

    .line 986
    :goto_0
    return-void

    .line 974
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isPessimisticMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    const-string v0, "SetupWizard"

    const-string v1, "Be pessimistic. Do OTASP anyway."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->doOtasp()I

    goto :goto_0

    .line 977
    :cond_2
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->otaspStateIsKnown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->otaspIsNeeded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 979
    sget-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "SetupWizard"

    const-string v1, "Pretend OTASP has completed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/setupwizard/BaseActivity;->onPageCompleted(II)V

    goto :goto_0

    .line 984
    :cond_4
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->doOtasp()I

    goto :goto_0
.end method

.method private maybeStartAccountSetup()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1090
    sget-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "SetupWizard"

    const-string v1, "startAccountSetup()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->allNetworkSetupSkipped()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1093
    const/4 v0, 0x0

    .line 1099
    :goto_0
    return v0

    .line 1095
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.accounts.AccountIntro"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    const-string v1, "firstRun"

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isFirstRun()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    const-string v1, "allowSkip"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1098
    const/16 v1, 0x2717

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizard/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    .line 1099
    goto :goto_0
.end method

.method private maybeStartDateTimeSettings()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1060
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->timeDateConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isPessimisticMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    const-string v0, "SetupWizard"

    const-string v1, "Be pessimistic. Open DateTimeSettings anyway."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1073
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1074
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DateTimeSettingsSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v1, "extra_initial_auto_datetime_value"

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isNetworkConnected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1076
    const-string v1, "firstRun"

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isFirstRun()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1077
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizard/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    const/4 v0, 0x1

    .line 1082
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 1064
    goto :goto_0

    .line 1079
    :catch_0
    move-exception v0

    .line 1081
    const-string v0, "SetupWizard"

    const-string v1, "Can\'t find date/time settings: com.android.settings.DateTimeSettingsSetupWizard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1082
    goto :goto_0
.end method

.method private maybeStartWifiSettings()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 993
    sget-boolean v1, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    const-string v2, "mabyeStartWifiSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isPessimisticMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 996
    const-string v1, "SetupWizard"

    const-string v2, "Be pessimistic. Assume we don\'t have network connection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isLargerScreen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1005
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1006
    .local v0, launchWifi:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiSettingsForSetupWizardXL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "extra_prefs_landscape_lock"

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    :goto_1
    const-string v1, "firstRun"

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isFirstRun()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1020
    const/16 v1, 0x2714

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizard/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v3

    .line 1021
    .end local v0           #launchWifi:Landroid/content/Intent;
    :goto_2
    return v1

    .line 997
    :cond_2
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    sget-boolean v1, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_3

    const-string v1, "SetupWizard"

    const-string v2, "network already connected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1007
    .restart local v0       #launchWifi:Landroid/content/Intent;
    :cond_4
    const-string v1, "extra_prefs_portrait_lock"

    goto :goto_0

    .line 1010
    .end local v0           #launchWifi:Landroid/content/Intent;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .restart local v0       #launchWifi:Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/android/setupwizard/BaseActivity;->tryEnablingWifi(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1012
    const-string v1, "only_access_points"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1014
    :cond_6
    const-string v1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1015
    const-string v1, "extra_prefs_set_back_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    const-string v1, "extra_prefs_show_skip"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1017
    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private startLocationSharingActivity()V
    .locals 3

    .prologue
    .line 1047
    sget-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "SetupWizard"

    const-string v1, "startLocationSharingActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/setupwizard/LocationSharingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1049
    const-string v1, "allNetworkSetupSkipped"

    iget-boolean v2, p0, Lcom/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    const-string v1, "firstRun"

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isFirstRun()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1051
    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 1052
    return-void
.end method

.method private tryEnablingWifi(Z)Z
    .locals 8
    .parameter "turnOn"

    .prologue
    const/4 v7, 0x0

    .line 1030
    :try_start_0
    const-string v5, "wifi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1031
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 1032
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v2

    .line 1033
    .local v2, service:Landroid/net/wifi/IWifiManager;
    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v4

    .line 1034
    .local v4, wifiState:I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 1035
    .local v3, wifiOn:Z
    :goto_0
    if-eq p1, v3, :cond_0

    .line 1036
    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v5, p1

    .line 1043
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #service:Landroid/net/wifi/IWifiManager;
    .end local v3           #wifiOn:Z
    .end local v4           #wifiState:I
    :goto_1
    return v5

    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v2       #service:Landroid/net/wifi/IWifiManager;
    .restart local v4       #wifiState:I
    :cond_1
    move v3, v7

    .line 1034
    goto :goto_0

    .line 1040
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #service:Landroid/net/wifi/IWifiManager;
    .end local v4           #wifiState:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1041
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "SetupWizard"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    move v5, v7

    .line 1043
    goto :goto_1
.end method

.method private updateLastSetupShown()V
    .locals 5

    .prologue
    .line 726
    :try_start_0
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 728
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 729
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.SETUP_VERSION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, vers:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "last_setup_shown"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #vers:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected canActivate()Z
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected changeLanguage()V
    .locals 4

    .prologue
    .line 502
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 503
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.LocalePicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v1}, Lcom/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 507
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "SetupWizard"

    const-string v3, "Can\'t find locale settings: com.android.settings.LocalePicker"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected disableNotifications()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 465
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/setupwizard/BaseActivity;->mAllowBackHardKey:Z

    if-eqz v3, :cond_1

    move v0, v5

    .line 466
    .local v0, isBackKey:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_2

    move v2, v5

    .line 467
    .local v2, isMenuKey:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    move v1, v5

    .line 468
    .local v1, isCallKey:Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_4

    .line 470
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 482
    :goto_3
    return v3

    .end local v0           #isBackKey:Z
    .end local v1           #isCallKey:Z
    .end local v2           #isMenuKey:Z
    :cond_1
    move v0, v6

    .line 465
    goto :goto_0

    .restart local v0       #isBackKey:Z
    :cond_2
    move v2, v6

    .line 466
    goto :goto_1

    .restart local v2       #isMenuKey:Z
    :cond_3
    move v1, v6

    .line 467
    goto :goto_2

    .line 471
    .restart local v1       #isCallKey:Z
    :cond_4
    if-eqz v1, :cond_5

    .line 474
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 476
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->placeEmergencyCall()V

    :cond_5
    move v3, v5

    .line 482
    goto :goto_3

    .line 478
    :cond_6
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 426
    iget-boolean v8, p0, Lcom/android/setupwizard/BaseActivity;->mEnableBypass:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 429
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 430
    .local v6, y:F
    iget-object v8, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4040

    div-float v5, v8, v9

    .line 431
    .local v5, x_tolerance:F
    iget-object v8, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v8

    iget-object v9, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4040

    div-float v7, v8, v9

    .line 432
    .local v7, y_tolerance:F
    iget-object v8, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    cmpg-float v8, v8, v5

    if-gez v8, :cond_1

    const/4 v8, 0x1

    move v1, v8

    .line 433
    .local v1, left:Z
    :goto_0
    iget-object v8, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    cmpg-float v8, v8, v5

    if-gez v8, :cond_2

    const/4 v8, 0x1

    move v2, v8

    .line 434
    .local v2, right:Z
    :goto_1
    iget-object v8, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v6, v8

    cmpg-float v8, v8, v7

    if-gez v8, :cond_3

    const/4 v8, 0x1

    move v3, v8

    .line 435
    .local v3, top:Z
    :goto_2
    iget-object v8, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v6

    cmpg-float v8, v8, v7

    if-gez v8, :cond_4

    const/4 v8, 0x1

    move v0, v8

    .line 436
    .local v0, bottom:Z
    :goto_3
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 438
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    .line 448
    :goto_4
    iget v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    iget-boolean v8, p0, Lcom/android/setupwizard/BaseActivity;->mEnableBypass:Z

    if-eqz v8, :cond_0

    .line 449
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/setupwizard/BaseActivity;->setResult(I)V

    .line 450
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->enableNotifications()V

    .line 451
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/setupwizard/BaseActivity;->onSetupComplete(Z)V

    .line 454
    .end local v0           #bottom:Z
    .end local v1           #left:Z
    .end local v2           #right:Z
    .end local v3           #top:Z
    .end local v4           #x:F
    .end local v5           #x_tolerance:F
    .end local v6           #y:F
    .end local v7           #y_tolerance:F
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 432
    .restart local v4       #x:F
    .restart local v5       #x_tolerance:F
    .restart local v6       #y:F
    .restart local v7       #y_tolerance:F
    :cond_1
    const/4 v8, 0x0

    move v1, v8

    goto :goto_0

    .line 433
    .restart local v1       #left:Z
    :cond_2
    const/4 v8, 0x0

    move v2, v8

    goto :goto_1

    .line 434
    .restart local v2       #right:Z
    :cond_3
    const/4 v8, 0x0

    move v3, v8

    goto :goto_2

    .line 435
    .restart local v3       #top:Z
    :cond_4
    const/4 v8, 0x0

    move v0, v8

    goto :goto_3

    .line 439
    .restart local v0       #bottom:Z
    :cond_5
    iget v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 440
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    goto :goto_4

    .line 441
    :cond_6
    iget v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 442
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    goto :goto_4

    .line 443
    :cond_7
    iget v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 444
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    goto :goto_4

    .line 446
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/setupwizard/BaseActivity;->mTouchEventState:I

    goto :goto_4
.end method

.method protected enableNotifications()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 708
    :cond_0
    return-void
.end method

.method protected getActivityContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getProvisioningMode()Lcom/android/setupwizard/BaseActivity$ProvisioningMode;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    return-object v0
.end method

.method protected getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/android/setupwizard/BaseActivity;->mTelephonyInterface:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    .line 1110
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1111
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizard/BaseActivity;->mTelephonyInterface:Lcom/android/internal/telephony/ITelephony;

    .line 1113
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/setupwizard/BaseActivity;->mTelephonyInterface:Lcom/android/internal/telephony/ITelephony;

    return-object v1
.end method

.method protected isActivityVisible()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1139
    iget-object v1, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1140
    .local v0, activity:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected isFirstRun()Z
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mIsFirstRun:Z

    return v0
.end method

.method protected isHomeActivity()Z
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mIsHomeActivity:Z

    return v0
.end method

.method protected isLargerScreen()Z
    .locals 2

    .prologue
    .line 1153
    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mScreenSize:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNetworkConnected()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1164
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1166
    if-nez p0, :cond_0

    move v0, v1

    .line 1170
    :goto_0
    return v0

    .line 1169
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected isPessimisticMode()Z
    .locals 1

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mIsPessimisticMode:Z

    return v0
.end method

.method protected isWifiOnlyBuild()Z
    .locals 2

    .prologue
    .line 1211
    const-string v0, "wifi-only"

    const-string v1, "ro.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isXLargeScreen()Z
    .locals 2

    .prologue
    .line 1160
    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mScreenSize:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected maybeRegisterOtaspPhoneStateListener()V
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isWifiOnlyBuild()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    sget-boolean v1, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    const-string v2, "Register our PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 316
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_2

    .line 317
    iget-object v1, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 324
    .end local v0           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-void

    .line 321
    .restart local v0       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v1, "SetupWizard"

    const-string v2, "Cannot register OTASP listener as TelephonyManager is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected maybeUnregisterOtaspPhoneStateListener()V
    .locals 3

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isWifiOnlyBuild()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    sget-boolean v1, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    const-string v2, "Unregister our PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 332
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 336
    .end local v0           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 856
    const/16 v2, 0x2713

    if-ne p1, v2, :cond_1

    .line 858
    :try_start_0
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 859
    .local v1, telephonyInterface:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 861
    :cond_0
    const/4 p2, 0x0

    .line 870
    .end local v1           #telephonyInterface:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizard/BaseActivity;->onPageCompleted(II)V

    .line 871
    return-void

    .line 863
    .restart local v1       #telephonyInterface:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 p2, -0x1

    goto :goto_0

    .line 865
    .end local v1           #telephonyInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 866
    .local v0, e:Landroid/os/RemoteException;
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->onCreate(Landroid/os/Bundle;)V

    .line 532
    sget-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 533
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: LOCAL_LOGV="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isLoggable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SetupWizard"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const-string v0, "setupwizard.pessimistic"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mIsPessimisticMode:Z

    .line 540
    iget-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mIsPessimisticMode:Z

    if-eqz v0, :cond_1

    .line 541
    const-string v0, "SetupWizard"

    const-string v1, "In pessimistic mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/android/setupwizard/BaseActivity;->mScreenSize:I

    .line 547
    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mScreenSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 548
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->setRequestedOrientation(I)V

    .line 553
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_4

    .line 555
    const-string v1, "firstRun"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 556
    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/setupwizard/BaseActivity;->mIsFirstRun:Z

    .line 558
    :cond_3
    const-string v1, "allNetworkSetupSkipped"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 559
    const-string v1, "allNetworkSetupSkipped"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    .line 565
    :cond_4
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 566
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/setupwizard/SetupWizardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 568
    if-eqz v0, :cond_5

    if-ne v0, v5, :cond_c

    :cond_5
    move v0, v5

    :goto_1
    iput-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mIsHomeActivity:Z

    .line 572
    const-string v0, "ro.setupwizard.mode"

    sget-object v1, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->OPTIONAL:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    invoke-virtual {v1}, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    :try_start_0
    invoke-static {v0}, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->valueOf(Ljava/lang/String;)Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_2
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isLargerScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 596
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v5

    :goto_4
    iput-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mAllowBackHardKey:Z

    .line 599
    const-string v0, "ro.debuggable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ro.setupwizard.enable_bypass"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_7
    move v0, v5

    :goto_5
    iput-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mEnableBypass:Z

    .line 606
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mEnableBypass:Z

    if-eqz v0, :cond_8

    .line 607
    sget-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->DISABLED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    .line 610
    :cond_8
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 611
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_9

    .line 612
    const-string v0, "SetupWizard"

    const-string v1, "StatusBarManager isn\'t available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_9
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 619
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 620
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 623
    :cond_a
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Lcom/android/setupwizard/NetworkMonitoringActivity;->setContentView(Landroid/view/View;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v6, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 626
    return-void

    .line 549
    :cond_b
    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mScreenSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 550
    invoke-virtual {p0, v6}, Lcom/android/setupwizard/BaseActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_c
    move v0, v4

    .line 568
    goto/16 :goto_1

    .line 577
    :catch_0
    move-exception v0

    .line 579
    sget-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->OPTIONAL:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    goto :goto_2

    .line 584
    :cond_d
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 587
    invoke-virtual {p0, v5}, Lcom/android/setupwizard/BaseActivity;->requestWindowFeature(I)Z

    goto :goto_3

    .line 589
    :cond_e
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->shouldShowCustomTitle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 591
    invoke-virtual {p0, v6}, Lcom/android/setupwizard/BaseActivity;->requestWindowFeature(I)Z

    goto/16 :goto_3

    :cond_f
    move v0, v4

    .line 596
    goto/16 :goto_4

    :cond_10
    move v0, v4

    .line 599
    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 823
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 824
    const v1, 0x7f0a0011

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 825
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 826
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 840
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 850
    :goto_0
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 843
    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/android/setupwizard/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 846
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t launch settings, intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/setupwizard/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onOtaspChanged()V
    .locals 3

    .prologue
    .line 303
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseActivity#onOtaspChanged, ignore mOtaspMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method protected onPageCompleted(II)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 876
    sget-boolean v0, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 877
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compeleted setup wizard page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    if-nez p2, :cond_2

    .line 926
    :cond_1
    :goto_0
    return-void

    .line 887
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 889
    :pswitch_0
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->maybeDoOtasp()V

    goto :goto_0

    .line 893
    :pswitch_1
    if-eq p2, v3, :cond_3

    .line 894
    iput-boolean v4, p0, Lcom/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    .line 898
    :cond_3
    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    .line 899
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->maybeStartWifiSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    :cond_4
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->startLocationSharingActivity()V

    goto :goto_0

    .line 906
    :pswitch_2
    if-eq p2, v3, :cond_5

    .line 907
    iput-boolean v4, p0, Lcom/android/setupwizard/BaseActivity;->mAllNetworkSetupSkipped:Z

    .line 909
    :cond_5
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->startLocationSharingActivity()V

    goto :goto_0

    .line 913
    :pswitch_3
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->maybeStartDateTimeSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 914
    const/16 v0, 0x2716

    invoke-virtual {p0, v0, v3}, Lcom/android/setupwizard/BaseActivity;->onPageCompleted(II)V

    goto :goto_0

    .line 918
    :pswitch_4
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->maybeStartAccountSetup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    const/16 v0, 0x2717

    invoke-virtual {p0, v0, v3}, Lcom/android/setupwizard/BaseActivity;->onPageCompleted(II)V

    goto :goto_0

    .line 923
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/android/setupwizard/BaseActivity;->onSetupComplete(Z)V

    goto :goto_0

    .line 887
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 635
    invoke-super {p0}, Lcom/android/setupwizard/NetworkMonitoringActivity;->onPause()V

    .line 636
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 831
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 832
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/setupwizard/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move v0, v5

    .line 834
    .local v0, allowWirelessSettings:Z
    :goto_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 835
    return v5

    .end local v0           #allowWirelessSettings:Z
    :cond_0
    move v0, v4

    .line 832
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 513
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 514
    const-string v2, "currentFocus"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 515
    .local v0, currentId:I
    if-eq v0, v3, :cond_0

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 517
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 519
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 630
    invoke-super {p0}, Lcom/android/setupwizard/NetworkMonitoringActivity;->onResume()V

    .line 631
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 523
    invoke-super {p0, p1}, Lcom/android/setupwizard/NetworkMonitoringActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 525
    .local v0, current:Landroid/view/View;
    const-string v1, "currentFocus"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    return-void

    .line 525
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method protected onServiceStateChanged()V
    .locals 3

    .prologue
    .line 298
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseActivity#onServiceStateChanged, ignore mPhoneServiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/setupwizard/BaseActivity;->mPhoneServiceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method protected onSetupComplete(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x1020

    const/4 v3, 0x1

    .line 746
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->enableNotifications()V

    .line 761
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 764
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;->updateLastSetupShown()V

    .line 769
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    const-string v0, "SetupWizard"

    const-string v1, "System thinks we\'re the home activity. Removing SetupWizard..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 772
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/setupwizard/SetupWizardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 773
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 777
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 812
    :goto_0
    sget-boolean v1, Lcom/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    const-string v2, "*** SetupWizard completed ***"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    if-eqz v0, :cond_2

    .line 815
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 819
    :goto_1
    return-void

    .line 801
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Setup completion notification is sent when SetupWizard isn\'t treated as home activity."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 809
    goto :goto_0

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->finish()V

    goto :goto_1
.end method

.method protected otaspIsNeeded()Z
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected otaspStateIsKnown()Z
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/setupwizard/BaseActivity;->mOtaspMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected overrideAllowBackHardkey()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizard/BaseActivity;->mAllowBackHardKey:Z

    .line 375
    return-void
.end method

.method protected placeEmergencyCall()V
    .locals 4

    .prologue
    .line 490
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v1}, Lcom/android/setupwizard/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 496
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "SetupWizard"

    const-string v3, "Can\'t find the emergency dialer: com.android.phone.EmergencyDialer.DIAL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected provisioningDisabled()Z
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    sget-object v1, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->DISABLED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mProvisioningMode:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    sget-object v1, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->EMULATOR:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAgreementDialog(Lcom/android/setupwizard/AgreementDialog;)V
    .locals 1
    .parameter "agreementDialog"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/setupwizard/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    .line 715
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 718
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 641
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 642
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/setupwizard/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 643
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 649
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mTitleArea:Landroid/view/View;

    .line 650
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mTitleArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mTitleArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    :cond_0
    return-void
.end method

.method protected final setDefaultButton(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "primary"

    .prologue
    .line 415
    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/setupwizard/BaseActivity;->mPrimaryButton:Landroid/view/View;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    return-void
.end method

.method protected shouldShowCustomTitle()Z
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x1

    return v0
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method
