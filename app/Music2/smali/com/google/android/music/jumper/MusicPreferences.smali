.class public Lcom/google/android/music/jumper/MusicPreferences;
.super Ljava/lang/Object;
.source "MusicPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final ALL_SONGS_SORT_ORDER:Ljava/lang/String; = "AllSongsSortOrder"

.field private static final ARTIST_SONGS_SORT_ORDER:Ljava/lang/String; = "ArtistSongsSortOrder"

.field public static final AUTH_TYPE:Ljava/lang/String; = "mail"

.field private static final CACHE_STREAMED_MUSIC:Ljava/lang/String; = "CacheStreamed"

.field private static final DEFAULT_CACHE_STREAMED_MUSIC:Z = true

.field private static final DEFAULT_DISPLAY_OPTIONS:I = 0x0

.field private static final DEFAULT_HIDE_NOW_PLAYING_BAR:Z = false

.field private static final DEFAULT_HIDE_WHEN_NOT_CONNECTED:Z = false

.field private static final DEFAULT_OFFLINEDL_ONLY_ON_WIFI:Z = true

.field private static final DEFAULT_SHOW_LABELS:Z = true

.field private static final DEFAULT_SONG_SORT_ORDER:I = 0x1

.field private static final DEFAULT_STREAM_ONLY_ON_WIFI:Z = false

.field private static final DEFAULT_TOP_LEVEL_DISPLAY_MODE:I = 0x0

.field private static final DEFAULT_USE_LIST_VIEWS_IN_LANDSCAPE:Z = false

.field private static final DEFAULT_WALL_DISPLAY_MODE:I = 0x0

.field private static final DISPLAY_OPTIONS:Ljava/lang/String; = "DisplayOptions"

.field public static final DISPLAY_OPTIONS_ALL:I = 0x0

.field public static final DISPLAY_OPTIONS_LOCAL_ONLY:I = 0x1

.field private static final GENRE_SONGS_SORT_ORDER:Ljava/lang/String; = "GenreSongsSortOrder"

.field private static final HIDE_NOW_PLAYING_BAR:Ljava/lang/String; = "HideNowPlayingBar"

.field private static final HIDE_WHEN_NOT_CONNECTED:Ljava/lang/String; = "HideWhenNotConnected"

.field private static final LOGGING_ID:Ljava/lang/String; = "StringNonNegativeLoggingId"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final OFFLINEDL_ONLY_ON_WIFI:Ljava/lang/String; = "OfflineDLOnlyOnWifi"

.field private static final PREF_FILE:Ljava/lang/String; = "MusicPreferences"

.field private static final RECENTLY_ADDED_SONGS_SORT_ORDER:Ljava/lang/String; = "RecentlyAddedSongsSortOrder"

.field private static final SELECTED_ACCOUNT:Ljava/lang/String; = "SelectedAccount"

.field private static final SHOW_LABELS:Ljava/lang/String; = "ShowLabels"

.field private static final STREAM_ONLY_ON_WIFI:Ljava/lang/String; = "StreamOnlyOnWifi"

.field private static final TAG:Ljava/lang/String; = "MusicPreferences"

.field private static final TOP_LEVEL_DISPLAY_MODE:Ljava/lang/String; = "WallDisplayMode"

.field private static final TUTORIAL_VIEWED:Ljava/lang/String; = "TutorialViewed"

.field private static final USE_LIST_VIEWS_IN_LANDSCAPE:Ljava/lang/String; = "useListViewsInLandscape"

.field private static final WALL_DISPLAY_MODE:Ljava/lang/String; = "WallDisplayMode"


# instance fields
.field private mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private final mContext:Landroid/content/Context;

.field private mGServicesContentObserver:Landroid/database/ContentObserver;

.field private mInFlightPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsLargeScreen:Z

.field private mIsStreamingEnabled:Z

.field private final mIsVoiceCapable:Z

.field private final mIsXLargeScreen:Z

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "MusicPreferences"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mInFlightPreferences:Ljava/util/Map;

    .line 92
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences$1;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 134
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$2;

    invoke-static {}, Lcom/google/android/music/MusicUtils;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/jumper/MusicPreferences$2;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mGServicesContentObserver:Landroid/database/ContentObserver;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsXLargeScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsXLargeScreen:Z

    .line 114
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsLargeScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsLargeScreen:Z

    .line 115
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsVoiceCapable:Z

    .line 117
    const-string v0, "MusicPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 118
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mGServicesContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabled()V

    .line 129
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/jumper/MusicPreferences;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/jumper/MusicPreferences;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mInFlightPreferences:Ljava/util/Map;

    return-object v0
.end method

.method private getBooleanPreference(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->getInFlightPreference(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 551
    .local v0, ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    move v1, p2

    .line 557
    .end local p0
    :goto_0
    return v1

    .line 555
    .restart local p0
    :cond_0
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 557
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private getFloatPreference(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->getInFlightPreference(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 562
    .local v0, ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    move v1, p2

    .line 568
    .end local p0
    :goto_0
    return v1

    .line 566
    .restart local p0
    :cond_0
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 568
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    goto :goto_0
.end method

.method private getInFlightPreference(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mInFlightPreferences:Ljava/util/Map;

    monitor-enter v2

    .line 607
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mInFlightPreferences:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 608
    .local v0, containsKey:Z
    const/4 v1, 0x0

    .line 609
    .local v1, value:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 610
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mInFlightPreferences:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 612
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 613
    .end local v0           #containsKey:Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->getInFlightPreference(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 595
    .local v0, ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    move v1, p2

    .line 601
    .end local p0
    :goto_0
    return v1

    .line 599
    .restart local p0
    :cond_0
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 601
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getIsLargeScreen()Z
    .locals 3

    .prologue
    .line 194
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 195
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0x3

    .line 196
    .local v1, screenSize:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getIsVoiceCapable()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 201
    iget-object v5, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 203
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_0

    move v5, v7

    .line 224
    :goto_0
    return v5

    .line 208
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-array v1, v5, [Ljava/lang/Class;

    .line 209
    .local v1, partypes:[Ljava/lang/Class;
    const-class v5, Landroid/telephony/TelephonyManager;

    const-string v6, "isVoiceCapable"

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 212
    .local v3, sIsVoiceCapable:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    .line 213
    .local v0, arglist:[Ljava/lang/Object;
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 214
    .local v2, retobj:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #retobj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 222
    .end local v0           #arglist:[Ljava/lang/Object;
    .end local v1           #partypes:[Ljava/lang/Class;
    .end local v3           #sIsVoiceCapable:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 224
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v5

    goto :goto_1

    .line 215
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method private getIsXLargeScreen()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 173
    :try_start_0
    const-class v3, Landroid/content/res/Configuration;

    const-string v4, "SCREENLAYOUT_SIZE_XLARGE"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 176
    .local v1, sScreenLayoutSizeXLarge:Ljava/lang/reflect/Field;
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    .local v0, config:Landroid/content/res/Configuration;
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    and-int/lit8 v2, v3, 0xf

    .line 180
    .local v2, xlargeValue:I
    iget v3, v0, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v3, v3, 0xf

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    .line 190
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #sScreenLayoutSizeXLarge:Ljava/lang/reflect/Field;
    .end local v2           #xlargeValue:I
    :goto_0
    return v3

    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #sScreenLayoutSizeXLarge:Ljava/lang/reflect/Field;
    .restart local v2       #xlargeValue:I
    :cond_0
    move v3, v5

    .line 180
    goto :goto_0

    .line 187
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #sScreenLayoutSizeXLarge:Ljava/lang/reflect/Field;
    .end local v2           #xlargeValue:I
    :catch_0
    move-exception v3

    :goto_1
    move v3, v5

    .line 190
    goto :goto_0

    .line 183
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #sScreenLayoutSizeXLarge:Ljava/lang/reflect/Field;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private getLongPreference(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->getInFlightPreference(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 584
    .local v0, ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object v1, p2

    .line 590
    .end local p0
    :goto_0
    return-object v1

    .line 588
    .restart local p0
    :cond_0
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    move-object v1, p0

    goto :goto_0

    .line 590
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method private getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->getInFlightPreference(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 573
    .local v0, ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object v1, p2

    .line 579
    .end local p0
    :goto_0
    return-object v1

    .line 577
    .restart local p0
    :cond_0
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0

    .line 579
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isHoneycomb()Z
    .locals 2

    .prologue
    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreGingerbread()Z
    .locals 2

    .prologue
    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshStreamingEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    .local v0, str:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 155
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    .line 159
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    if-nez v1, :cond_1

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setTutorialViewed(Z)V

    .line 163
    :cond_1
    return-void

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/tutorial/SignupStatus;->getInstance(Landroid/content/Context;)Lcom/google/android/music/tutorial/SignupStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/tutorial/SignupStatus;->hasVerifiedAccounts()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    goto :goto_0
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mInFlightPreferences:Ljava/util/Map;

    monitor-enter v0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mInFlightPreferences:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 620
    return-void

    .line 618
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private switchAccountAsync(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 379
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/jumper/MusicPreferences$4;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Landroid/accounts/Account;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method


# virtual methods
.method public clearSyncForUnselectedAccounts()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 340
    iget-object v6, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 341
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 342
    .local v5, selectedAccount:Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 343
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v0, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 344
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 345
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 346
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 342
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    return-void
.end method

.method public getAllSongsSortOrder()I
    .locals 2

    .prologue
    .line 444
    const-string v0, "AllSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getArtistSongsSortOrder()I
    .locals 2

    .prologue
    .line 452
    const-string v0, "ArtistSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDisplayOptions()I
    .locals 2

    .prologue
    .line 476
    const-string v0, "DisplayOptions"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGenreSongsSortOrder()I
    .locals 2

    .prologue
    .line 460
    const-string v0, "GenreSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHideWhenNotConnected()Z
    .locals 2

    .prologue
    .line 493
    const-string v0, "HideWhenNotConnected"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 532
    const-string v1, "StringNonNegativeLoggingId"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, loggingId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 534
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 535
    const-string v1, "StringNonNegativeLoggingId"

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    :cond_0
    return-object v0
.end method

.method public getRecentlyAddedSongsSortOrder()I
    .locals 2

    .prologue
    .line 468
    const-string v0, "RecentlyAddedSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelectedAccount()Landroid/accounts/Account;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 313
    const-string v5, "SelectedAccount"

    invoke-direct {p0, v5, v6}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, username:Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v5, v6

    .line 327
    :goto_0
    return-object v5

    .line 318
    :cond_0
    iget-object v5, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 319
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v5, "com.google"

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 320
    .local v3, tmpaccounts:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 321
    .local v2, selectedAccount:Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 322
    aget-object v5, v3, v1

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    aget-object v2, v3, v1

    :cond_1
    move-object v5, v2

    .line 327
    goto :goto_0

    .line 321
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getShowLabels(I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowLabels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTopLevelDisplayMode()I
    .locals 2

    .prologue
    .line 485
    const-string v0, "WallDisplayMode"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWallDisplayMode()I
    .locals 2

    .prologue
    .line 408
    const-string v0, "WallDisplayMode"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasIconsInPopupMenus()Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecentView()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public isCachedStreamingMusicEnabled()Z
    .locals 2

    .prologue
    .line 436
    const-string v0, "CacheStreamed"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isConfiguredStreamingAccount()Z
    .locals 2

    .prologue
    .line 335
    const-string v0, "SelectedAccount"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLargeScreen()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsLargeScreen:Z

    return v0
.end method

.method public isMenuKeySupported()Z
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycomb()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfflineDLOnlyOnWifi()Z
    .locals 2

    .prologue
    .line 511
    const-string v0, "OfflineDLOnlyOnWifi"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStreamOnlyOnWifi()Z
    .locals 2

    .prologue
    .line 502
    const-string v0, "StreamOnlyOnWifi"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStreamingEnabled()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    return v0
.end method

.method public isTabletMusic()Z
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsVoiceCapable:Z

    return v0
.end method

.method public isXLargeScreen()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsXLargeScreen:Z

    return v0
.end method

.method public notifyStreamingAccountsReady()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/jumper/MusicPreferences$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/jumper/MusicPreferences$3;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 543
    return-void
.end method

.method public setAllSongsSortOrder(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 448
    const-string v0, "AllSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public setArtistSongsSortOrder(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 456
    const-string v0, "ArtistSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    return-void
.end method

.method public setCachedStreamingMusicEnabled(Z)V
    .locals 2
    .parameter "cache"

    .prologue
    .line 440
    const-string v0, "CacheStreamed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .parameter "choice"

    .prologue
    .line 480
    const-string v0, "DisplayOptions"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 482
    return-void
.end method

.method public setGenreSongsSortOrder(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 464
    const-string v0, "GenreSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public setHideNowPlayingBar(Z)V
    .locals 2
    .parameter "hide"

    .prologue
    .line 424
    const-string v0, "HideNowPlayingBar"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public setHideWhenNotConnected(Z)V
    .locals 4
    .parameter "hide"

    .prologue
    .line 497
    const-string v0, "HideWhenNotConnected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 499
    return-void
.end method

.method public setOffineDLOnlyOnWifi(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 515
    const-string v0, "OfflineDLOnlyOnWifi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 517
    return-void
.end method

.method public setRecentlyAddedSongsSortOrder(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 472
    const-string v0, "RecentlyAddedSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public setShowLabels(IZ)V
    .locals 2
    .parameter "state"
    .parameter "value"

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowLabels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public setStreamOnlyOnWifi(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 506
    const-string v0, "StreamOnlyOnWifi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 508
    return-void
.end method

.method public setStreamingAccount(Landroid/accounts/Account;)V
    .locals 4
    .parameter "newAccount"

    .prologue
    const/4 v3, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 358
    .local v0, oldAccount:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 362
    :cond_0
    const-string v1, "SelectedAccount"

    if-nez p1, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    if-eqz v0, :cond_1

    .line 366
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 367
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 368
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 371
    :cond_1
    sget-boolean v1, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    if-eqz v1, :cond_2

    .line 372
    const-string v1, "MusicPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Active account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_4

    const-string v3, "null"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->switchAccountAsync(Landroid/accounts/Account;)V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_1

    .line 372
    :cond_4
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method public setTopLevelDisplayMode(I)V
    .locals 2
    .parameter "choice"

    .prologue
    .line 489
    const-string v0, "WallDisplayMode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method public setTutorialViewed(Z)V
    .locals 2
    .parameter "viewed"

    .prologue
    .line 524
    const-string v0, "TutorialViewed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method public setUseListViewsInLandscape(Z)V
    .locals 2
    .parameter "listViews"

    .prologue
    .line 432
    const-string v0, "useListViewsInLandscape"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public setWallDisplayMode(I)V
    .locals 2
    .parameter "choice"

    .prologue
    .line 412
    const-string v0, "WallDisplayMode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method public shouldHideNowPlayingBar()Z
    .locals 2

    .prologue
    .line 420
    const-string v0, "HideNowPlayingBar"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 547
    return-void
.end method

.method public useListViewsInLandscape()Z
    .locals 2

    .prologue
    .line 428
    const-string v0, "useListViewsInLandscape"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public wasTutorialViewed()Z
    .locals 2

    .prologue
    .line 520
    const-string v0, "TutorialViewed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
