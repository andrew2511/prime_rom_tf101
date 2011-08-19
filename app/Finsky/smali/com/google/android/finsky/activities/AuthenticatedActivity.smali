.class public abstract Lcom/google/android/finsky/activities/AuthenticatedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AuthenticatedActivity.java"


# instance fields
.field private final mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTosJustAccepted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mTosJustAccepted:Z

    .line 640
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    .line 652
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->displayTos(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->fireOnReadyRunnable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->restart()V

    return-void
.end method

.method private static convertToStringArray([Landroid/accounts/Account;)[Ljava/lang/String;
    .locals 3
    .parameter "accounts"

    .prologue
    .line 280
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/String;

    .line 281
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 282
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v0
.end method

.method private static createApiContext(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/finsky/api/DfeApiContext;
    .locals 14
    .parameter "context"
    .parameter "account"

    .prologue
    .line 291
    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator;

    sget-object v0, Lcom/google/android/finsky/config/G;->authTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 295
    .local v2, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 296
    .local v12, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 297
    .local v11, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 298
    .local v4, appVersionName:Ljava/lang/String;
    iget v5, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 299
    .local v5, appVersionCode:I
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 301
    .local v13, telephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v0, Lcom/google/android/finsky/api/DfeApiContext;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/google/android/finsky/config/G;->clientId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/config/G;->loggingId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/api/DfeApiContext;-><init>(Landroid/content/Context;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/android/volley/Cache;Ljava/lang/String;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 305
    .end local v4           #appVersionName:Ljava/lang/String;
    .end local v5           #appVersionCode:I
    .end local v11           #pi:Landroid/content/pm/PackageInfo;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v13           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 306
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t find our own package"

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static createVendingApiContext(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/vending/remoting/api/VendingApiContext;
    .locals 14
    .parameter "context"
    .parameter "account"

    .prologue
    .line 314
    new-instance v0, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 319
    .local v0, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 320
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 321
    .local v0, pi:Landroid/content/pm/PackageInfo;
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 322
    .local v5, appVersionCode:I
    const-string v0, "phone"

    .end local v0           #pi:Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 324
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v0, Lcom/google/android/vending/remoting/api/VendingApiContext;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v2, Lcom/google/android/finsky/config/G;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/config/G;->clientId:Lcom/google/android/finsky/config/GservicesValue;

    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/config/G;->loggingId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v13}, Lcom/google/android/vending/remoting/api/VendingApiContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Locale;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 330
    .end local v5           #appVersionCode:I
    :catch_0
    move-exception p0

    .line 331
    .local p0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1
    const-string v0, "Can\'t find our own package"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private determineAccount()Ljava/lang/String;
    .locals 7

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "authAccount"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, accountNameFromIntent:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 349
    invoke-static {v2, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 353
    .local v1, accountFromIntent:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 354
    const-string v4, "This app was called with an intent that specified the account %s, which is not a valid account on this device"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 358
    :cond_0
    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 379
    .end local v1           #accountFromIntent:Landroid/accounts/Account;
    :goto_0
    return-object v4

    .line 362
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, currentAccount:Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 366
    goto :goto_0

    .line 372
    :cond_2
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 373
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_3

    .line 375
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 379
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private displayTos(Ljava/lang/String;)Z
    .locals 3
    .parameter "tosContent"

    .prologue
    .line 390
    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, account:Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/google/android/finsky/activities/TosActivity;->requiresAcceptance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-static {p0, v0, p1}, Lcom/google/android/finsky/activities/TosActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 393
    .local v1, showTos:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 394
    const/16 v2, 0x14

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 395
    const/4 v2, 0x1

    .line 397
    .end local v1           #showTos:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fireOnReadyRunnable(Z)V
    .locals 1
    .parameter "shouldHandleIntent"

    .prologue
    .line 405
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    .line 412
    .local v0, onReadyRunnable:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 413
    return-void
.end method

.method private static getIndexOfAccount([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "accountNames"
    .parameter "accountToFind"

    .prologue
    .line 424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 425
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 429
    :goto_1
    return v1

    .line 424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isAccountSwitchNeeded(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountName"

    .prologue
    .line 465
    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestToc(Z)V
    .locals 3
    .parameter "shouldHandleIntent"

    .prologue
    .line 475
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->getChannels(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 495
    return-void
.end method

.method private restart()V
    .locals 6

    .prologue
    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 686
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "recreate"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 687
    .local v3, recreate:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 697
    .end local v3           #recreate:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 692
    .local v2, nsme:Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 693
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 694
    .end local v2           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 695
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not restart activity after account setup."

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private setupAccountCreationDialog(Z)Landroid/app/Dialog;
    .locals 6
    .parameter "shouldHandleIntent"

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 503
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 504
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b002a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b002b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 508
    .local v0, alert:Landroid/app/AlertDialog;
    return-object v0
.end method

.method private setupAccountDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 518
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->convertToStringArray([Landroid/accounts/Account;)[Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, accountNames:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIndexOfAccount([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 523
    .local v4, currentAccountIndex:I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b001a

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 525
    new-instance v5, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[Landroid/accounts/Account;)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    new-instance v5, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 549
    .local v2, alert:Landroid/app/AlertDialog;
    return-object v2
.end method

.method public static setupAccountFromPreferences(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 114
    const-string v2, "finsky"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0, v1}, Lcom/google/android/finsky/api/AccountHandler;->getAccountFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/accounts/Account;

    move-result-object v0

    .line 118
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    move v2, v3

    .line 127
    :goto_0
    return v2

    .line 122
    :cond_0
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/finsky/api/AccountHandler;->setCurrentAccount(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 125
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createApiContext(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v3

    invoke-static {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createVendingApiContext(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/FinskyApp;->setApiContexts(Lcom/google/android/finsky/api/DfeApiContext;Lcom/google/android/vending/remoting/api/VendingApiContext;)V

    .line 127
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private switchAccount(Ljava/lang/String;)V
    .locals 3
    .parameter "accountName"

    .prologue
    .line 616
    invoke-static {p1, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 620
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 621
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error, could not switch to %s because the accountcould not be found on the device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->restart(Landroid/accounts/Account;)V

    .line 626
    return-void
.end method


# virtual methods
.method protected authenticateOnNewIntent(Z)V
    .locals 0
    .parameter "shouldHandleIntent"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupSessionForCorrectUser(Z)V

    .line 147
    return-void
.end method

.method protected getTosJustAccepted()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mTosJustAccepted:Z

    return v0
.end method

.method protected abstract handleAuthenticationError(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
.end method

.method public hasDiffVersionCode()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 439
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v0

    .line 442
    .local v0, currentVersionCode:I
    const-string v3, "finsky"

    invoke-virtual {p0, v3, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 443
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "last_version_code"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 446
    .local v1, lastVersionCode:I
    if-eq v1, v0, :cond_0

    .line 449
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_version_code"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 452
    const/4 v3, 0x1

    .line 454
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method protected isExtraInitializationNeeded()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 154
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 155
    if-nez p2, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setTosJustAccepted(Z)V

    goto :goto_0
.end method

.method protected abstract onApisChanged()V
.end method

.method protected abstract onCleanup()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountFromPreferences(Landroid/content/Context;)Z

    move-result v0

    .line 83
    .local v0, dfeChanged:Z
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onApisChanged()V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->hasDiffVersionCode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Diff version code, clear cache"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_2
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Same version code as before"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupSessionForCorrectUser(Z)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 185
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountCreationDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setIntent(Landroid/content/Intent;)V

    .line 218
    const/4 v0, 0x1

    .line 224
    .local v0, shouldHandleIntent:Z
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 230
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->authenticateOnNewIntent(Z)V

    .line 231
    return-void
.end method

.method protected abstract onReady(Z)V
.end method

.method protected abstract onTocLoaded(Lcom/google/android/finsky/api/model/DfeToc;)V
.end method

.method protected restart(Landroid/accounts/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCleanup()V

    .line 262
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 264
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createApiContext(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createVendingApiContext(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/FinskyApp;->setApiContexts(Lcom/google/android/finsky/api/DfeApiContext;Lcom/google/android/vending/remoting/api/VendingApiContext;)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onApisChanged()V

    .line 268
    const-string v1, "finsky"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    .local v0, settings:Landroid/content/SharedPreferences;
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/finsky/api/AccountHandler;->setCurrentAccount(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 270
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupSessionForCorrectUser(Z)V

    .line 271
    return-void
.end method

.method protected setTosJustAccepted(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mTosJustAccepted:Z

    .line 206
    return-void
.end method

.method protected setupSessionForCorrectUser(Z)V
    .locals 3
    .parameter "shouldHandleIntent"

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, accountName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 569
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showDialog(I)V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 578
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 584
    .local v1, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-nez v1, :cond_3

    .line 586
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->requestToc(Z)V

    goto :goto_0

    .line 593
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isExtraInitializationNeeded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeToc;->getTosContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->displayTos(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onTocLoaded(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 604
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->fireOnReadyRunnable(Z)V

    goto :goto_0
.end method
