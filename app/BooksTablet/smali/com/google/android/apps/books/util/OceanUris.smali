.class public Lcom/google/android/apps/books/util/OceanUris;
.super Ljava/lang/Object;
.source "OceanUris.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/OceanUris$SupportApiValue;,
        Lcom/google/android/apps/books/util/OceanUris$SupportApiKey;,
        Lcom/google/android/apps/books/util/OceanUris$BookStore;
    }
.end annotation


# static fields
.field public static final ACCOUNT_PARAMETER_KEY:Ljava/lang/String; = "email"

.field private static sFinskyLocal:Lcom/google/android/apps/books/util/OceanUris$BookStore;

.field private static sFinskyWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

.field private static sOceanWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/apps/books/util/OceanUris$1;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/OceanUris$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/OceanUris;->sOceanWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    .line 83
    new-instance v0, Lcom/google/android/apps/books/util/OceanUris$2;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/OceanUris$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyLocal:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    .line 115
    new-instance v0, Lcom/google/android/apps/books/util/OceanUris$3;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/OceanUris$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static buildGenericReportIssueUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 1
    .parameter "config"

    .prologue
    .line 236
    const-string v0, "http://books.google.com/support/bin/answer.py?answer=180577"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildReportIssueUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "config"
    .parameter "volumeId"
    .parameter "readingMode"
    .parameter "readingPosition"
    .parameter "pageNumber"
    .parameter "title"
    .parameter "author"

    .prologue
    const-string v7, "t"

    .line 285
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, sourceParam:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->buildGenericReportIssueUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "is"

    invoke-virtual {v5, v6, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "hl"

    invoke-virtual {v5, v6, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 293
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->getVersionString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, versionString:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 295
    const-string v5, "av"

    invoke-virtual {v0, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 298
    :cond_0
    if-eqz p1, :cond_1

    .line 299
    const-string v5, "v"

    invoke-virtual {v0, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 301
    :cond_1
    const/4 v5, 0x1

    if-ne p2, v5, :cond_6

    const-string v5, "i"

    move-object v2, v5

    .line 303
    .local v2, readingModeString:Ljava/lang/String;
    :goto_0
    const-string v5, "pt"

    invoke-virtual {v0, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 304
    if-eqz p3, :cond_2

    .line 305
    const-string v5, "rp"

    invoke-virtual {v0, v5, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 307
    :cond_2
    if-eqz p4, :cond_3

    .line 308
    const-string v5, "pg"

    invoke-virtual {v0, v5, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 310
    :cond_3
    if-eqz p5, :cond_4

    .line 311
    const-string v5, "t"

    invoke-virtual {v0, v7, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 313
    :cond_4
    if-eqz p6, :cond_5

    .line 314
    const-string v5, "a"

    invoke-virtual {v0, v5, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 316
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 301
    .end local v2           #readingModeString:Ljava/lang/String;
    :cond_6
    const-string v5, "t"

    move-object v2, v7

    goto :goto_0
.end method

.method public static buildSearchIntent(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "config"
    .parameter "query"

    .prologue
    .line 160
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getSearchUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSearchWithinVolumeUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "config"
    .parameter "volumeId"
    .parameter "query"

    .prologue
    .line 34
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "books"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "jscmd"

    const-string v2, "SearchWithinVolume"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "scoring"

    const-string v2, "p"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 168
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;
    .locals 1
    .parameter "config"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->isNativeFinskyBooksAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyLocal:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    .line 151
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->isLargeDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sOceanWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    goto :goto_0
.end method

.method public static getBuyTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 172
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getBuyTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionVolumeUrl(JLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "collectionId"
    .parameter "volumeId"

    .prologue
    .line 211
    invoke-static {p0, p1}, Lcom/google/android/apps/books/util/OceanUris;->getCollectionVolumesUrl(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionVolumesUrl(J)Landroid/net/Uri;
    .locals 2
    .parameter "collectionId"

    .prologue
    .line 205
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseGDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "books"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "me"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "collections"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentBlockedUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 1
    .parameter "config"

    .prologue
    .line 240
    const-string v0, "http://books.google.com/support/bin/answer.py?answer=179841"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerSupportUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 1
    .parameter "config"

    .prologue
    .line 232
    const-string v0, "http://books.google.com/support/bin/answer.py?answer=190693"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFinskyShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 1
    .parameter "config"

    .prologue
    .line 179
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyLocal:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    invoke-interface {v0, p0}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getHelpCenterUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 1
    .parameter "config"

    .prologue
    .line 228
    const-string v0, "http://books.google.com/support/bin/answer.py?answer=185554"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMyVolumesUrl()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseGDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "books"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "me"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivacyUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 1
    .parameter "config"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->isLargeDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "http://www.google.com/mobile/privacy.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://m.google.com/privacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRelatedBooksUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "related:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/OceanUris;->buildSearchIntent(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getShareUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 186
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 1
    .parameter "config"

    .prologue
    .line 164
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getTermsOfServiceUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 1
    .parameter "config"

    .prologue
    .line 216
    const-string v0, "http://m.google.com/tos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumesUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "volumeId"

    .prologue
    .line 194
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseGDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "books"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "v"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
