.class public Lcom/asus/reader/vibe2/VibeAgent;
.super Ljava/lang/Object;
.source "VibeAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;,
        Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;,
        Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;,
        Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;
    }
.end annotation


# static fields
.field public static final Locales:[Ljava/lang/String;

.field public static final Regions:[Ljava/lang/String;

.field private static sInstance:Lcom/asus/reader/vibe2/VibeAgent;


# instance fields
.field private app:Lcom/asus/reader/vibe2/ApplicationInfo;

.field private loadingWindow:I

.field private final mContext:Landroid/content/Context;

.field private mCursor:Lcom/asus/reader/util/LinkedCursor;

.field private mIsLoggedin:Z

.field private mTempContent:Lcom/asus/reader/vibe2/Content;

.field private final pluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;",
            ">;"
        }
    .end annotation
.end field

.field private vibe:Lcom/asus/reader/vibe2/VibeAPI;

.field private final vibeCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 794
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ar_AE"

    aput-object v1, v0, v3

    const-string v1, "cs_CZ"

    aput-object v1, v0, v4

    const-string v1, "da_DK"

    aput-object v1, v0, v5

    const-string v1, "de_DE"

    aput-object v1, v0, v6

    const-string v1, "eI_GR"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "en_US"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "es_ES"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fi_FL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fr_FR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hu_HU"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "it_IT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ja_JP"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ko_KO"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "nb_NO"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "nl_NL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pl_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pt_BR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pt_PT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ru_RU"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sk_SK"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sv_SE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "th_TH"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "tr_TR"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "vi_VN"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "zh_CN"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "zh_TW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/vibe2/VibeAgent;->Locales:[Ljava/lang/String;

    .line 823
    const/16 v0, 0x48

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AF"

    aput-object v1, v0, v3

    const-string v1, "AL"

    aput-object v1, v0, v4

    const-string v1, "DZ"

    aput-object v1, v0, v5

    const-string v1, "AR"

    aput-object v1, v0, v6

    const-string v1, "AU"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CL"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CR"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CZ"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DK"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EG"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "SV"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ET"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "FI"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "GR"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "GL"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "HK"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "HU"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "IS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "IR"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "IQ"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "IL"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "KP"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "KR"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "KW"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "LR"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "LU"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "MX"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "MN"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "NP"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "NL"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "NZ"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "NG"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "PG"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "PY"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "PE"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "PH"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "PT"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "RO"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "SK"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "SO"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "LK"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "TW"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "UG"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "UA"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "UY"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "VN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/vibe2/VibeAgent;->Regions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->pluginList:Ljava/util/List;

    .line 29
    new-instance v7, Lcom/asus/reader/vibe2/VibeAPI;

    invoke-direct {v7}, Lcom/asus/reader/vibe2/VibeAPI;-><init>()V

    iput-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibe:Lcom/asus/reader/vibe2/VibeAPI;

    .line 30
    new-instance v7, Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-direct {v7}, Lcom/asus/reader/vibe2/ApplicationInfo;-><init>()V

    iput-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    .line 31
    iput-boolean v11, p0, Lcom/asus/reader/vibe2/VibeAgent;->mIsLoggedin:Z

    .line 34
    const/16 v7, 0x28

    iput v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->loadingWindow:I

    .line 40
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "com.newspaperdirect.pressreader.android"

    const-string v8, "com.newspaperdirect.pressreader.android.Main"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->pluginList:Ljava/util/List;

    new-instance v8, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;

    iget-object v9, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    const v10, 0x7f0700c2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v1}, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;-><init>(Lcom/asus/reader/vibe2/VibeAgent;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 48
    const-string v7, "ASUSREADER"

    invoke-virtual {p1, v7, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 49
    .local v6, settings:Landroid/content/SharedPreferences;
    const-string v7, "local"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, local:Ljava/lang/String;
    const-string v7, "region"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, region:Ljava/lang/String;
    const-string v7, "cmurl"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, CMSurl:Ljava/lang/String;
    const-string v7, "lastlocale"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, lastLocale:Ljava/lang/String;
    const-string v7, "lastregion"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, lastRegion:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 58
    :cond_0
    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-static {v7}, Lcom/asus/reader/vibe2/VibeUtil;->setPadLocaleRegion(Lcom/asus/reader/vibe2/ApplicationInfo;)V

    .line 67
    :goto_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->isUser()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 68
    :cond_1
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/asus/reader/vibe2/VibeAgent$1;

    invoke-direct {v8, p0, v6}, Lcom/asus/reader/vibe2/VibeAgent$1;-><init>(Lcom/asus/reader/vibe2/VibeAgent;Landroid/content/SharedPreferences;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 88
    :goto_1
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->isUser()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {v7, v0}, Lcom/asus/reader/vibe2/ApplicationInfo;->setCMSurl(Ljava/lang/String;)V

    .line 91
    :cond_2
    return-void

    .line 61
    :cond_3
    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {v7, v2}, Lcom/asus/reader/vibe2/ApplicationInfo;->setLocale(Ljava/lang/String;)V

    .line 62
    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {v7, v3}, Lcom/asus/reader/vibe2/ApplicationInfo;->setRegion(Ljava/lang/String;)V

    .line 63
    const-string v7, "ASUSREADER"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Last Setting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_4
    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {v7, v4}, Lcom/asus/reader/vibe2/ApplicationInfo;->setLocale(Ljava/lang/String;)V

    .line 84
    iget-object v7, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {v7, v5}, Lcom/asus/reader/vibe2/ApplicationInfo;->setRegion(Ljava/lang/String;)V

    .line 85
    const-string v7, "ASUSREADER"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Test Default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/reader/vibe2/VibeAgent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/asus/reader/vibe2/VibeAgent;Lcom/asus/reader/util/LinkedCursor;)Lcom/asus/reader/util/LinkedCursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/asus/reader/vibe2/VibeAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->loadingWindow:I

    return v0
.end method

.method static synthetic access$400(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/VibeAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibe:Lcom/asus/reader/vibe2/VibeAPI;

    return-object v0
.end method

.method public static addCandidateDownload(Lcom/asus/reader/vibe2/SubcategoryContents;Landroid/content/Context;)V
    .locals 2
    .parameter "candidatecontent"
    .parameter "context"

    .prologue
    .line 382
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/vibe2/VibeAgent$3;

    invoke-direct {v1, p0, p1}, Lcom/asus/reader/vibe2/VibeAgent$3;-><init>(Lcom/asus/reader/vibe2/SubcategoryContents;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 400
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->addCandidateDownload()V

    .line 401
    return-void
.end method

.method public static getInstance()Lcom/asus/reader/vibe2/VibeAgent;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/asus/reader/vibe2/VibeAgent;->sInstance:Lcom/asus/reader/vibe2/VibeAgent;

    return-object v0
.end method

.method public static declared-synchronized getSubContentinDb(Lcom/asus/reader/vibe2/SubcategoryContents;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 11
    .parameter "subcontent"
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 331
    const-class v8, Lcom/asus/reader/vibe2/VibeAgent;

    monitor-enter v8

    const/16 v0, 0x14

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_spname"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_subcategoryid"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_subcategoryname"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_spcontentid"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_contentname"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "_coverpicuri"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "_isfree"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "_paid"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "_tag1"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "_tag2"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "_osset"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "_maincategory"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "_maincategoryid"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "_totalcount"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "book_path"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "download_url"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "purchase_time"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "sync_time"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "user_name"

    aput-object v1, v2, v0

    .line 354
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_spcontentid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _subcategoryid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _maincategoryid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, where:Ljava/lang/String;
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/VibeAgent;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, username:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND user_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 371
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move-object v0, v9

    .line 377
    :goto_1
    monitor-exit v8

    return-object v0

    .line 363
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND user_name = \' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 373
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v10, :cond_3

    .line 374
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v9

    .line 375
    goto :goto_1

    :cond_3
    move-object v0, v6

    .line 377
    goto :goto_1

    .line 331
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #username:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    new-instance v0, Lcom/asus/reader/vibe2/VibeAgent;

    invoke-direct {v0, p0}, Lcom/asus/reader/vibe2/VibeAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/reader/vibe2/VibeAgent;->sInstance:Lcom/asus/reader/vibe2/VibeAgent;

    .line 95
    return-void
.end method


# virtual methods
.method public checkUnpaidContent()V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/vibe2/VibeAgent$2;

    invoke-direct {v1, p0}, Lcom/asus/reader/vibe2/VibeAgent$2;-><init>(Lcom/asus/reader/vibe2/VibeAgent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 287
    return-void
.end method

.method public get20BooksEach()Landroid/database/Cursor;
    .locals 19

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/asus/reader/util/LinkedCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/asus/reader/util/LinkedCursor;->getStartId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/asus/reader/util/LinkedCursor;->getEndId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    move-object v2, v0

    .line 491
    :goto_0
    return-object v2

    .line 454
    :cond_0
    const/16 v2, 0x10

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string v3, "_spname"

    aput-object v3, v10, v2

    const/4 v2, 0x2

    const-string v3, "_subcategoryid"

    aput-object v3, v10, v2

    const/4 v2, 0x3

    const-string v3, "_subcategoryname"

    aput-object v3, v10, v2

    const/4 v2, 0x4

    const-string v3, "_spcontentid"

    aput-object v3, v10, v2

    const/4 v2, 0x5

    const-string v3, "_contentname"

    aput-object v3, v10, v2

    const/4 v2, 0x6

    const-string v3, "_coverpicuri"

    aput-object v3, v10, v2

    const/4 v2, 0x7

    const-string v3, "_isfree"

    aput-object v3, v10, v2

    const/16 v2, 0x8

    const-string v3, "_paid"

    aput-object v3, v10, v2

    const/16 v2, 0x9

    const-string v3, "_tag1"

    aput-object v3, v10, v2

    const/16 v2, 0xa

    const-string v3, "_tag2"

    aput-object v3, v10, v2

    const/16 v2, 0xb

    const-string v3, "_osset"

    aput-object v3, v10, v2

    const/16 v2, 0xc

    const-string v3, "_maincategory"

    aput-object v3, v10, v2

    const/16 v2, 0xd

    const-string v3, "_maincategoryid"

    aput-object v3, v10, v2

    const/16 v2, 0xe

    const-string v3, "_totalcount"

    aput-object v3, v10, v2

    const/16 v2, 0xf

    const-string v3, "_search"

    aput-object v3, v10, v2

    .line 472
    .local v10, SUBCATEGORYCONTENTS_COLUMNS:[Ljava/lang/String;
    new-instance v18, Lcom/asus/reader/util/LinkedCursor;

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/asus/reader/util/LinkedCursor;-><init>([Ljava/lang/String;)V

    .line 473
    .local v18, totalcursor:Lcom/asus/reader/util/LinkedCursor;
    const/4 v14, 0x0

    .line 474
    .local v14, loaded:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    .line 475
    .local v15, maincategory:Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;
    if-eqz v14, :cond_3

    .line 490
    .end local v15           #maincategory:Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->mCursor:Lcom/asus/reader/util/LinkedCursor;

    move-object v2, v0

    goto/16 :goto_0

    .line 477
    .restart local v15       #maincategory:Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;
    :cond_3
    const/4 v14, 0x1

    .line 478
    invoke-virtual {v15}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->getSPList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;

    .line 479
    .local v16, sp:Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;
    invoke-virtual/range {v16 .. v16}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->getSubCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 480
    invoke-virtual/range {v16 .. v16}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->getSubCategoryList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;

    .line 481
    .local v11, firstsub:Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->vibe:Lcom/asus/reader/vibe2/VibeAPI;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    move-object v2, v0

    invoke-virtual {v11}, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->getSubCategory()Lcom/asus/reader/vibe2/Subcategory;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x14

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/asus/reader/vibe2/VibeAPI;->callLoadPickedSubcategory(Lcom/asus/reader/vibe2/ApplicationInfo;Lcom/asus/reader/vibe2/Subcategory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asus/reader/util/LinkedCursor;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v17

    .line 482
    .local v17, tempcursor:Lcom/asus/reader/util/LinkedCursor;
    if-eqz v17, :cond_5

    .line 483
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/reader/util/LinkedCursor;->concatToEndForce(Lcom/asus/reader/util/LinkedCursor;)V

    goto :goto_1

    .line 485
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getApplicationInfo()Lcom/asus/reader/vibe2/ApplicationInfo;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent;->pluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCategoryName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 410
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    .line 412
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent;->pluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->pluginList:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 414
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContent(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/Content;
    .locals 1
    .parameter "c"

    .prologue
    .line 529
    invoke-static {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->fromCursor(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/VibeAgent;->getContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;
    .locals 7
    .parameter "subcontent"

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 512
    .local v1, content:Lcom/asus/reader/vibe2/Content;
    :try_start_0
    iget-object v4, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibe:Lcom/asus/reader/vibe2/VibeAPI;

    iget-object v5, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p1}, Lcom/asus/reader/vibe2/VibeAPI;->callLoadPickedContent(Lcom/asus/reader/vibe2/ApplicationInfo;Ljava/lang/String;Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;

    move-result-object v1

    .line 513
    invoke-virtual {v1}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/asus/reader/vibe2/Content;->getMainCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/asus/reader/vibe2/Content;->getSubcategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/asus/reader/vibe2/Content;->getSPContentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, vibeId:Ljava/lang/String;
    iget-object v4, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/asus/reader/book/ReaderDatabase;->getBookPathFromAcsmVibeId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, bookpath:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    invoke-virtual {v1, v0}, Lcom/asus/reader/vibe2/Content;->setBookPath(Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v4, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/asus/reader/book/ReaderDatabase;->getBookPathFromVibeId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 520
    invoke-virtual {v1, v0}, Lcom/asus/reader/vibe2/Content;->setBookPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v0           #bookpath:Ljava/lang/String;
    .end local v3           #vibeId:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 522
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 523
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent;->pluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->pluginList:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainCategoryCount()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPackages(Lcom/asus/reader/vibe2/Content;)Ljava/util/List;
    .locals 8
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/asus/reader/vibe2/Content;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v7, lP:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Package;>;"
    :try_start_0
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibe:Lcom/asus/reader/vibe2/VibeAPI;

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getSPContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getMainCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getMainCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getSubcategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/vibe2/VibeAPI;->callLoadPickedPackage(Lcom/asus/reader/vibe2/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 540
    :goto_0
    if-nez v7, :cond_0

    .line 541
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #lP:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Package;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .restart local v7       #lP:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Package;>;"
    :cond_0
    return-object v7

    .line 537
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 538
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPaymentURI(Lcom/asus/reader/vibe2/Package;Lcom/asus/reader/vibe2/Content;)Ljava/lang/String;
    .locals 8
    .parameter "p"
    .parameter "content"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibe:Lcom/asus/reader/vibe2/VibeAPI;

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {p2}, Lcom/asus/reader/vibe2/Content;->getSPContentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Package;->getPackageId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video"

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Package;->getMainCategoryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/asus/reader/vibe2/Content;->getSubcategoryId()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/asus/reader/vibe2/VibeAPI;->callOrderInfoProcess(Lcom/asus/reader/vibe2/ApplicationInfo;Lcom/asus/reader/vibe2/Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProviderCount(I)I
    .locals 1
    .parameter "mainPosition"

    .prologue
    .line 427
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->getSPCount()I

    move-result v0

    .line 429
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName(II)Ljava/lang/String;
    .locals 1
    .parameter "mainPosition"
    .parameter "spposition"

    .prologue
    .line 421
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-virtual {p0, p2}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->getSPName(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubCategoryCount(II)I
    .locals 1
    .parameter "mainposition"
    .parameter "spposition"

    .prologue
    .line 439
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-virtual {p0, p2}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->getSubCount(I)I

    move-result v0

    .line 441
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubCategoryName(III)Ljava/lang/String;
    .locals 1
    .parameter "mainposition"
    .parameter "spposition"
    .parameter "subposition"

    .prologue
    .line 433
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-virtual {p0, p2, p3}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->getSubName(II)Ljava/lang/String;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTempContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;
    .locals 2
    .parameter "subcontent"

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mTempContent:Lcom/asus/reader/vibe2/Content;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 562
    :goto_0
    return-object v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mTempContent:Lcom/asus/reader/vibe2/Content;

    invoke-virtual {p1, v0}, Lcom/asus/reader/vibe2/SubcategoryContents;->equals(Lcom/asus/reader/vibe2/Content;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mTempContent:Lcom/asus/reader/vibe2/Content;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 562
    goto :goto_0
.end method

.method public getTotalCount(III)I
    .locals 1
    .parameter "mainposition"
    .parameter "spposition"
    .parameter "subposition"

    .prologue
    .line 445
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-virtual {p0, p2, p3}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->getTotalCount(II)I

    move-result v0

    .line 447
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, username:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/asus/reader/vibe2/VibeAgent;->mIsLoggedin:Z

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/ApplicationInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeUtil;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {v2, v0}, Lcom/asus/reader/vibe2/ApplicationInfo;->setUserName(Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .line 135
    .end local v0           #username:Ljava/lang/String;
    .local v1, username:Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1           #username:Ljava/lang/String;
    .restart local v0       #username:Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 132
    .end local v0           #username:Ljava/lang/String;
    .restart local v1       #username:Ljava/lang/String;
    goto :goto_0
.end method

.method public getVibeBooksCursor(IIILjava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "mainposition"
    .parameter "spposition"
    .parameter "subposition"
    .parameter "searchText"

    .prologue
    const/4 v0, -0x1

    .line 495
    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent;->get20BooksEach()Landroid/database/Cursor;

    move-result-object v0

    .line 500
    .end local p0
    :goto_0
    return-object v0

    .line 498
    .restart local p0
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-virtual {p0, p2, p3, p4}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->getVibeBooksCursor(IILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 500
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggedin()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mIsLoggedin:Z

    return v0
.end method

.method public loadCategoryList()Ljava/lang/String;
    .locals 7

    .prologue
    .line 162
    iget-object v5, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 163
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 164
    const-string v5, "no network"

    .line 182
    :goto_0
    return-object v5

    .line 165
    :cond_0
    iget-object v5, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, lMC:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/MainCategory;>;"
    iget-object v5, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibe:Lcom/asus/reader/vibe2/VibeAPI;

    iget-object v6, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/asus/reader/vibe2/VibeAPI;->callAuthorization(Lcom/asus/reader/vibe2/ApplicationInfo;)Ljava/util/List;

    move-result-object v2

    .line 169
    if-nez v2, :cond_1

    .line 170
    const-string v5, "cannot connect to server"

    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 172
    const-string v5, "cannot connect to server"

    goto :goto_0

    .line 173
    :cond_2
    iget-object v5, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 174
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/reader/vibe2/MainCategory;

    .line 175
    .local v4, p:Lcom/asus/reader/vibe2/MainCategory;
    invoke-virtual {v4}, Lcom/asus/reader/vibe2/MainCategory;->getMainCategoryName()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 180
    iget-object v5, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    new-instance v6, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-direct {v6, p0, v4}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;-><init>(Lcom/asus/reader/vibe2/VibeAgent;Lcom/asus/reader/vibe2/MainCategory;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #p:Lcom/asus/reader/vibe2/MainCategory;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public loadRecentActivities()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 187
    const/16 v0, 0x14

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_spname"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_subcategoryid"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_subcategoryname"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_spcontentid"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_contentname"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "_coverpicuri"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "_isfree"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "_paid"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "_tag1"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "_tag2"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "_osset"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "_maincategory"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "_maincategoryid"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "_totalcount"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "book_path"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "download_url"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "purchase_time"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "sync_time"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "user_name"

    aput-object v1, v2, v0

    .line 210
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, username:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _paid = \'1\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, where:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "purchase_time DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 227
    .local v6, c:Landroid/database/Cursor;
    return-object v6

    .line 215
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v3, "user_name = \' \' AND _paid = \'1\'"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0
.end method

.method public loadUnpaidActivities()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 292
    const/16 v0, 0x14

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_spname"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_subcategoryid"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_subcategoryname"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_spcontentid"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_contentname"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "_coverpicuri"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "_isfree"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "_paid"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "_tag1"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "_tag2"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "_osset"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "_maincategory"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "_maincategoryid"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "_totalcount"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "book_path"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "download_url"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "purchase_time"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "sync_time"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "user_name"

    aput-object v1, v2, v0

    .line 315
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, username:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _paid <> 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, where:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "purchase_time DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    .local v6, c:Landroid/database/Cursor;
    return-object v6

    .line 320
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v3, "user_name = \' \' AND _paid <> 1"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->app:Lcom/asus/reader/vibe2/ApplicationInfo;

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/asus/reader/vibe2/VibeUtil;->resetVibeAccount(Lcom/asus/reader/vibe2/ApplicationInfo;Landroid/content/Context;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->mIsLoggedin:Z

    .line 121
    return-void
.end method

.method public setLogin(Z)V
    .locals 0
    .parameter "login"

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/asus/reader/vibe2/VibeAgent;->mIsLoggedin:Z

    .line 571
    return-void
.end method

.method public setTempContent(Lcom/asus/reader/vibe2/Content;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent;->mTempContent:Lcom/asus/reader/vibe2/Content;

    .line 555
    return-void
.end method

.method public updateVibeBookPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "downloadURL"
    .parameter "bookPath"

    .prologue
    .line 231
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "book_path"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_url = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public updateVibeBooksCursor(IIILjava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "mainposition"
    .parameter "spposition"
    .parameter "subposition"
    .parameter "searchText"
    .parameter "goDown"

    .prologue
    .line 504
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent;->vibeCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->updateVibeBooksCursor(IILjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
