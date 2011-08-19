.class public Lcom/google/android/voicesearch/GservicesHelper;
.super Ljava/lang/Object;
.source "GservicesHelper.java"


# static fields
.field private static final DEFAULT_ADVANCED_FEATURES_ENABLED:Z = false

.field private static final DEFAULT_ALTERNATE_BACKOFF_LANGUAGES:Ljava/lang/String; = "zh-CN:cmn-Hans-CN zh-TW:cmn-Hant-TW zh-HK:yue-Hant-HK zh-SG:cmn-Hans-CN zh:cmn-Hans-CN ja:ja-JP de-CH:de-DE de-AT:de-DE de-LI:de-DE de:de-DE es-AR:es-ES es-BO:es-ES es-CL:es-ES es-CR:es-ES es-CO:es-ES es-DO:es-ES es-EC:es-ES es-GT:es-ES es-HN:es-ES es-NI:es-ES es-MX:es-ES es-PA:es-ES es-PE:es-ES es-PR:es-ES es-PY:es-ES es-SV:es-ES es-US:es-ES es-UY:es-ES es-VE:es-ES es:es-ES fr-BE:fr-FR fr-CH:fr-FR fr:fr-FR fr-CA:fr-FR it-CH:it-IT it:it-IT ko:ko-KR pl:pl-PL cs:cs-CZ ru:ru-RU tr:tr-TR pt-PT:pt-BR pt:pt-BR pt-AO:pt-BR nl-BE:nl-NL"

.field private static final DEFAULT_CONNECTION_RETRIES:I = 0x1

.field private static final DEFAULT_ENCODING_THREE_G:Ljava/lang/String; = "AMR_NB"

.field private static final DEFAULT_ENCODING_WIFI:Ljava/lang/String; = "AMR_NB"

.field private static final DEFAULT_ENDPOINTER_COMPLETE_SILENCE_MS:J = 0x2eeL

.field private static final DEFAULT_ENDPOINTER_POSSIBLY_COMPLETE_SILENCE_MS:J = -0x1L

.field private static final DEFAULT_END_RESULT_TIMEOUT_MS:I = 0x32c8

.field private static final DEFAULT_EXTRA_TOTAL_RESULT_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_HELP_HINT_BUBBLE_MAX_APP_START_COUNT:I = 0xf

.field private static final DEFAULT_HELP_HINT_BUBBLE_MAX_HELP_COUNT:I = 0x3

.field private static final DEFAULT_HELP_VIDEO_URL:Ljava/lang/String; = ""

.field private static final DEFAULT_HINT_DISPLAY_THRESHOLD:I = 0x2

.field private static final DEFAULT_LANGUAGE_OVERRIDE:Ljava/lang/String; = null

.field private static final DEFAULT_MOBILE_PRIVACY_URL:Ljava/lang/String; = "http://www.google.com/mobile/privacy.html"

.field private static final DEFAULT_MOFE_HTTP_URL:Ljava/lang/String; = null

.field private static final DEFAULT_MOFE_PROTO_URL:Ljava/lang/String; = null

.field private static final DEFAULT_NAVIGATION_ENABLED:I = 0x0

.field private static final DEFAULT_NETWORK_CONNECTION_TIMEOUT_MILLIS:I = 0x2710

.field private static final DEFAULT_PERSONALIZATION_COUNTRIES:Ljava/lang/String; = ""

.field private static final DEFAULT_PERSONALIZATION_DASHBOARD_URL:Ljava/lang/String; = "https://www.google.com/dashboard/"

.field private static final DEFAULT_PERSONALIZATION_MORE_INFO_URL:Ljava/lang/String; = "http://www.google.com/support/mobile/bin/answer.py?answer=186263"

.field private static final DEFAULT_SEARCH_URL_PREFIX:Ljava/lang/String; = "http://www.google.com/m/search?v=UTF-8&source=mobilesearchapp-vs&channel=iss&uipref=6"

.field private static final DEFAULT_SPEECH_TIMEOUT_MILLIS:I = 0x2710

.field private static final DEFAULT_SSFE_URL:Ljava/lang/String; = "http://www.google.com/m/voice-search"

.field private static final DEFAULT_SUPPORTED_ACTIONS:Ljava/lang/String; = "en-US:14,18,2,12,13,15,4,17,1,6,3 en-CA:2,3,4,1 en-GB:2,3,4,1 en-AU:2,3,4,1 en-NZ:2,3,4,1 en-IN:2,3,4,1 en-001:2,3,4,1 cmn-Hans-CN: cmn-Hant-TW: cmn-Hans-SG: ja-JP: de-DE: es-ES: fr-FR: it-IT: ko-KR: pl-PL: cs-CZ: ru-RU: tr-TR: pt-BR: nl-NL: af-ZA: en-ZA: zu-ZA: yue-Hant-HK:"

.field private static final DEFAULT_SUPPORTED_LANGUAGES:Ljava/lang/String; = "af-ZA cmn-Hans-CN cmn-Hans-HK cmn-Hant-TW yue-Hant-HK cs-CZ nl-NL en-AU en-CA en-IN en-NZ en-ZA en-GB en-US en-001 fr-FR de-DE zu-ZA it-IT ja-JP ko-KR pl-PL pt-BR ru-RU es-ES tr-TR"

.field private static final DEFAULT_TCP_ATTEMPTS:I = 0x1

.field private static final DEFAULT_UTTERANCE_LENGTH_TIMEOUT_FACTOR:F = 0.5f

.field private static final DEFAULT_WEB_VIEW_BASE_URL:Ljava/lang/String; = "http://www.google.com/"

.field private static final DEFAULT_WEB_VIEW_WHITELIST:Ljava/lang/String; = "http://www.google.com/m/ http://www.google.com/m? http://www.google.com/accounts https://www.google.com/accounts http://m.google.com/app/updates https://m.google.com/app/updates about:blank"

.field private static final FALSE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final GSERVICES_KEY_ADVANCED_FEATURES_ENABLED:Ljava/lang/String; = "voice_search:advanced_features_enabled"

.field private static final GSERVICES_KEY_ALTERNATE_BACKOFF_LANGUAGES:Ljava/lang/String; = "voice_search:alternate_backoff_languages"

.field private static final GSERVICES_KEY_CONNECTION_RETRIES:Ljava/lang/String; = "voice_search:connection_tries"

.field private static final GSERVICES_KEY_ENCODING_THREE_G:Ljava/lang/String; = "voice_search:encoding_three_g"

.field private static final GSERVICES_KEY_ENCODING_WIFI:Ljava/lang/String; = "voice_search:encoding_wifi"

.field private static final GSERVICES_KEY_ENDPOINTER_COMPLETE_SILENCE_MS:Ljava/lang/String; = "voice_search:endpointer_complete_silence_ms"

.field private static final GSERVICES_KEY_ENDPOINTER_POSSIBLY_COMPLETE_SILENCE_MS:Ljava/lang/String; = "voice_search:endpointer_possibly_complete_silence_ms"

.field private static final GSERVICES_KEY_END_RESULT_TIMEOUT_MS:Ljava/lang/String; = "voice_search:end_result_timeout_ms"

.field private static final GSERVICES_KEY_EXTRA_TOTAL_RESULT_TIMEOUT_MS:Ljava/lang/String; = "voice_search:extra_total_result_timeout_ms"

.field private static final GSERVICES_KEY_HELP_HINT_BUBBLE_MAX_APP_START_COUNT:Ljava/lang/String; = "voice_search:help_hint_bubble_max_app_start_count"

.field private static final GSERVICES_KEY_HELP_HINT_BUBBLE_MAX_HELP_COUNT:Ljava/lang/String; = "voice_search:help_hint_bubble_max_help_count"

.field private static final GSERVICES_KEY_HELP_VIDEO_URL:Ljava/lang/String; = "voice_search:help_video_url"

.field private static final GSERVICES_KEY_HINT_DISPLAY_THRESHOLD:Ljava/lang/String; = "voice_search:hint_display_threshold"

.field private static final GSERVICES_KEY_LANGUAGE_OVERRIDE:Ljava/lang/String; = "voice_search:language_override"

.field private static final GSERVICES_KEY_MOBILE_PRIVACY_URL:Ljava/lang/String; = "voice_search:mobile_privacy_url"

.field private static final GSERVICES_KEY_MOFE_HTTP_URL:Ljava/lang/String; = "voice_search:mofe_http_url"

.field private static final GSERVICES_KEY_MOFE_PROTO_URL:Ljava/lang/String; = "voice_search:mofe_proto_url"

.field private static final GSERVICES_KEY_NAVIGATION_ENABLED:Ljava/lang/String; = "maps_enable_navigation"

.field private static final GSERVICES_KEY_NETWORK_TIMEOUT_MS:Ljava/lang/String; = "voice_search:network_timeout_ms"

.field private static final GSERVICES_KEY_PERSONALIZATION_COUNTRIES:Ljava/lang/String; = "voice_search:personalization_v2_countries"

.field private static final GSERVICES_KEY_PERSONALIZATION_DASHBOARD_URL:Ljava/lang/String; = "voice_search:personalization_dashboard_url"

.field private static final GSERVICES_KEY_PERSONALIZATION_MORE_INFO_URL:Ljava/lang/String; = "voice_search:personalization_more_info_url"

.field private static final GSERVICES_KEY_SEARCH_URL_PREFIX:Ljava/lang/String; = "voice_search:search_url_prefix"

.field private static final GSERVICES_KEY_SPEECH_TIMEOUT_MS:Ljava/lang/String; = "voice_search:speech_timeout_ms"

.field private static final GSERVICES_KEY_SSFE_URL:Ljava/lang/String; = "voice_search:url"

.field private static final GSERVICES_KEY_SUPPORTED_ACTIONS:Ljava/lang/String; = "voice_search:supported_actions_new_numbering_scheme"

.field private static final GSERVICES_KEY_SUPPORTED_LANGUAGES:Ljava/lang/String; = "voice_search:supported_languages"

.field private static final GSERVICES_KEY_TCP_ATTEMPTS:Ljava/lang/String; = "voice_search:tcp_attempts"

.field private static final GSERVICES_KEY_UTTERANCE_LENGTH_TIMEOUT_FACTOR:Ljava/lang/String; = "voice_search:utterance_length_timeout_factor"

.field private static final GSERVICES_KEY_WEB_VIEW_BASE_URL:Ljava/lang/String; = "voice_search:web_view_base_url"

.field private static final GSERVICES_KEY_WEB_VIEW_WHITELIST:Ljava/lang/String; = "voice_search:web_view_whitelist"

.field private static final GSERVICES_STRING_OVERRIDE_KEY_PREFIX:Ljava/lang/String; = "voice_search:"

.field private static final SEPARATOR:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "GservicesHelper"

.field private static final TRUE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mValues:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 254
    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_MOFE_HTTP_URL:Ljava/lang/String;

    .line 261
    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_MOFE_PROTO_URL:Ljava/lang/String;

    .line 304
    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_LANGUAGE_OVERRIDE:Ljava/lang/String;

    .line 391
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 393
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    .line 419
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {p0}, Lcom/google/android/voicesearch/GservicesHelper;->refreshGservicesValues()V

    .line 414
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 480
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, p2

    .line 490
    :goto_0
    return v0

    .line 482
    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/GservicesHelper;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    :cond_2
    sget-object v0, Lcom/google/android/voicesearch/GservicesHelper;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :cond_3
    const-string v0, "GservicesHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to read gservices key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\") as boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    .line 490
    goto :goto_0
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 465
    if-nez p0, :cond_0

    move v0, p2

    .line 473
    :goto_0
    return v0

    .line 470
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    const-string v1, "GservicesHelper"

    const-string v2, "Gservices value is not a long"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, p2

    .line 473
    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 451
    if-nez p0, :cond_0

    move v0, p2

    .line 459
    :goto_0
    return v0

    .line 456
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    const-string v1, "GservicesHelper"

    const-string v2, "Gservices value is not a long"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, p2

    .line 459
    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 437
    if-nez p0, :cond_0

    move-wide v0, p2

    .line 445
    :goto_0
    return-wide v0

    .line 442
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v1, "GservicesHelper"

    const-string v2, "Gservices value is not a long"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, p2

    .line 445
    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 428
    if-nez p0, :cond_0

    move-object v0, p2

    .line 432
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public getAdvancedFeaturesEnabled()Z
    .locals 2

    .prologue
    .line 748
    const-string v0, "voice_search:advanced_features_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAlternateBackoffLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    const-string v0, "voice_search:alternate_backoff_languages"

    const-string v1, "zh-CN:cmn-Hans-CN zh-TW:cmn-Hant-TW zh-HK:yue-Hant-HK zh-SG:cmn-Hans-CN zh:cmn-Hans-CN ja:ja-JP de-CH:de-DE de-AT:de-DE de-LI:de-DE de:de-DE es-AR:es-ES es-BO:es-ES es-CL:es-ES es-CR:es-ES es-CO:es-ES es-DO:es-ES es-EC:es-ES es-GT:es-ES es-HN:es-ES es-NI:es-ES es-MX:es-ES es-PA:es-ES es-PE:es-ES es-PR:es-ES es-PY:es-ES es-SV:es-ES es-US:es-ES es-UY:es-ES es-VE:es-ES es:es-ES fr-BE:fr-FR fr-CH:fr-FR fr:fr-FR fr-CA:fr-FR it-CH:it-IT it:it-IT ko:ko-KR pl:pl-PL cs:cs-CZ ru:ru-RU tr:tr-TR pt-PT:pt-BR pt:pt-BR pt-AO:pt-BR nl-BE:nl-NL"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioEncoding3G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    const-string v0, "voice_search:encoding_three_g"

    const-string v1, "AMR_NB"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioEncodingWifi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 622
    const-string v0, "voice_search:encoding_wifi"

    const-string v1, "AMR_NB"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionRetries()I
    .locals 2

    .prologue
    .line 684
    const-string v0, "voice_search:connection_tries"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEndResultTimout()I
    .locals 2

    .prologue
    .line 702
    const-string v0, "voice_search:end_result_timeout_ms"

    const/16 v1, 0x32c8

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEndpointerCompleteSilenceMillis()J
    .locals 3

    .prologue
    .line 630
    const-string v0, "voice_search:endpointer_complete_silence_ms"

    const-wide/16 v1, 0x2ee

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/GservicesHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndpointerPossiblyCompleteSilenceMillis()J
    .locals 3

    .prologue
    .line 639
    const-string v0, "voice_search:endpointer_possibly_complete_silence_ms"

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/GservicesHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraTotalResultTimeout()I
    .locals 2

    .prologue
    .line 711
    const-string v0, "voice_search:extra_total_result_timeout_ms"

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHelpHintBubbleMaxAppStartCount()I
    .locals 2

    .prologue
    .line 666
    const-string v0, "voice_search:help_hint_bubble_max_app_start_count"

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHelpHintBubbleMaxHelpCount()I
    .locals 2

    .prologue
    .line 657
    const-string v0, "voice_search:help_hint_bubble_max_help_count"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHelpVideoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 582
    const-string v0, "voice_search:help_video_url"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHintDisplayThreshold()I
    .locals 2

    .prologue
    .line 648
    const-string v0, "voice_search:hint_display_threshold"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLanguageOverride()Ljava/lang/String;
    .locals 2

    .prologue
    .line 606
    const-string v0, "voice_search:language_override"

    sget-object v1, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_LANGUAGE_OVERRIDE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobilePrivacyUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 542
    const-string v0, "voice_search:mobile_privacy_url"

    const-string v1, "http://www.google.com/mobile/privacy.html"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMofeHttpUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    const-string v0, "voice_search:mofe_http_url"

    sget-object v1, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_MOFE_HTTP_URL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMofeProtoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    const-string v0, "voice_search:mofe_proto_url"

    sget-object v1, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_MOFE_PROTO_URL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationEnabled()I
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "maps_enable_navigation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNetworkTimeout()I
    .locals 2

    .prologue
    .line 720
    const-string v0, "voice_search:network_timeout_ms"

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPersonalizationCountries()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    const-string v0, "voice_search:personalization_v2_countries"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalizationDashboardUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    const-string v0, "voice_search:personalization_dashboard_url"

    const-string v1, "https://www.google.com/dashboard/"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalizationMoreInfoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    const-string v0, "voice_search:personalization_more_info_url"

    const-string v1, "http://www.google.com/support/mobile/bin/answer.py?answer=186263"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchUrlPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
    const-string v0, "voice_search:search_url_prefix"

    const-string v1, "http://www.google.com/m/search?v=UTF-8&source=mobilesearchapp-vs&channel=iss&uipref=6"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechTimeout()I
    .locals 2

    .prologue
    .line 675
    const-string v0, "voice_search:speech_timeout_ms"

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSsfeUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 550
    const-string v0, "voice_search:url"

    const-string v1, "http://www.google.com/m/voice-search"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringResourceOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voice_search:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedActions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    const-string v0, "voice_search:supported_actions_new_numbering_scheme"

    const-string v1, "en-US:14,18,2,12,13,15,4,17,1,6,3 en-CA:2,3,4,1 en-GB:2,3,4,1 en-AU:2,3,4,1 en-NZ:2,3,4,1 en-IN:2,3,4,1 en-001:2,3,4,1 cmn-Hans-CN: cmn-Hant-TW: cmn-Hans-SG: ja-JP: de-DE: es-ES: fr-FR: it-IT: ko-KR: pl-PL: cs-CZ: ru-RU: tr-TR: pt-BR: nl-NL: af-ZA: en-ZA: zu-ZA: yue-Hant-HK:"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    const-string v0, "voice_search:supported_languages"

    const-string v1, "af-ZA cmn-Hans-CN cmn-Hans-HK cmn-Hant-TW yue-Hant-HK cs-CZ nl-NL en-AU en-CA en-IN en-NZ en-ZA en-GB en-US en-001 fr-FR de-DE zu-ZA it-IT ja-JP ko-KR pl-PL pt-BR ru-RU es-ES tr-TR"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTcpAttempts()I
    .locals 2

    .prologue
    .line 693
    const-string v0, "voice_search:tcp_attempts"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUtteranceLengthTimoutFactor()F
    .locals 2

    .prologue
    .line 739
    const-string v0, "voice_search:utterance_length_timeout_factor"

    const/high16 v1, 0x3f00

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getWebViewBaseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    const-string v0, "voice_search:web_view_base_url"

    const-string v1, "http://www.google.com/"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewWhitelist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 598
    const-string v0, "voice_search:web_view_whitelist"

    const-string v1, "http://www.google.com/m/ http://www.google.com/m? http://www.google.com/accounts https://www.google.com/accounts http://m.google.com/app/updates https://m.google.com/app/updates about:blank"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleGservicesChange(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/google/android/voicesearch/GservicesHelper;->refreshGservicesValues()V

    .line 763
    return-void
.end method

.method protected refreshGservicesValues()V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "voice_search:"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    .line 424
    return-void
.end method
