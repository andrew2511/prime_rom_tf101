.class public Lnet/yostore/aws/view/common/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/common/SplashActivity$Worker;
    }
.end annotation


# static fields
.field static ctx:Landroid/content/Context;


# instance fields
.field private backgroundLoginTask:Lnet/yostore/aws/ansytask/BackGroundLoginTask;

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/common/SplashActivity;)Lnet/yostore/aws/ansytask/BackGroundLoginTask;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->backgroundLoginTask:Lnet/yostore/aws/ansytask/BackGroundLoginTask;

    return-object v0
.end method

.method private renewAccountInfo([B)V
    .locals 9
    .parameter "accinfo"

    .prologue
    const/4 v8, 0x0

    .line 136
    invoke-static {p1}, Lnet/yostore/utility/SimpleAES;->decodeFromBytes([B)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, userAcc:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SplashActivity;->parserApiConfig(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    .line 138
    .local v2, apicfg:Lnet/yostore/aws/api/ApiConfig;
    const-string v4, "userAcc"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v1

    .line 140
    .local v1, accinf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v4, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 141
    :cond_1
    sget-object v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 143
    :cond_2
    sget-object v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v1

    .line 144
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v4, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v5, v2, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v6, v2, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v0, v4, v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v0, accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 146
    :cond_3
    sget-object v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->insertAccInfo(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 152
    :cond_4
    sput-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 154
    invoke-static {v2}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 165
    invoke-static {v2}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 166
    new-instance v4, Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    sget-object v5, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v8, v6}, Lnet/yostore/aws/ansytask/BindAWSServiceTask;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    invoke-virtual {v4, v8}, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    if-ne p1, v2, :cond_0

    if-eqz p3, :cond_0

    .line 121
    const-string v1, "AccountInfo"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 122
    .local v0, accinfo:[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 126
    invoke-direct {p0, v0}, Lnet/yostore/aws/view/common/SplashActivity;->renewAccountInfo([B)V

    .line 130
    .end local v0           #accinfo:[B
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v0       #accinfo:[B
    :cond_1
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/SplashActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v13, 0x7f030018

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SplashActivity;->setContentView(I)V

    .line 46
    const-string v13, "AWSPrefs"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/view/common/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/view/common/SplashActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 48
    new-instance v8, Landroid/content/Intent;

    const-class v13, Lnet/yostore/aws/service/AWSService;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v8, intent:Landroid/content/Intent;
    sput-object p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    .line 50
    new-instance v13, Lnet/yostore/aws/ansytask/BackGroundLoginTask;

    sget-object v14, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lnet/yostore/aws/ansytask/BackGroundLoginTask;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/view/common/SplashActivity;->backgroundLoginTask:Lnet/yostore/aws/ansytask/BackGroundLoginTask;

    .line 53
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/yostore/aws/view/common/SplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    sget-object v14, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 54
    .local v11, pi:Landroid/content/pm/PackageInfo;
    iget-object v13, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v13, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->clientversion:Ljava/lang/String;

    .line 56
    const v13, 0x7f09005a

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const v14, 0x7f0600ed

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " V"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .end local v11           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v9, mNetworkStateChangedFilter:Landroid/content/IntentFilter;
    const-string v13, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    sget-object v13, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v13}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->getOOBEFlag(Landroid/content/Context;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    :goto_1
    sput-boolean v13, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 68
    invoke-virtual/range {p0 .. p0}, Lnet/yostore/aws/view/common/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "AccountInfo"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 69
    .local v4, accinfo:[B
    if-eqz v4, :cond_1

    .line 73
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/common/SplashActivity;->renewAccountInfo([B)V

    .line 100
    :goto_2
    return-void

    .line 67
    .end local v4           #accinfo:[B
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 76
    .restart local v4       #accinfo:[B
    :cond_1
    :try_start_1
    sget-object v13, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 77
    .local v10, manager:Landroid/content/pm/PackageManager;
    const-string v13, "com.asus.webstorage.id"

    const/16 v14, 0x40

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 78
    .local v6, appInfo:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_2

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_2

    .line 79
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v3, _intent:Landroid/content/Intent;
    const-string v13, "com.asus.webstorage.id"

    const-string v14, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v13, "Application"

    const-string v14, "ASUS WebStorage"

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v13, "AccountInfo"

    const-string v14, "getInfo"

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/view/common/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 92
    .end local v3           #_intent:Landroid/content/Intent;
    .end local v6           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v10           #manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v13

    move-object v7, v13

    .line 94
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    .line 95
    .local v5, apicfg:Lnet/yostore/aws/api/ApiConfig;
    new-instance v12, Ljava/util/Timer;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/util/Timer;-><init>(Z)V

    .line 96
    .local v12, timer:Ljava/util/Timer;
    new-instance v13, Lnet/yostore/aws/view/common/SplashActivity$Worker;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/common/SplashActivity$Worker;-><init>(Lnet/yostore/aws/view/common/SplashActivity;)V

    new-instance v14, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x1f4

    add-long v15, v15, v17

    invoke-direct/range {v14 .. v16}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13, v14}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    goto :goto_2

    .line 87
    .end local v5           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #timer:Ljava/util/Timer;
    .restart local v6       #appInfo:Landroid/content/pm/PackageInfo;
    .restart local v10       #manager:Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    .line 88
    .restart local v5       #apicfg:Lnet/yostore/aws/api/ApiConfig;
    new-instance v13, Lnet/yostore/aws/ansytask/BackGroundLoginTask;

    sget-object v14, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Lnet/yostore/aws/ansytask/BackGroundLoginTask;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Void;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lnet/yostore/aws/ansytask/BackGroundLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 57
    .end local v4           #accinfo:[B
    .end local v5           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    .end local v6           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #mNetworkStateChangedFilter:Landroid/content/IntentFilter;
    .end local v10           #manager:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    return-void
.end method

.method public parserApiConfig(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter "apicfgStr"

    .prologue
    .line 170
    invoke-static {p1}, Lnet/yostore/aws/api/ApiConfig;->getFromString(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    .line 173
    .local v0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    return-object v0
.end method
