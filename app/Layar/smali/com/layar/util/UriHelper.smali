.class public Lcom/layar/util/UriHelper;
.super Ljava/lang/Object;
.source "UriHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/util/UriHelper$LocationUpdater;
    }
.end annotation


# static fields
.field public static final API_PATTERN_COUNTRY:Ljava/lang/String; = "<country>"

.field public static final API_PATTERN_LANGUAGE:Ljava/lang/String; = "<lang>"

.field public static final API_PATTERN_LAYERNAME:Ljava/lang/String; = "<layername>"

.field private static final PARAM_ALT:Ljava/lang/String; = "alt"

.field private static final PARAM_CC:Ljava/lang/String; = "countryCode"

.field private static final PARAM_LANG:Ljava/lang/String; = "lang"

.field private static final PARAM_LAT:Ljava/lang/String; = "lat"

.field private static final PARAM_LOCAL_CC:Ljava/lang/String; = "localCountryCode"

.field private static final PARAM_LON:Ljava/lang/String; = "lon"

.field private static final PARAM_PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_LOCATION_LONG:J = 0x3a98L

.field private static final UPDATE_LOCATION_SHORT:J = 0x1388L

.field private static sInstance:Lcom/layar/util/UriHelper;


# instance fields
.field public countryCode:Ljava/lang/String;

.field public isCountryCodeSet:Z

.field public lang:Ljava/lang/String;

.field public localCountryCode:Ljava/lang/String;

.field public localCountryName:Ljava/lang/String;

.field private final mGeoCoder:Landroid/location/Geocoder;

.field private final mLocationUpdater:Lcom/layar/util/UriHelper$LocationUpdater;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mSensorHelper:Lcom/layar/util/SensorHelper;

.field private final mUserManager:Lcom/layar/data/user/UserManager;

.field public phoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/layar/util/UriHelper;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/util/UriHelper;->TAG:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/util/UriHelper;->sInstance:Lcom/layar/util/UriHelper;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "intl"

    iput-object v0, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/util/UriHelper;->isCountryCodeSet:Z

    .line 56
    iput-object v1, p0, Lcom/layar/util/UriHelper;->localCountryName:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;

    .line 59
    const-string v0, "someDummyId"

    iput-object v0, p0, Lcom/layar/util/UriHelper;->phoneId:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/layar/data/user/UserManager;

    invoke-direct {v0, p1}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/util/UriHelper;->mUserManager:Lcom/layar/data/user/UserManager;

    .line 147
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/util/UriHelper;->mPrefs:Landroid/content/SharedPreferences;

    .line 148
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/util/UriHelper;->mGeoCoder:Landroid/location/Geocoder;

    .line 149
    new-instance v0, Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-direct {v0, p0, v1}, Lcom/layar/util/UriHelper$LocationUpdater;-><init>(Lcom/layar/util/UriHelper;Lcom/layar/util/UriHelper$LocationUpdater;)V

    iput-object v0, p0, Lcom/layar/util/UriHelper;->mLocationUpdater:Lcom/layar/util/UriHelper$LocationUpdater;

    .line 155
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layar/util/UriHelper$1;

    invoke-direct {v1, p0}, Lcom/layar/util/UriHelper$1;-><init>(Lcom/layar/util/UriHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method

.method private declared-synchronized _getLang()Ljava/lang/String;
    .locals 5

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/layar/util/UriHelper;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "prefs.location.language"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;

    .line 491
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 492
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, newLang:Ljava/lang/String;
    const-string v2, "ZH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-CN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 503
    :cond_1
    iput-object v1, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;

    .line 504
    invoke-static {v1}, Lcom/layar/App;->onLanguageChanged(Ljava/lang/String;)V

    .line 506
    :cond_2
    iget-object v2, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 498
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-TW"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 489
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #newLang:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private _init(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 436
    iget-object v5, p0, Lcom/layar/util/UriHelper;->mLocationUpdater:Lcom/layar/util/UriHelper$LocationUpdater;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v5, v6, v7}, Lcom/layar/util/UriHelper$LocationUpdater;->postUpdate(J)V

    .line 438
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 439
    .local v4, tm:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_7

    .line 440
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 441
    const-string v5, "US"

    iput-object v5, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    .line 442
    iput-boolean v8, p0, Lcom/layar/util/UriHelper;->isCountryCodeSet:Z

    .line 458
    :goto_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, deviceId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 460
    iput-object v1, p0, Lcom/layar/util/UriHelper;->phoneId:Ljava/lang/String;

    .line 473
    .end local v1           #deviceId:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/layar/util/UriHelper;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "prefs.location.language"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;

    .line 474
    iget-object v5, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/layar/util/UriHelper;->_getLang()Ljava/lang/String;

    .line 477
    :cond_1
    iget-object v5, p0, Lcom/layar/util/UriHelper;->mUserManager:Lcom/layar/data/user/UserManager;

    invoke-virtual {v5}, Lcom/layar/data/user/UserManager;->isDeveloper()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 478
    iget-object v5, p0, Lcom/layar/util/UriHelper;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "prefs.location.countrycode"

    const-string v7, "AUTO"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, prefCountry:Ljava/lang/String;
    const-string v5, "AUTO"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 480
    iput-object v3, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    .line 481
    iput-boolean v8, p0, Lcom/layar/util/UriHelper;->isCountryCodeSet:Z

    .line 485
    .end local v3           #prefCountry:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/layar/util/UriHelper;->mLocationUpdater:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-virtual {v5}, Lcom/layar/util/UriHelper$LocationUpdater;->update()V

    .line 486
    return-void

    .line 444
    :cond_3
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, homeCountryCode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v10

    :goto_2
    iput-boolean v5, p0, Lcom/layar/util/UriHelper;->isCountryCodeSet:Z

    .line 446
    iget-boolean v5, p0, Lcom/layar/util/UriHelper;->isCountryCodeSet:Z

    if-eqz v5, :cond_5

    .line 447
    iput-object v2, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    .line 451
    :goto_3
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, curCountryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 453
    iput-object v0, p0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    goto :goto_0

    .end local v0           #curCountryCode:Ljava/lang/String;
    :cond_4
    move v5, v8

    .line 445
    goto :goto_2

    .line 449
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    goto :goto_3

    .line 455
    .restart local v0       #curCountryCode:Ljava/lang/String;
    :cond_6
    iput-object v9, p0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 468
    .end local v0           #curCountryCode:Ljava/lang/String;
    .end local v2           #homeCountryCode:Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    .line 469
    iput-boolean v10, p0, Lcom/layar/util/UriHelper;->isCountryCodeSet:Z

    .line 470
    iput-object v9, p0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/layar/util/UriHelper;)Lcom/layar/util/SensorHelper;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/layar/util/UriHelper;->mSensorHelper:Lcom/layar/util/SensorHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/util/UriHelper;)Landroid/location/Geocoder;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/layar/util/UriHelper;->mGeoCoder:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/layar/util/UriHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/util/UriHelper;Lcom/layar/util/SensorHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/layar/util/UriHelper;->mSensorHelper:Lcom/layar/util/SensorHelper;

    return-void
.end method

.method private appendQueryString(Ljava/lang/String;Landroid/net/Uri$Builder;)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "builder"

    .prologue
    const/16 v6, 0x26

    const/4 v5, 0x1

    .line 387
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, queryString:Ljava/lang/String;
    move-object v2, p1

    .line 389
    .local v2, res:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 391
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 393
    .local v0, lastChar:C
    const/16 v3, 0x3f

    if-eq v0, v3, :cond_0

    if-ne v0, v6, :cond_2

    .line 394
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .end local v0           #lastChar:C
    :cond_1
    :goto_0
    return-object v2

    .line 396
    .restart local v0       #lastChar:C
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 399
    .end local v0           #lastChar:C
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private basicParameters(Z)Ljava/util/ArrayList;
    .locals 4
    .parameter "useUserProfile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "phoneId"

    iget-object v3, p0, Lcom/layar/util/UriHelper;->phoneId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "version"

    const-string v3, "5.0"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "countryCode"

    invoke-direct {p0, p1}, Lcom/layar/util/UriHelper;->getCountryCode(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lang"

    invoke-direct {p0}, Lcom/layar/util/UriHelper;->_getLang()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, p0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "localCountryCode"

    iget-object v3, p0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/layar/util/UriHelper;->mUserManager:Lcom/layar/data/user/UserManager;

    invoke-virtual {v1}, Lcom/layar/data/user/UserManager;->authenticationParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 285
    return-object v0
.end method

.method private getCountryCode(Z)Ljava/lang/String;
    .locals 3
    .parameter "useUserProfile"

    .prologue
    .line 295
    if-eqz p1, :cond_1

    .line 296
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v1

    .line 297
    .local v1, userManager:Lcom/layar/data/user/UserManager;
    invoke-virtual {v1}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v1}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/data/user/User;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .local v0, countryCode:Ljava/lang/String;
    :goto_0
    move-object v2, v0

    .line 303
    .end local v0           #countryCode:Ljava/lang/String;
    .end local v1           #userManager:Lcom/layar/data/user/UserManager;
    :goto_1
    return-object v2

    .line 300
    .restart local v1       #userManager:Lcom/layar/data/user/UserManager;
    :cond_0
    iget-object v2, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    .line 303
    .end local v1           #userManager:Lcom/layar/data/user/UserManager;
    :cond_1
    iget-object v2, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getInstance()Lcom/layar/util/UriHelper;
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lcom/layar/util/UriHelper;->sInstance:Lcom/layar/util/UriHelper;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/layar/util/UriHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".initialize(context) before using getInstance()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    sget-object v0, Lcom/layar/util/UriHelper;->sInstance:Lcom/layar/util/UriHelper;

    return-object v0
.end method

.method private getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "param"

    .prologue
    const/4 v3, 0x0

    .line 406
    if-nez p1, :cond_0

    move-object v2, v3

    .line 432
    :goto_0
    return-object v2

    .line 408
    :cond_0
    const-string v2, "lat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v1

    .line 410
    .local v1, sensor:Lcom/layar/util/SensorHelper;
    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 411
    .local v0, location:Landroid/location/Location;
    if-eqz v0, :cond_7

    .line 412
    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 413
    .end local v0           #location:Landroid/location/Location;
    .end local v1           #sensor:Lcom/layar/util/SensorHelper;
    :cond_1
    const-string v2, "lon"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v1

    .line 415
    .restart local v1       #sensor:Lcom/layar/util/SensorHelper;
    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 416
    .restart local v0       #location:Landroid/location/Location;
    if-eqz v0, :cond_7

    .line 417
    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 418
    .end local v0           #location:Landroid/location/Location;
    .end local v1           #sensor:Lcom/layar/util/SensorHelper;
    :cond_2
    const-string v2, "alt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 419
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v1

    .line 420
    .restart local v1       #sensor:Lcom/layar/util/SensorHelper;
    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 421
    .restart local v0       #location:Landroid/location/Location;
    if-eqz v0, :cond_7

    .line 422
    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 423
    .end local v0           #location:Landroid/location/Location;
    .end local v1           #sensor:Lcom/layar/util/SensorHelper;
    :cond_3
    const-string v2, "lang"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    iget-object v2, p0, Lcom/layar/util/UriHelper;->lang:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_4
    const-string v2, "countryCode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 426
    iget-object v2, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    goto :goto_0

    .line 427
    :cond_5
    const-string v2, "localCountryCode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 428
    iget-object v2, p0, Lcom/layar/util/UriHelper;->localCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 429
    :cond_6
    const-string v2, "version"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 430
    const-string v2, "5.0"

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    .line 432
    goto/16 :goto_0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/layar/util/UriHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    sget-object v0, Lcom/layar/util/UriHelper;->sInstance:Lcom/layar/util/UriHelper;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/layar/util/UriHelper;

    invoke-direct {v0, p0}, Lcom/layar/util/UriHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/layar/util/UriHelper;->sInstance:Lcom/layar/util/UriHelper;

    .line 172
    :cond_0
    sget-object v0, Lcom/layar/util/UriHelper;->sInstance:Lcom/layar/util/UriHelper;

    invoke-direct {v0, p0}, Lcom/layar/util/UriHelper;->_init(Landroid/content/Context;)V

    .line 173
    sget-object v0, Lcom/layar/util/UriHelper;->sInstance:Lcom/layar/util/UriHelper;

    return-object v0
.end method


# virtual methods
.method public addActionParams(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 7
    .parameter "post"
    .parameter "jsonParams"

    .prologue
    .line 364
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/layar/util/UriHelper;->parseActionParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 365
    .local v3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v2, nameValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 370
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 371
    .local v0, ent:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 376
    .end local v0           #ent:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v2           #nameValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object p1

    .line 367
    .restart local v2       #nameValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v3       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 368
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, p0, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #nameValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public appendActionParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "jsonParams"

    .prologue
    .line 315
    invoke-virtual {p0, p2}, Lcom/layar/util/UriHelper;->parseActionParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 316
    .local v2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 317
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    invoke-direct {p0, p1, v0}, Lcom/layar/util/UriHelper;->appendQueryString(Ljava/lang/String;Landroid/net/Uri$Builder;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 317
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method public appendBasicParams(Landroid/net/Uri$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;Z)V

    .line 262
    return-void
.end method

.method public appendBasicParams(Landroid/net/Uri$Builder;Z)V
    .locals 5
    .parameter "builder"
    .parameter "useUserProfile"

    .prologue
    .line 265
    invoke-direct {p0, p2}, Lcom/layar/util/UriHelper;->basicParameters(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    .local v0, basicParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    return-void

    .line 266
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 267
    .local v1, nameValuePair:Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method public appendBasicParams(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layar/util/UriHelper;->basicParameters(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    return-void
.end method

.method public appendBasicParams(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "json"

    .prologue
    .line 250
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/layar/util/UriHelper;->basicParameters(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    .local v0, basicParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    .end local v0           #basicParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    return-void

    .line 251
    .restart local v0       #basicParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 252
    .local v1, nameValuePair:Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v0           #basicParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v1           #nameValuePair:Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public appendLocationParams(Landroid/net/Uri$Builder;DD)Landroid/net/Uri$Builder;
    .locals 2
    .parameter "builder"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 205
    const-string v0, "lat"

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 206
    const-string v0, "lon"

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 207
    return-object p1
.end method

.method public appendLocationParams(Landroid/net/Uri$Builder;DDD)Landroid/net/Uri$Builder;
    .locals 2
    .parameter "builder"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"

    .prologue
    .line 212
    const-string v0, "lat"

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    const-string v0, "lon"

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    const-string v0, "alt"

    invoke-static {p6, p7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    return-object p1
.end method

.method public appendLocationParams(Landroid/net/Uri$Builder;DDI)Landroid/net/Uri$Builder;
    .locals 3
    .parameter "builder"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"

    .prologue
    .line 220
    invoke-virtual/range {p0 .. p5}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;DD)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 221
    const-string v1, "radius"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 222
    return-object p1
.end method

.method public appendLocationParams(Landroid/net/Uri$Builder;Landroid/location/Location;)Landroid/net/Uri$Builder;
    .locals 8
    .parameter "builder"
    .parameter "location"

    .prologue
    .line 194
    if-nez p2, :cond_0

    move-object v0, p1

    .line 199
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    .line 197
    invoke-virtual/range {v0 .. v7}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;DDD)Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    .line 199
    invoke-virtual/range {v0 .. v5}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;DD)Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public fixCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 181
    const-string v0, "<country>"

    iget-object v1, p0, Lcom/layar/util/UriHelper;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fixLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 185
    const-string v0, "<lang>"

    invoke-direct {p0}, Lcom/layar/util/UriHelper;->_getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fixLayer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "layerName"

    .prologue
    .line 189
    const-string v0, "<layername>"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAboutUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 226
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 227
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 228
    const-string v2, "dev.layar.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 229
    const-string v2, "/resources/documents/aboutlayar"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 230
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {p0, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 231
    const-string v1, "versionstring"

    const-string v2, "5.0.3 (15224)"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 232
    const-string v1, "version"

    const-string v2, "5.0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public parseActionParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .parameter "jsonParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v5, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    :try_start_0
    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-object v5

    .line 336
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 338
    .local v1, count:I
    if-eqz v1, :cond_0

    .line 341
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 342
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, param:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 344
    invoke-direct {p0, v3}, Lcom/layar/util/UriHelper;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, paramValue:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 346
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v4           #paramValue:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 349
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #param:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public updateLocationValues()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/layar/util/UriHelper;->mLocationUpdater:Lcom/layar/util/UriHelper$LocationUpdater;

    invoke-virtual {v0}, Lcom/layar/util/UriHelper$LocationUpdater;->update()V

    .line 178
    return-void
.end method
