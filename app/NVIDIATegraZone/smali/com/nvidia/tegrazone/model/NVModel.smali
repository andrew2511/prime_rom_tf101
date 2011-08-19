.class public Lcom/nvidia/tegrazone/model/NVModel;
.super Ljava/lang/Object;
.source "NVModel.java"


# static fields
.field private static instance:Lcom/nvidia/tegrazone/model/NVModel;


# instance fields
.field public aboutDismissBlocker:Ljava/lang/Boolean;

.field public aboutWindowOpen:Ljava/lang/Boolean;

.field public appBlocker:Ljava/lang/Boolean;

.field public blockSpinnerDispatch:Ljava/lang/Boolean;

.field public blocker:Ljava/lang/Boolean;

.field public carrierString:Ljava/lang/String;

.field public checkedForVersion:Ljava/lang/Boolean;

.field public clearSearch:Ljava/lang/Boolean;

.field public comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

.field public currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

.field public currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

.field public deviceSize:Ljava/lang/String;

.field public dialog_comment:Ljava/lang/String;

.field public dialog_rating:Ljava/lang/String;

.field public dialog_title:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field public feedbackURL:Ljava/lang/String;

.field public filter:Ljava/lang/String;

.field public games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field public genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

.field public imagesPath:Ljava/lang/String;

.field public imagesPosition:I

.field public isCurrentVersion:Ljava/lang/Boolean;

.field public isLarge:Ljava/lang/Boolean;

.field public isTablet:Ljava/lang/Boolean;

.field public isTegra:Ljava/lang/Boolean;

.field public language:Ljava/lang/String;

.field public lastAppId:Ljava/lang/String;

.field public lastDataLanguage:Ljava/lang/String;

.field public lastNewsId:Ljava/lang/String;

.field public logEnabled:Ljava/lang/Boolean;

.field public news:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

.field public newsBlocker:Ljava/lang/Boolean;

.field public nonTZDismissBlocker:Ljava/lang/Boolean;

.field public nonTZWindowOpen:Ljava/lang/Boolean;

.field public search:Ljava/lang/String;

.field public serverURL:Ljava/lang/String;

.field public shareURL:Ljava/lang/String;

.field public showedSplashScreen:Ljava/lang/Boolean;

.field public username:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/nvidia/tegrazone/model/NVModel;->instance:Lcom/nvidia/tegrazone/model/NVModel;

    .line 27
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->blocker:Ljava/lang/Boolean;

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->showedSplashScreen:Ljava/lang/Boolean;

    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->aboutWindowOpen:Ljava/lang/Boolean;

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->aboutDismissBlocker:Ljava/lang/Boolean;

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->nonTZWindowOpen:Ljava/lang/Boolean;

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->nonTZDismissBlocker:Ljava/lang/Boolean;

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->blockSpinnerDispatch:Ljava/lang/Boolean;

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->appBlocker:Ljava/lang/Boolean;

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->newsBlocker:Ljava/lang/Boolean;

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTegra:Ljava/lang/Boolean;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->lastAppId:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->lastNewsId:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->username:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->email:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->carrierString:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isCurrentVersion:Ljava/lang/Boolean;

    .line 95
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->checkedForVersion:Ljava/lang/Boolean;

    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->logEnabled:Ljava/lang/Boolean;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->dialog_rating:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->dialog_comment:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->dialog_title:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->feedbackURL:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/NVModel;->shareURL:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/nvidia/tegrazone/model/NVModel;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/nvidia/tegrazone/model/NVModel;->instance:Lcom/nvidia/tegrazone/model/NVModel;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/nvidia/tegrazone/model/NVModel;

    invoke-direct {v0}, Lcom/nvidia/tegrazone/model/NVModel;-><init>()V

    sput-object v0, Lcom/nvidia/tegrazone/model/NVModel;->instance:Lcom/nvidia/tegrazone/model/NVModel;

    .line 36
    :cond_0
    sget-object v0, Lcom/nvidia/tegrazone/model/NVModel;->instance:Lcom/nvidia/tegrazone/model/NVModel;

    return-object v0
.end method


# virtual methods
.method public isLandscape(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 109
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppVars(Landroid/app/Activity;)V
    .locals 13
    .parameter "a"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 115
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->logEnabled:Ljava/lang/Boolean;

    .line 118
    const-string v9, "http://www.tegrazone.com"

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    .line 121
    const-string v9, "http://www.tegrazone.com"

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v8, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 125
    .local v8, screenLayout:I
    and-int/lit8 v9, v8, 0xf

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    move v9, v12

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    .line 128
    iget-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    .line 129
    and-int/lit8 v9, v8, 0xf

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    move v9, v12

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    .line 130
    iget-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 131
    const-string v9, "Large"

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    .line 140
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 144
    .local v3, manager:Landroid/accounts/AccountManager;
    const/4 v0, 0x0

    check-cast v0, [Landroid/accounts/Account;

    .line 145
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v3, :cond_0

    const-string v9, "com.google"

    invoke-virtual {v3, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 147
    :cond_0
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 148
    .local v7, random:Ljava/util/Random;
    const v9, 0x186a0

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 149
    .local v6, r:I
    if-eqz v0, :cond_7

    array-length v9, v0

    if-lez v9, :cond_7

    aget-object v9, v0, v11

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_3
    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->email:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, provider:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 154
    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 157
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->carrierString:Ljava/lang/String;

    .line 162
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 163
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_5
    iget-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTegra:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {p1}, Lcom/nvidia/tegrazone/utils/NVUtils;->isTegra(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTegra:Ljava/lang/Boolean;

    .line 174
    :cond_1
    iget-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->feedbackURL:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 176
    new-instance v2, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;

    invoke-direct {v2}, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;-><init>()V

    .line 177
    .local v2, localMgr:Lcom/nvidia/tegrazone/utils/LocalizedURLManager;
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v9}, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;->handleResume(Landroid/os/Handler;)V

    .line 179
    .end local v2           #localMgr:Lcom/nvidia/tegrazone/utils/LocalizedURLManager;
    :cond_2
    return-void

    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v3           #manager:Landroid/accounts/AccountManager;
    .end local v5           #provider:Ljava/lang/String;
    .end local v6           #r:I
    .end local v7           #random:Ljava/util/Random;
    :cond_3
    move v9, v11

    .line 125
    goto/16 :goto_0

    :cond_4
    move v9, v11

    .line 129
    goto/16 :goto_1

    .line 133
    :cond_5
    const-string v9, "Phone"

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    goto/16 :goto_2

    .line 136
    :cond_6
    const-string v9, "Tablet"

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    .line 137
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 149
    .restart local v0       #accounts:[Landroid/accounts/Account;
    .restart local v3       #manager:Landroid/accounts/AccountManager;
    .restart local v6       #r:I
    .restart local v7       #random:Ljava/util/Random;
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "username"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 156
    .restart local v5       #provider:Ljava/lang/String;
    :cond_8
    const-string v9, "None"

    move-object v5, v9

    goto/16 :goto_4

    .line 164
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 166
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 167
    const-string v9, "Cannot load Version!"

    iput-object v9, p0, Lcom/nvidia/tegrazone/model/NVModel;->versionName:Ljava/lang/String;

    goto :goto_5
.end method
