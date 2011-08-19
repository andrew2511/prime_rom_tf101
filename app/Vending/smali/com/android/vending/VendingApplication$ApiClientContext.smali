.class public Lcom/android/vending/VendingApplication$ApiClientContext;
.super Ljava/lang/Object;
.source "VendingApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/VendingApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiClientContext"
.end annotation


# instance fields
.field private mAid:Ljava/lang/String;

.field private final mAuthenticator:Lcom/android/vending/Authenticator;

.field private mCookieStore:Lorg/apache/http/client/CookieStore;

.field private mLoggingId:Ljava/lang/String;

.field private mServerVersion:I

.field private mVersionCode:I

.field final synthetic this$0:Lcom/android/vending/VendingApplication;


# direct methods
.method public constructor <init>(Lcom/android/vending/VendingApplication;Lcom/android/vending/Authenticator;)V
    .locals 1
    .parameter
    .parameter "authenticator"

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAuthenticator:Lcom/android/vending/Authenticator;

    .line 729
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    .line 731
    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAid:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 816
    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->ANDROID_ID:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 821
    .local v0, aid:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 822
    const-string v2, "0"

    .line 828
    .end local v0           #aid:J
    :goto_0
    return-object v2

    .line 826
    .restart local v0       #aid:J
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAid:Ljava/lang/String;

    .line 828
    .end local v0           #aid:J
    :cond_1
    iget-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v0}, Lcom/android/vending/VendingApplication;->access$100(Lcom/android/vending/VendingApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/compat/SettingsHelper;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v0}, Lcom/android/vending/VendingApplication;->access$100(Lcom/android/vending/VendingApplication;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mCookieStore:Lorg/apache/http/client/CookieStore;

    return-object v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mLoggingId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v0}, Lcom/android/vending/VendingApplication;->access$100(Lcom/android/vending/VendingApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/compat/SettingsHelper;->getLoggingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mLoggingId:Ljava/lang/String;

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mLoggingId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestProperties(ZLjava/lang/String;)Lcom/android/vending/model/RequestProperties;
    .locals 18
    .parameter "useSecureAuthToken"
    .parameter "account"

    .prologue
    .line 772
    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    move-object/from16 v17, v3

    .line 775
    .local v17, authService:Lcom/android/vending/BaseActivity$AuthService;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAuthenticator:Lcom/android/vending/Authenticator;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/vending/Authenticator;->getAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, authToken:Ljava/lang/String;
    new-instance v3, Lcom/android/vending/model/RequestProperties;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getUserLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getAid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getVersionCode()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/vending/VendingApplication;->access$200(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/vending/VendingApplication;->access$200(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/vending/VendingApplication;->access$200(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/vending/VendingApplication;->access$200(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getSdkVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getClientId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getLoggingId()Ljava/lang/String;

    move-result-object v16

    move/from16 v5, p1

    invoke-direct/range {v3 .. v16}, Lcom/android/vending/model/RequestProperties;-><init>(Ljava/lang/String;ZLjava/util/Locale;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 772
    .end local v4           #authToken:Ljava/lang/String;
    .end local v17           #authService:Lcom/android/vending/BaseActivity$AuthService;
    :cond_0
    sget-object v3, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    move-object/from16 v17, v3

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersion()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    if-nez v0, :cond_0

    .line 762
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->SERVER_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    .line 764
    :cond_0
    iget v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    return v0
.end method

.method public getUserLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 842
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 5

    .prologue
    .line 850
    iget v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mVersionCode:I

    if-nez v3, :cond_0

    .line 851
    iget-object v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 854
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 855
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mVersionCode:I

    return v3

    .line 856
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 858
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Could not get application mVersion from Package Manager."

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setServerVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 749
    iget v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    if-eq p1, v0, :cond_0

    .line 750
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->SERVER_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 752
    :cond_0
    iput p1, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    .line 753
    return-void
.end method
