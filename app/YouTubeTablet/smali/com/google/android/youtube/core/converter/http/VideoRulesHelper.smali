.class public final Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;
.super Ljava/lang/Object;
.source "VideoRulesHelper.java"


# static fields
.field private static final LINK_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEDIA_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video$MediaType;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVIE_GENRES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELEASE_MEDIUMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_GENRES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATES_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x5

    .line 45
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 46
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$State;>;"
    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v5, "processing"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v5, "deleted"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->DELETED:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v5, "requesterRegion"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->COUNTRY_RESTRICTED:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v5, "limitedSyndication"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->NOT_AVAILABLE_ON_MOBILE:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v5, "private"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->PRIVATE:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v5, "copyright"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->COPYRIGHT:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v5, "inappropriate"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->INAPPROPRIATE:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v5, "duplicate"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->DUPLICATE:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v5, "termsOfUse"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->TERMS_OF_USE:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v5, "suspended"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->ACCOUNT_SUSPENDED:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v5, "tooLong"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->VIDEO_TOO_LONG:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v5, "blocked"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->BLOCKED_BY_OWNER:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v5, "cantProcess"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->CANT_PROCESS:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v5, "invalidFormat"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->INVALID_FORMAT:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v5, "unsupportedCodec"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->UNSUPPORTED_CODEC:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v5, "empty"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->EMPTY:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v5, "tooSmall"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->TOO_SMALL:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->STATES_MAP:Ljava/util/Map;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$MediaType;>;"
    const-string v5, "1"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v5, "2"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v5, "3"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v5, "5"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->MEDIA_TYPES:Ljava/util/Map;

    .line 92
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "0"

    const-string v6, "Unspecified"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v5, "1"

    const-string v6, "Film"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v5, "2"

    const-string v6, "PremiumTv"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v5, "3"

    const-string v6, "BasicTv"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v5, "4"

    const-string v6, "TerrestrialTv"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v5, "5"

    const-string v6, "Promotional"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v5, "6"

    const-string v6, "Web"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v5, "7"

    const-string v6, "DirectToVideo"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->RELEASE_MEDIUMS:Ljava/util/Map;

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 111
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;>;"
    const-string v5, "0"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v5, "1"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v5, "2"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v5, "3"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CLASSICS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v5, "4"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v5, "5"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CRIME:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v5, "6"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v5, "7"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v5, "8"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FAMILY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v5, "9"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FOREIGN:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v5, "10"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->HORROR:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v5, "11"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->MYSTERY_AND_SUSPENSE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v5, "12"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ROMANCE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v5, "13"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v5, "15"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->MOVIE_GENRES:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    const/16 v5, 0x1e

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;>;"
    const-string v5, "0"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v5, "1"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v5, "2"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v5, "3"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CLASSIC_TV:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v5, "4"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v5, "5"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v5, "6"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HOME_AND_GARDEN:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v5, "7"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NEWS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v5, "8"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->REALITY_AND_GAMES:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v5, "9"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_AND_TECHNOLOGY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v5, "10"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v5, "11"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SOAPS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v5, "13"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v5, "14"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->TRAVEL:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v5, "15"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->WEB_ORIGINALS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v5, "16"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CELEBRITY_AND_ENTERTAINMENT:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v5, "17"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v5, "20"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NATURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v5, "21"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->BEAUTY_AND_FASHION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v5, "23"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->FOOD:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v5, "24"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->GAMING:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v5, "25"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HEALTH_AND_FITNESS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v5, "26"

    sget-object v6, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->LEARNING_AND_EDUCATION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->SHOW_GENRES:Ljava/util/Map;

    .line 170
    new-instance v5, Ljava/util/HashSet;

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "http://gdata.youtube.com/schemas/2007#video.related"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "http://gdata.youtube.com/schemas/2007#video.ratings"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "edit"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "http://gdata.youtube.com/schemas/2007#video.captionTracks"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "http://gdata.youtube.com/schemas/2007#video.trailers"

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->LINK_ELEMENTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->STATES_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->LINK_ELEMENTS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->MEDIA_TYPES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->RELEASE_MEDIUMS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->MOVIE_GENRES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->SHOW_GENRES:Ljava/util/Map;

    return-object v0
.end method

.method private static addVideoInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V
    .locals 3
    .parameter "builder"
    .parameter "prefix"
    .parameter "useHqThumbnails"

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entry/media:group/media:content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$23;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$23;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/media:thumbnail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$22;

    invoke-direct {v2, p2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$22;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/media:player"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$21;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$21;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/yt:duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$20;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$20;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/media:restriction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$19;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$19;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/media:rating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$18;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$18;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/yt:videoid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$17;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$17;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/media:credit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$16;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$16;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/media:description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$15;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$15;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/media:keywords"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$14;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$14;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/yt:statistics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$13;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$13;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/link"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$12;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$12;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$11;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/yt:rating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$10;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$10;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/yt:claimed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$9;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$9;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/yt:accessControl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$8;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/gd:comments/gd:feedLink"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$7;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/app:control/yt:state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$6;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/published"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$5;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/yt:uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$4;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$3;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entry/media:group/media:category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$27;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$27;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/yt:firstReleased"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$26;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$26;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/yt:availability"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$25;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$25;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/media:group/media:price"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$24;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$24;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    .line 574
    return-void
.end method

.method public static addVideoPageRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V
    .locals 2
    .parameter "builder"
    .parameter "prefix"
    .parameter "useHqThumbnails"

    .prologue
    .line 195
    const-string v0, "rules may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {p0, p1, p2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->addVideoInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$1;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    .line 209
    return-void
.end method

.method public static addVideoRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V
    .locals 2
    .parameter "builder"
    .parameter "prefix"
    .parameter "useHqThumbnails"

    .prologue
    .line 220
    const-string v0, "rules may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p0, p1, p2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->addVideoInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$2;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    .line 228
    return-void
.end method
