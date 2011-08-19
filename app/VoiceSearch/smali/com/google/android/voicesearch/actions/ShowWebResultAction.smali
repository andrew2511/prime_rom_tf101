.class public Lcom/google/android/voicesearch/actions/ShowWebResultAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "ShowWebResultAction.java"


# static fields
.field private static final BROWSER_ACTION_PREFIX:Ljava/lang/String; = "browser"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/ShowWebResultAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final EXTRA_SOURCE_IS_GOOGLE:Ljava/lang/String; = "android.speech.extras.SOURCE_IS_GOOGLE"

.field private static final HEADER_GEO_POSITION:Ljava/lang/String; = "Geo-Position"

.field private static final HEADER_MASF_COOKIE:Ljava/lang/String; = "X-Masf-Cookie"

.field private static final USE_LOCATION_PARAM:Ljava/lang/String; = "&action=devloc"


# instance fields
.field private mApplicationId:Ljava/lang/String;

.field private final mHtml:Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private final mXGeoEncoder:Lcom/google/android/voicesearch/util/XGeoEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 82
    const/16 v2, 0x8

    const-string v3, "android.speech.action.VOICE_SEARCH_RESULTS"

    const-string v4, "browser"

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/google/android/voicesearch/util/XGeoEncoder;

    invoke-direct {v0}, Lcom/google/android/voicesearch/util/XGeoEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mXGeoEncoder:Lcom/google/android/voicesearch/util/XGeoEncoder;

    .line 85
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mHtml:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/google/android/voicesearch/util/XGeoEncoder;

    invoke-direct {v0}, Lcom/google/android/voicesearch/util/XGeoEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mXGeoEncoder:Lcom/google/android/voicesearch/util/XGeoEncoder;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mHtml:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mUrl:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/ShowWebResultAction$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getSafeSearchSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 196
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    const-string v1, "safeSearch"

    const-string v2, "moderate"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v0, "off"

    .line 204
    :goto_0
    return-object v0

    .line 201
    :cond_0
    const-string v1, "strict"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "strict"

    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "images"

    goto :goto_0
.end method

.method private getSearchUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 172
    if-nez p2, :cond_1

    const-string v1, ""

    .line 173
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getSearchUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v0, "&safe="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getSafeSearchSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v0, "&hl="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/voicesearch/LanguagePrefManager;->getHlParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, "&gl="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    if-eqz p3, :cond_0

    .line 180
    const-string v0, "&action=devloc"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_1
    const-string v1, "&q="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, p2

    .line 172
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 120
    const v0, 0x7f02001c

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->supportsIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 230
    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/LocationHelper;->shouldSendLocation()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getSearchUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 239
    if-nez p2, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    .line 243
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 244
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;

    move-result-object v2

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 254
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 258
    check-cast v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;

    .line 259
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getQuery()Ljava/lang/String;

    move-result-object v7

    .line 260
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 261
    if-nez v8, :cond_2

    .line 262
    invoke-interface {v2}, Lcom/google/android/voicesearch/LocationHelper;->shouldSendLocation()Z

    move-result v8

    invoke-direct {p0, p1, v7, v8}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getSearchUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 265
    :cond_2
    if-ne v0, p0, :cond_3

    move v9, v10

    .line 266
    :goto_2
    invoke-virtual {v3, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    invoke-virtual {v4, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 268
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_2

    .line 270
    :cond_4
    new-array v6, v11, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v10

    invoke-static {v6}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    const-string v6, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 273
    const-string v3, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    const-string v3, "android.speech.extras.VOICE_SEARCH_RESULT_HTML"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 277
    const-string v3, "android.speech.extras.VOICE_SEARCH_RESULT_HTML_BASE_URLS"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 281
    const-string v0, "com.android.browser.application_id"

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getCookieStore()Lcom/google/android/voicesearch/util/CookieStore;

    move-result-object v3

    .line 287
    const-string v4, "X-Masf-Cookie"

    invoke-virtual {v3}, Lcom/google/android/voicesearch/util/CookieStore;->getCookie()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-interface {v2}, Lcom/google/android/voicesearch/LocationHelper;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 291
    if-eqz v3, :cond_6

    .line 292
    const-string v4, "X-Geo"

    iget-object v5, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mXGeoEncoder:Lcom/google/android/voicesearch/util/XGeoEncoder;

    invoke-virtual {v5, v3}, Lcom/google/android/voicesearch/util/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_6
    invoke-interface {v2}, Lcom/google/android/voicesearch/LocationHelper;->getGeoPosition()Ljava/lang/String;

    move-result-object v2

    .line 297
    if-eqz v2, :cond_7

    .line 298
    const-string v3, "Geo-Position"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_7
    new-array v2, v11, [Landroid/os/Bundle;

    aput-object v0, v2, v10

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 302
    const-string v2, "android.speech.extras.EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 305
    const-string v0, "android.speech.extras.SOURCE_IS_GOOGLE"

    invoke-virtual {v1, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 307
    goto/16 :goto_0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f02001d

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f02001e

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "android.intent.action.WEB_SEARCH"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public setForwardApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public shouldPersistDisambig()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return-void
.end method
