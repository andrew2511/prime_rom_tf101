.class Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "GoogleLoginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GoogleLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountAuthenticatorImpl"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    .line 502
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 503
    iput-object p2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    .line 504
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 505
    return-void
.end method

.method private checkPermission(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->hasPermission(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 737
    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 740
    const-string v1, "uid"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 748
    const-string v1, "callerExtras"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 750
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 751
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v0, v1

    .line 754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsFeature([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "featureList"
    .parameter "feature"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 807
    if-nez p1, :cond_0

    move v4, v5

    .line 815
    :goto_0
    return v4

    .line 808
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 809
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 810
    if-nez p2, :cond_2

    move v4, v6

    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_0

    .line 808
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #s:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 815
    goto :goto_0
.end method

.method private isCacheable(Ljava/lang/String;)Z
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 604
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeRefreshServices(Landroid/accounts/Account;Z)Z
    .locals 13
    .parameter "account"
    .parameter "hasFeatures"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-wide v0, v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mServicesRefreshIntervalS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 573
    :goto_0
    return v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "servicesUpdateMs"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, accountServicesTS:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 533
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 534
    .local v7, lastServicesUpdateS:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 535
    .local v9, now:J
    sub-long v11, v9, v7

    .line 536
    .local v11, secSinceUpdate:J
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-lez v0, :cond_2

    .line 537
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-wide v0, v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mServicesRefreshIntervalS:J

    cmp-long v0, v11, v0

    if-gez v0, :cond_1

    .line 538
    const/4 v0, 0x0

    goto :goto_0

    .line 542
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-wide v0, v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mHasFeatureServicesRefreshIntervalS:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v11, v0

    if-gez v0, :cond_2

    .line 544
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    .end local v7           #lastServicesUpdateS:J
    .end local v9           #now:J
    .end local v11           #secSinceUpdate:J
    :catch_0
    move-exception v0

    .line 555
    :cond_2
    new-instance v2, Lcom/google/android/gsf/LoginData;

    invoke-direct {v2}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 556
    .local v2, loginData:Lcom/google/android/gsf/LoginData;
    const-string v0, "gaia"

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 557
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$000(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v0

    iput v0, v2, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 559
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$100(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 561
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->fixOldOAuthToken(Lcom/google/android/gsf/LoginData;)V

    .line 562
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "sha1hash"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, hash:Ljava/lang/String;
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthtoken(Landroid/accounts/Account;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 568
    sget-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$1;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    iget-object v1, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 573
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 570
    :pswitch_0
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onlineConfirmPassword(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 7
    .parameter "account"
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 515
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 516
    .local v6, username:Ljava/lang/String;
    new-instance v2, Lcom/google/android/gsf/LoginData;

    invoke-direct {v2}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 517
    .local v2, loginData:Lcom/google/android/gsf/LoginData;
    iput-object v6, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 518
    iput-object p2, v2, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 519
    const-string v0, "SID"

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthtoken(Landroid/accounts/Account;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 521
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 823
    if-eqz p5, :cond_1

    const-string v1, "password"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 824
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 826
    const-string v2, "username"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 827
    new-instance v2, Lcom/google/android/gsf/LoginData;

    invoke-direct {v2}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 828
    iput-object v3, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 829
    iput-object v1, v2, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 830
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->tryNewAccountInternal(Landroid/content/Context;Lcom/google/android/gsf/LoginData;)V

    .line 831
    iget-object v1, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v3, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-ne v1, v3, :cond_0

    .line 832
    iput-object p3, v2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 833
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthtoken(Landroid/accounts/Account;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 835
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 836
    iget-object v1, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v3, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-ne v1, v3, :cond_3

    .line 837
    const-string v1, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new account flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/google/android/gsf/LoginData;->mFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v2, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveNewAccountInternal(Landroid/accounts/AccountManager;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 840
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 842
    const-string v1, "errorMessage"

    const-string v2, "account already present"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :goto_1
    return-object v0

    :cond_1
    move-object v1, v0

    .line 823
    goto :goto_0

    .line 846
    :cond_2
    const-string v1, "authAccount"

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v1, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 850
    :cond_3
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 858
    :cond_4
    if-eqz p4, :cond_d

    .line 859
    array-length v0, p4

    move v1, v5

    move v2, v5

    :goto_2
    if-ge v1, v0, :cond_9

    aget-object v3, p4, v1

    .line 860
    const-string v4, "hosted_or_google"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 861
    or-int/lit8 v2, v2, 0x1

    .line 862
    or-int/lit8 v2, v2, 0x2

    .line 859
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 863
    :cond_6
    const-string v4, "google"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 864
    or-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 865
    :cond_7
    const-string v4, "youtubelinked"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 866
    or-int/lit8 v2, v2, 0x4

    goto :goto_3

    .line 867
    :cond_8
    const-string v4, "saml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 868
    or-int/lit8 v2, v2, 0x8

    goto :goto_3

    :cond_9
    move v0, v2

    .line 873
    :goto_4
    new-instance v1, Lcom/google/android/gsf/LoginData;

    invoke-direct {v1}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 874
    iput-object p3, v1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 875
    iput v0, v1, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 879
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_b

    move v0, v6

    .line 882
    :goto_5
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    const-string v3, "loginData"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 884
    const-string v3, "existingAccount"

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v4, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$800(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    const-string v3, "callingUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    const-string v3, "isBootstrapMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 887
    const-string v0, "isYoutubeRequest"

    const-string v3, "youtubelinked"

    invoke-direct {p0, p4, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->containsFeature([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "youtube"

    iget-object v4, v1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "YouTubeUser"

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    move v1, v6

    :goto_6
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 891
    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 892
    const-string v0, "callerExtras"

    invoke-virtual {v2, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 894
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 895
    const-string v1, "intent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_b
    move v0, v5

    .line 879
    goto :goto_5

    :cond_c
    move v1, v5

    .line 887
    goto :goto_6

    :cond_d
    move v0, v5

    goto :goto_4
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 774
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v0, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$000(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v0

    .line 775
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v1, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$500(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$600(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SAML and OAuth accounts don\'t support confirmCredentials"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_1
    if-eqz p3, :cond_4

    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 781
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->verifyStoredPasswordInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p2, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->onlineConfirmPassword(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v4

    .line 784
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 785
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 803
    :goto_1
    return-object v0

    .line 782
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 788
    :cond_4
    new-instance v1, Lcom/google/android/gsf/LoginData;

    invoke-direct {v1}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 789
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 790
    iput-object v3, v1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 791
    iput-object v3, v1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 792
    iput v0, v1, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 793
    iget v0, v1, Lcom/google/android/gsf/LoginData;->mFlags:I

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$700(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 795
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    const-string v2, "loginData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 797
    const-string v1, "confirmCredentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 799
    const-string v1, "callerExtras"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 801
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 802
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v0, v1

    .line 803
    goto :goto_1
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 765
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 614
    const/4 v0, -0x1

    .line 615
    const-string v1, "notifyOnAuthFailure"

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 617
    const-string v1, "callerUid"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 618
    const-string v0, "callerUid"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 620
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->checkPermission(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_1

    .line 623
    if-eqz v6, :cond_0

    .line 624
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const v3, 0x7f0800b7

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2, p0, v3, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 720
    :cond_0
    :goto_0
    return-object v0

    .line 632
    :cond_1
    invoke-direct {p0, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->isCacheable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p2, p3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_2

    .line 636
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 637
    const-string v2, "authtoken"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v0, "authAccount"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "accountType"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 640
    goto :goto_0

    :cond_2
    move v7, v5

    .line 646
    :goto_1
    new-instance v2, Lcom/google/android/gsf/LoginData;

    invoke-direct {v2}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 647
    iput-object p3, v2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 648
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v0, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$000(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v0

    iput v0, v2, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 650
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v0, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$100(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "sha1hash"

    invoke-virtual {v0, p2, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 654
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 655
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->fixOldOAuthToken(Lcom/google/android/gsf/LoginData;)V

    .line 658
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthtoken(Landroid/accounts/Account;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 660
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-ne v0, v1, :cond_3

    .line 661
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 662
    const-string v1, "authtoken"

    iget-object v3, v2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v1, "authAccount"

    iget-object v3, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v1, "accountType"

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v1, -0x1

    if-eq v7, v1, :cond_0

    .line 672
    invoke-direct {p0, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->isCacheable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v2}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 679
    :cond_3
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    if-ne v0, v1, :cond_5

    .line 680
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 681
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 682
    const-string v0, "GoogleLoginService"

    const-string v1, "LOGIN_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_2
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->DMAGENT:Lcom/google/android/gsf/LoginData$Status;

    if-ne v0, v1, :cond_a

    .line 701
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/loginservice/DMAgentActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    :goto_3
    const-string v1, "loginData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    const-string v1, "callingUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 708
    const-string v1, "authFailedMessage"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const v3, 0x7f0800b7

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 710
    if-eqz v6, :cond_4

    .line 711
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const v3, 0x7f0800b7

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$400(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V

    .line 715
    :cond_4
    const-string v1, "callerExtras"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 718
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 719
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v0, v1

    .line 720
    goto/16 :goto_0

    .line 683
    :cond_5
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

    if-ne v0, v1, :cond_6

    .line 688
    const-string v0, "GoogleLoginService"

    const-string v1, "CAPTCHA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 689
    :cond_6
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

    if-ne v0, v1, :cond_7

    .line 690
    const-string v0, "GoogleLoginService"

    const-string v1, "OAUTH_MIGRATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 691
    :cond_7
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->DMAGENT:Lcom/google/android/gsf/LoginData$Status;

    if-ne v0, v1, :cond_8

    .line 692
    const-string v0, "GoogleLoginService"

    const-string v1, "DMAGENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 694
    :cond_8
    new-instance v0, Landroid/accounts/NetworkErrorException;

    invoke-direct {v0}, Landroid/accounts/NetworkErrorException;-><init>()V

    throw v0

    .line 697
    :cond_9
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    goto/16 :goto_2

    .line 703
    :cond_a
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_3

    :cond_b
    move v7, v0

    goto/16 :goto_1
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthTokenLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "response"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 580
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$200(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v0

    .line 582
    .local v0, hasFeatures:Z
    invoke-direct {p0, p2, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->maybeRefreshServices(Landroid/accounts/Account;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$200(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v0

    .line 588
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 589
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    return-object v1
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 902
    new-instance v0, Lcom/google/android/gsf/LoginData;

    invoke-direct {v0}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 903
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 904
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 905
    iput-object p3, v0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 906
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v1, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$000(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 907
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v1, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$100(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 909
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 910
    const-string v2, "loginData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 911
    const-string v0, "callingUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 913
    const-string v0, "callerExtras"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 915
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 916
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 917
    return-object v0
.end method
