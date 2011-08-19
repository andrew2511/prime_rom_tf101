.class public Lcom/google/android/gsf/login/BaseActivity;
.super Lcom/google/android/gsf/login/NetworkMonitoringActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BaseActivity$WebViewDialog;,
        Lcom/google/android/gsf/login/BaseActivity$LinkSpan;,
        Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;
    }
.end annotation


# static fields
.field protected static final STATIC_LOGV:Z

.field static isNewAccount:Z

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
.field protected final LOCAL_LOGV:Z

.field private mAgreementView:Landroid/app/AlertDialog;

.field protected mAllowBackHardKey:Z

.field protected mBackButtonClickListener:Landroid/view/View$OnClickListener;

.field private mClearUserData:Z

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsXLargeScreen:Z

.field private mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

.field private mPrimaryButton:Landroid/view/View;

.field private mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mTitleArea:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/login/BaseActivity;->STATIC_LOGV:Z

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/login/BaseActivity;->isNewAccount:Z

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;-><init>()V

    .line 82
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->LOCAL_LOGV:Z

    .line 347
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mClearUserData:Z

    .line 456
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$3;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mBackButtonClickListener:Landroid/view/View$OnClickListener;

    .line 489
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$4;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    .line 507
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$5;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 775
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/BaseActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mPrimaryButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/BaseActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/login/BaseActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static getFallbackTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string v0, "file:///android_asset/html/en_us/google-tos.html"

    return-object v0
.end method

.method public static isUsernameValid(Ljava/lang/String;)Z
    .locals 3
    .parameter "username"

    .prologue
    .line 854
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 855
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private maybeHideTitleArea()V
    .locals 2

    .prologue
    .line 713
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitleArea:Landroid/view/View;

    .line 714
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isFirstRun()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitleArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitleArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 717
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 749
    return-void
.end method

.method protected allowSkip()Z
    .locals 3

    .prologue
    .line 704
    sget-object v1, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "allowSkip"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 705
    .local v0, tmp:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #tmp:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0       #tmp:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public appendGmailHost(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "loginName"

    .prologue
    .line 844
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->getGmailHost(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected backupExists()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1035
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.backup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1036
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.backup.BackupEnabler"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1037
    .local v0, bi:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 1041
    .end local v0           #bi:Landroid/content/pm/ResolveInfo;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .restart local v0       #bi:Landroid/content/pm/ResolveInfo;
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v3, v6

    .line 1037
    goto :goto_0

    .line 1038
    .end local v0           #bi:Landroid/content/pm/ResolveInfo;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1039
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-boolean v3, p0, Lcom/google/android/gsf/login/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "GoogleLoginService"

    const-string v4, "Could not find Backup package: com.google.android.backup"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v6

    .line 1041
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 739
    return-void
.end method

.method protected clearIntentUnsafeUserData()V
    .locals 2

    .prologue
    .line 972
    sget-object v0, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "topActivitiy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_ACCESS_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_ACCESS_TOKEN_SECRET:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 550
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move v0, v5

    .line 551
    .local v0, isBackKey:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_1

    move v2, v5

    .line 552
    .local v2, isMenuKey:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    move v1, v5

    .line 554
    .local v1, isCallKey:Z
    :goto_2
    if-eqz v0, :cond_3

    .line 556
    iget-boolean v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    if-eqz v3, :cond_5

    .line 557
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 564
    :goto_3
    return v3

    .end local v0           #isBackKey:Z
    .end local v1           #isCallKey:Z
    .end local v2           #isMenuKey:Z
    :cond_0
    move v0, v6

    .line 550
    goto :goto_0

    .restart local v0       #isBackKey:Z
    :cond_1
    move v2, v6

    .line 551
    goto :goto_1

    .restart local v2       #isMenuKey:Z
    :cond_2
    move v1, v6

    .line 552
    goto :goto_2

    .line 559
    .restart local v1       #isCallKey:Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isFirstRun()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    .line 560
    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v5

    .line 564
    goto :goto_3
.end method

.method protected enableBackup(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1070
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.backup.BackupEnabler"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v0, bI:Landroid/content/Intent;
    const-string v2, "BACKUP_ENABLE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1073
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p1

    .line 1077
    :goto_0
    return v2

    .line 1075
    :catch_0
    move-exception v1

    .line 1076
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not enable backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getActivityContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDeviceCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_country"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGmailHost(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .parameter "res"

    .prologue
    .line 820
    const v2, 0x7f080012

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isWifiOnlyBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_country"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, countryCode:Ljava/lang/String;
    const-string v2, "de"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    const v2, 0x7f080013

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 829
    .end local v0           #countryCode:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 831
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Couldn\'t find gmail_host_name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 833
    :cond_1
    return-object v1
.end method

.method protected getStringWithDeviceName(I)Ljava/lang/String;
    .locals 5
    .parameter "resid"

    .prologue
    .line 416
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 419
    .local v0, deviceDescription:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 422
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 423
    .local v1, msg:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isFirstGoogleAccount(Ljava/lang/String;)Z
    .locals 10
    .parameter "username"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1046
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "@youtube.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    .line 1058
    :goto_0
    return v6

    .line 1049
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1051
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 1052
    .local v3, count:I
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 1053
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v7, "@youtube.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1052
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1056
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1058
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    if-ne v3, v9, :cond_3

    move v6, v9

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_0
.end method

.method protected isFirstRun()Z
    .locals 3

    .prologue
    .line 699
    sget-object v1, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v2, "firstRun"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 700
    .local v0, tmp:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #tmp:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0       #tmp:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isFullScreen()Z
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method protected isWifiOnlyBuild()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1095
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1096
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1097
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1098
    const-string v1, "wifi-only"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.carrier"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1100
    :goto_0
    return v0

    .line 1099
    :catch_0
    move-exception v0

    move v0, v6

    .line 1100
    goto :goto_0
.end method

.method protected isXLargeScreen()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mIsXLargeScreen:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x7

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 620
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->onCreate(Landroid/os/Bundle;)V

    .line 622
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v3, 0xf

    .line 624
    .local v2, screenSize:I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 625
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BaseActivity;->setRequestedOrientation(I)V

    .line 634
    :cond_0
    :goto_0
    if-lt v2, v4, :cond_8

    move v3, v7

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mIsXLargeScreen:Z

    .line 637
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 639
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 640
    .local v0, launchIntent:Landroid/content/Intent;
    sget-object v3, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v4, "firstRun"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 641
    sget-object v3, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v4, "firstRun"

    const-string v5, "firstRun"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_1
    sget-object v3, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v4, "allowSkip"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 646
    sget-object v3, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v4, "allowSkip"

    const-string v5, "allowSkip"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isXLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 666
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isFirstRun()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v7

    :goto_3
    iput-boolean v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 669
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 670
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 674
    :cond_4
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 675
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isFirstRun()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 679
    iget-object v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 681
    :cond_5
    iget-object v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-super {p0, v3}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->setContentView(Landroid/view/View;)V

    .line 683
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isXLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 684
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f03000e

    invoke-virtual {v3, v8, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 686
    :cond_6
    return-void

    .line 626
    .end local v0           #launchIntent:Landroid/content/Intent;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_7
    if-ne v2, v4, :cond_0

    .line 627
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/BaseActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_8
    move v3, v6

    .line 634
    goto/16 :goto_1

    .line 652
    .restart local v0       #launchIntent:Landroid/content/Intent;
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->useActionBars()Z

    move-result v3

    if-nez v3, :cond_3

    .line 653
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isFirstRun()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 656
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/BaseActivity;->requestWindowFeature(I)Z

    goto :goto_2

    .line 658
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->shouldShowCustomTitle()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_b
    move v3, v6

    .line 666
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 980
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 981
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 985
    :cond_0
    const v1, 0x7f080028

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 986
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 690
    invoke-super {p0}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->onDestroy()V

    .line 691
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mClearUserData:Z

    if-eqz v0, :cond_0

    .line 692
    sget-object v0, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mClearUserData:Z

    .line 695
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 1006
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1019
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 1009
    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/login/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1012
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t launch settings, intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/login/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1016
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->signIntoBrowser()V

    goto :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 993
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 994
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    :goto_0
    return v5

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move v0, v5

    .line 999
    .local v0, allowWirelessSettings:Z
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #allowWirelessSettings:Z
    :cond_1
    move v0, v4

    .line 997
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 594
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 595
    const-string v2, "currentFocus"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 596
    .local v0, currentId:I
    if-eq v0, v3, :cond_0

    .line 597
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 598
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 600
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 604
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 605
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 606
    .local v0, current:Landroid/view/View;
    const-string v1, "currentFocus"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    return-void

    .line 606
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method protected onSetupComplete(Z)V
    .locals 3
    .parameter

    .prologue
    .line 943
    const v1, 0x320cf

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 947
    sget-object v0, Lcom/google/android/gsf/login/BackendStub$Key;->SHARED_PREFS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackendStub$Key;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 949
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 950
    invoke-static {v0}, Lcom/google/android/gsf/login/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 952
    sget-object v0, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "topActivitiy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 953
    if-nez v0, :cond_0

    .line 958
    const-class v0, Lcom/google/android/gsf/login/AccountIntroActivity;

    .line 961
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 962
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 963
    const-string v0, "completed"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 964
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->clearIntentUnsafeUserData()V

    .line 965
    const-string v0, "mUserData"

    sget-object v2, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mClearUserData:Z

    .line 968
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 969
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 744
    return-void
.end method

.method protected overrideAllowBackHardkey()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 470
    return-void
.end method

.method protected setBackButton(Landroid/view/View;)V
    .locals 1
    .parameter "backButton"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mBackButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 479
    :cond_0
    return-void
.end method

.method protected setBackupAccount(Landroid/accounts/Account;)Z
    .locals 5
    .parameter "account"

    .prologue
    .line 1082
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.backup.SetBackupAccount"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "backupAccount"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1085
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    const/4 v2, 0x1

    .line 1089
    :goto_0
    return v2

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not enable backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 722
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 723
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 724
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 729
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;->maybeHideTitleArea()V

    .line 730
    return-void
.end method

.method protected setDefaultButton(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "primary"

    .prologue
    .line 534
    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity;->mPrimaryButton:Landroid/view/View;

    .line 535
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 536
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 540
    :goto_0
    return-void

    .line 538
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected shouldShowCustomTitle()Z
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x1

    return v0
.end method

.method protected showAgreement(Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 921
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$WebViewDialog;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/login/BaseActivity$WebViewDialog;-><init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    .line 922
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 923
    return-void
.end method

.method protected signIntoBrowser()V
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1024
    const-string v1, "addPreExistingAccount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1025
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 1026
    return-void
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public updateWidgetState()V
    .locals 0

    .prologue
    .line 757
    return-void
.end method

.method protected useActionBars()Z
    .locals 2

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method protected validateUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"

    .prologue
    .line 875
    invoke-static {p1}, Lcom/google/android/gsf/login/BaseActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 877
    :goto_0
    return-object v1

    .line 876
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gsf/login/BaseActivity;->appendGmailHost(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, newUsername:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gsf/login/BaseActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
