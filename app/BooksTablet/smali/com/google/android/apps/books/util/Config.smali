.class public Lcom/google/android/apps/books/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ASSUME_NETWORK_CONNECTED:Z = false

.field private static final DEFAULT_BASE_URI:Ljava/lang/String; = "http://books.google.com/"

.field private static final DISABLE_AUTH:Z = false

.field private static final FINSKY_BASE_URI:Ljava/lang/String; = "http://market.android.com/"

.field public static final FINSKY_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.finsky"

.field private static final PROP_FRONTEND:Ljava/lang/String; = "log.tag.BooksFrontend"

.field private static final TAG:Ljava/lang/String; = "BooksConfig"

.field private static sBaseGDataUri:Landroid/net/Uri;

.field private static sBaseUri:Landroid/net/Uri;


# instance fields
.field private final mBaseFinskyUri:Landroid/net/Uri;

.field private final mLargeDevice:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSourceParam:Ljava/lang/String;

.field private final mVersionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const-class v5, Ljava/lang/String;

    const-string v10, "BooksConfig"

    .line 67
    const-string v1, "http://books.google.com/"

    .line 70
    .local v1, baseUri:Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 71
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 72
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "log.tag.BooksFrontend"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #method:Ljava/lang/reflect/Method;
    :goto_0
    const-string v5, "http://books.google.com/"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    const-string v5, "BooksConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "######## using custom books frontend: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/books/util/Config;->sBaseUri:Landroid/net/Uri;

    .line 83
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/books/util/Config;->sBaseGDataUri:Landroid/net/Uri;

    .line 226
    const-string v5, "BooksConnected"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    sput-boolean v5, Lcom/google/android/apps/books/util/Config;->ASSUME_NETWORK_CONNECTED:Z

    return-void

    .line 73
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 74
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "BooksConfig"

    const-string v5, "problem reading \'log.tag.BooksFrontend\', using default"

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/util/Config;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    const-string v3, "http://market.android.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/util/Config;->mBaseFinskyUri:Landroid/net/Uri;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 108
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/apps/books/util/Config;->mLargeDevice:Z

    .line 110
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/util/Config;->mSourceParam:Ljava/lang/String;

    .line 112
    const v3, 0x7f0b0074

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, versionString:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/util/Config;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 116
    .local v0, info:Landroid/content/pm/PackageInfo;
    const v3, 0x7f0b0073

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    iput-object v2, p0, Lcom/google/android/apps/books/util/Config;->mVersionString:Ljava/lang/String;

    .line 122
    return-void

    .end local v2           #versionString:Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 108
    goto :goto_0

    .line 118
    .restart local v2       #versionString:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "baseFinskyUri"
    .parameter "largeDevice"
    .parameter "sourceParam"
    .parameter "versionString"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/Config;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 128
    iput-object p2, p0, Lcom/google/android/apps/books/util/Config;->mBaseFinskyUri:Landroid/net/Uri;

    .line 129
    iput-boolean p3, p0, Lcom/google/android/apps/books/util/Config;->mLargeDevice:Z

    .line 130
    iput-object p4, p0, Lcom/google/android/apps/books/util/Config;->mSourceParam:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/google/android/apps/books/util/Config;->mVersionString:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static buildFrom(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/apps/books/util/Config;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/util/Config;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBaseGDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/google/android/apps/books/util/Config;->sBaseGDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/android/apps/books/util/Config;->sBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static isAuthRequired(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 221
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, host:Ljava/lang/String;
    const-string v1, ".google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isCustomFrontend()Z
    .locals 2

    .prologue
    .line 199
    const-string v0, "http://books.google.com/"

    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceConnected(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 237
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/net/ConnectivityManager;)Z

    move-result v1

    return v1
.end method

.method public static isDeviceConnected(Landroid/net/ConnectivityManager;)Z
    .locals 2
    .parameter "cm"

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 247
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/google/android/apps/books/util/Config;->ASSUME_NETWORK_CONNECTED:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setBaseUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 195
    sput-object p0, Lcom/google/android/apps/books/util/Config;->sBaseUri:Landroid/net/Uri;

    .line 196
    return-void
.end method


# virtual methods
.method public getBaseFinskyUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/apps/books/util/Config;->mBaseFinskyUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSourceParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/books/util/Config;->mSourceParam:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/books/util/Config;->mVersionString:Ljava/lang/String;

    return-object v0
.end method

.method public isLargeDevice()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/Config;->mLargeDevice:Z

    return v0
.end method

.method public isNativeFinskyBooksAvailable()Z
    .locals 5

    .prologue
    .line 156
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getFinskyShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v2

    .line 157
    .local v2, shopUrl:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    .local v1, shopIntent:Landroid/content/Intent;
    const-string v3, "com.google.android.finsky"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v3, p0, Lcom/google/android/apps/books/util/Config;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public shouldBuildFinskyUrls()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->isNativeFinskyBooksAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->isLargeDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
