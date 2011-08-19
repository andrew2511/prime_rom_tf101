.class public Lcom/google/android/youtube/core/async/GDataRequests;
.super Ljava/lang/Object;
.source "GDataRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;,
        Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final DEV_BASE_URI:Landroid/net/Uri;

.field public static final STAGE_BASE_URI:Landroid/net/Uri;

.field private static final SUPPORTED_LOCALES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_REGIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile countryCodeRestrict:Ljava/lang/String;

.field private static volatile safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    .line 42
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stage.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->STAGE_BASE_URI:Landroid/net/Uri;

    .line 49
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dev.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->DEV_BASE_URI:Landroid/net/Uri;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "zh-TW"

    aput-object v2, v1, v4

    const-string v2, "cs-CZ"

    aput-object v2, v1, v5

    const-string v2, "nl-NL"

    aput-object v2, v1, v6

    const-string v2, "en-GB"

    aput-object v2, v1, v7

    const-string v2, "en-US"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "fr-FR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "de-DE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "it-IT"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ja-JP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ko-KR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "pl-PL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "pt-BR"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ru-RU"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "es-ES"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "es-MX"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "sv-SE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->SUPPORTED_LOCALES:Ljava/util/HashSet;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AR"

    aput-object v2, v1, v4

    const-string v2, "AU"

    aput-object v2, v1, v5

    const-string v2, "BR"

    aput-object v2, v1, v6

    const-string v2, "CA"

    aput-object v2, v1, v7

    const-string v2, "CZ"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "FR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "GB"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "HK"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "IN"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "IE"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "IL"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "IT"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "JP"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "MX"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "NL"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "NZ"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "PL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "RU"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ZA"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "KR"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ES"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "SE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "TW"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "US"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->SUPPORTED_REGIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method private static appendCountryRestrictionParameter(Landroid/net/Uri$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 709
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 710
    const-string v0, "restriction"

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 712
    :cond_0
    return-void
.end method

.method private static appendDefaultPageParameters(Landroid/net/Uri$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 682
    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/async/GDataRequests;->appendPageParameters(Landroid/net/Uri$Builder;II)V

    .line 683
    return-void
.end method

.method private static appendDefaultPageParametersIfMissing(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"

    .prologue
    .line 686
    const-string v1, "start-index"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "max-results"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 688
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 689
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParameters(Landroid/net/Uri$Builder;)V

    .line 690
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 692
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p0

    goto :goto_0
.end method

.method private static appendDirectAcessVideoFeedParameters(Landroid/net/Uri$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 676
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParameters(Landroid/net/Uri$Builder;)V

    .line 679
    return-void
.end method

.method private static appendFormatParameter(Landroid/net/Uri$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 725
    const-string v0, "format"

    const-string v1, "2,3,8,9"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 726
    return-void
.end method

.method private static appendPageParameters(Landroid/net/Uri$Builder;II)V
    .locals 2
    .parameter "builder"
    .parameter "startIndex"
    .parameter "maxResults"

    .prologue
    .line 697
    const-string v0, "start-index"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 698
    const-string v0, "max-results"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 699
    return-void
.end method

.method private static appendQueryVideoFeedParameters(Landroid/net/Uri$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 669
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendFormatParameter(Landroid/net/Uri$Builder;)V

    .line 670
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParameters(Landroid/net/Uri$Builder;)V

    .line 671
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendSafeSearchParameter(Landroid/net/Uri$Builder;)V

    .line 672
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendCountryRestrictionParameter(Landroid/net/Uri$Builder;)V

    .line 673
    return-void
.end method

.method private static appendSafeSearchParameter(Landroid/net/Uri$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 702
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    if-eqz v0, :cond_0

    .line 703
    const-string v0, "safeSearch"

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/SafeSearch;->getMode()Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 706
    :cond_0
    return-void
.end method

.method public static getAddCommentRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "commentsUri"
    .parameter "userAuth"
    .parameter "comment"

    .prologue
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><content>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</content>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</entry>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getAddToFavoritesRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4
    .parameter "videoId"
    .parameter "userAuth"

    .prologue
    .line 502
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "favorites"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 507
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\'><id>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</id>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</entry>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    return-object v2
.end method

.method public static getAddToPlaylistRequest(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "videoId"
    .parameter "playlistUri"
    .parameter "userAuth"

    .prologue
    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</entry>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getBrandingRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "channel"

    .prologue
    .line 463
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "partners"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "branding"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 469
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getCategoriesRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4
    .parameter "language"
    .parameter "countryCode"

    .prologue
    .line 273
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "gdata.youtube.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "schemas/2007/categories.cat"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 277
    .local v0, builder:Landroid/net/Uri$Builder;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, locale:Ljava/lang/String;
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests;->SUPPORTED_LOCALES:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const-string v2, "hl"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 283
    .end local v1           #locale:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    return-object v2
.end method

.method public static getCommentsRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "uri"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParametersIfMissing(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getCreatePlaylistRequest(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4
    .parameter "title"
    .parameter "description"
    .parameter "isPrivate"
    .parameter "userAuth"

    .prologue
    .line 553
    const-string v2, "title cannot be null"

    invoke-static {p0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v2, "description cannot be null"

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "playlists"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 560
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><title type=\'text\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</title>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<summary>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</summary>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v3, "<yt:private/>"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</entry>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    return-object v2

    .line 560
    .end local v0           #content:Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static getCreatePlaylistRequest(Ljava/lang/String;ZLcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "title"
    .parameter "isPrivate"
    .parameter "userAuth"

    .prologue
    .line 547
    const-string v0, ""

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/youtube/core/async/GDataRequests;->getCreatePlaylistRequest(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getDeleteUploadRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "editUri"
    .parameter "userAuth"

    .prologue
    .line 521
    const-string v0, "editUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getEventsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "username"

    .prologue
    .line 261
    const-string v1, "Username cannot be empty"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "author"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 265
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParameters(Landroid/net/Uri$Builder;)V

    .line 266
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getFavoritesRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "username"

    .prologue
    .line 242
    const-string v0, "username cannot be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "username"

    .prologue
    .line 252
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 256
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDirectAcessVideoFeedParameters(Landroid/net/Uri$Builder;)V

    .line 257
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getMyFavoritesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "userAuth"

    .prologue
    .line 247
    const-string v0, "userAuth cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "default"

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyFeedRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "userAuth"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getMySubscriptionUpdatesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyPlaylistVideosRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "playlistUri"
    .parameter "userAuth"

    .prologue
    .line 330
    const-string v0, "playlistUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParametersIfMissing(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyPlaylistsRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "userAuth"

    .prologue
    .line 296
    const/16 v0, 0x32

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPlaylistsRequest(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyPlaylistsRequest(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "userAuth"
    .parameter "playlistsPerPage"

    .prologue
    .line 300
    const-string v0, "userAuth cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "default"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getPlaylistsUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyProfileRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "userAuth"

    .prologue
    .line 211
    const-string v0, "userAuth cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "default"

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyRecommendedVideosRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "userAuth"

    .prologue
    .line 363
    const-string v1, "userAuth cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "recommendations"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 368
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendQueryVideoFeedParameters(Landroid/net/Uri$Builder;)V

    .line 369
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getMySubscriptionUpdatesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "userAuth"

    .prologue
    .line 353
    const-string v1, "userAuth cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "newsubscriptionvideos"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 358
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendQueryVideoFeedParameters(Landroid/net/Uri$Builder;)V

    .line 359
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getMySubscriptionsRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "userAuth"

    .prologue
    .line 343
    const-string v1, "userAuth cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "subscriptions"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 348
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParameters(Landroid/net/Uri$Builder;)V

    .line 349
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getMyUploadsRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "userAuth"

    .prologue
    .line 228
    const-string v0, "userAuth cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "default"

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getUploadsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistVideosRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "playlistUri"

    .prologue
    .line 322
    const-string v0, "playlistUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParametersIfMissing(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistVideosRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "playlistId"

    .prologue
    .line 314
    const-string v0, "playlistId cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getPlaylistVideosUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getPlaylistVideosUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "playlistId"

    .prologue
    .line 335
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "playlists"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 338
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDirectAcessVideoFeedParameters(Landroid/net/Uri$Builder;)V

    .line 339
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getPlaylistsRequest(Ljava/lang/String;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "username"
    .parameter "playlistsPerPage"

    .prologue
    .line 291
    const-string v0, "username cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getPlaylistsUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getPlaylistsUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .parameter "username"
    .parameter "playlistsPerPage"

    .prologue
    .line 305
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "playlists"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 309
    .local v0, builder:Landroid/net/Uri$Builder;
    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->appendPageParameters(Landroid/net/Uri$Builder;II)V

    .line 310
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static getProfileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "username"

    .prologue
    .line 216
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getRateRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Z)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "like"

    .prologue
    .line 476
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "videos"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ratings"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 481
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><yt:rating value=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v3, "like"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</entry>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    return-object v2

    .line 481
    .end local v0           #content:Ljava/lang/String;
    :cond_0
    const-string v3, "dislike"

    goto :goto_0
.end method

.method public static getRelatedVideosRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "uri"

    .prologue
    .line 189
    const-string v0, "uri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParametersIfMissing(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getRelatedVideosRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "uri"
    .parameter "userAuth"

    .prologue
    .line 197
    const-string v0, "uri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDefaultPageParametersIfMissing(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoveFromFavoritesRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "editUri"
    .parameter "userAuth"

    .prologue
    .line 516
    const-string v0, "editUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchRequest(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "query"
    .parameter "timeFilter"

    .prologue
    .line 163
    const-string v1, "query cannot be empty"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "videos"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 167
    .local v0, builder:Landroid/net/Uri$Builder;
    if-eqz p1, :cond_0

    .line 168
    const-string v1, "time"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 170
    :cond_0
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendQueryVideoFeedParameters(Landroid/net/Uri$Builder;)V

    .line 171
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getStandardFeedRequest(Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 5
    .parameter "feedType"
    .parameter "category"
    .parameter "countryCode"
    .parameter "timeFilter"

    .prologue
    .line 378
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, feedName:Ljava/lang/String;
    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "standardfeeds"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 381
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {p2}, Lcom/google/android/youtube/core/async/GDataRequests;->getSupportedCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, supportedCountryCode:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 390
    :goto_0
    if-eqz p3, :cond_1

    .line 391
    const-string v3, "time"

    invoke-virtual {p3}, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 393
    :cond_1
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendQueryVideoFeedParameters(Landroid/net/Uri$Builder;)V

    .line 394
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    return-object v3

    .line 388
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method public static getStreamsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "videoId"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscribeToActivityRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4
    .parameter "username"
    .parameter "userAuth"

    .prologue
    .line 626
    const-string v2, "username can\'t be empty"

    invoke-static {p0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 627
    const-string v2, "userAuth can\'t be null"

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "subscriptions"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 633
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><category scheme=\'http://gdata.youtube.com/schemas/2007/subscriptiontypes.cat\' term=\'user\'/><yt:username>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</yt:username>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</entry>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    return-object v2
.end method

.method public static getSubscribeToUploadsRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4
    .parameter "username"
    .parameter "userAuth"

    .prologue
    .line 645
    const-string v2, "username can\'t be empty"

    invoke-static {p0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 646
    const-string v2, "userAuth can\'t be null"

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "subscriptions"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 652
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><category scheme=\'http://gdata.youtube.com/schemas/2007/subscriptiontypes.cat\' term=\'channel\'/><yt:username>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</yt:username>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</entry>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    return-object v2
.end method

.method private static getSupportedCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "countryCode"

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 434
    :goto_0
    return-object v1

    .line 433
    :cond_0
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, code:Ljava/lang/String;
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->SUPPORTED_REGIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public static getTheFeedRequest()Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3

    .prologue
    .line 176
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thefeed"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 178
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getUnsubscribeRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "editUri"
    .parameter "userAuth"

    .prologue
    .line 664
    const-string v0, "subscription editUri may not be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "username"

    .prologue
    .line 223
    const-string v0, "username cannot be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getUploadsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getUploadsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "username"

    .prologue
    .line 233
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "uploads"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 237
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->appendDirectAcessVideoFeedParameters(Landroid/net/Uri$Builder;)V

    .line 238
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getUserProfileRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "username"

    .prologue
    .line 206
    const-string v0, "username cannot be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3
    .parameter "videoId"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "videos"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 142
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "restriction"

    const-string v2, "US"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 144
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static setCountryCodeRestrict(Ljava/lang/String;)V
    .locals 2
    .parameter "countryCodeRestrict"

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setSafeSearch(Lcom/google/android/youtube/core/utils/SafeSearch;)V
    .locals 0
    .parameter "safeSearch"

    .prologue
    .line 126
    sput-object p0, Lcom/google/android/youtube/core/async/GDataRequests;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    .line 127
    return-void
.end method
