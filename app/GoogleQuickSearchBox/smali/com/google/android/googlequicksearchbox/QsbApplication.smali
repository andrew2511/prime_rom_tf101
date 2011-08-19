.class public Lcom/google/android/googlequicksearchbox/QsbApplication;
.super Ljava/lang/Object;
.source "QsbApplication.java"


# static fields
.field private static volatile mThreadChecksDisabled:Z


# instance fields
.field private mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private mGoogleMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

.field private mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

.field private mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mListEntryViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

.field private mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

.field private mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

.field private mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

.field private mLogger:Lcom/google/android/googlequicksearchbox/Logger;

.field private mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private mPsychicPathPattern:Ljava/util/regex/Pattern;

.field private mPsychicSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

.field private mPsychicSuggestAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

.field private mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

.field private mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

.field private mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private mShortcutRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

.field private mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

.field private mSourceRanker:Lcom/google/android/googlequicksearchbox/SourceRanker;

.field private mSourceSelection:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

.field private mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mSources:Lcom/google/android/googlequicksearchbox/Sources;

.field private mSuggestionFormatter:Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

.field private mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

.field private mTextAppearanceFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

.field private mVersionCode:I

.field private mVoiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;

.field private mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

.field private mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0d0019

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/google/android/googlequicksearchbox/GservicesConfig;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 127
    new-instance v0, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    .line 128
    return-void
.end method

.method public static checkThread()V
    .locals 3

    .prologue
    .line 158
    sget-boolean v0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mThreadChecksDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessed Application object from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->getApp()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method public static isHoneycombOrLater()Z
    .locals 2

    .prologue
    .line 131
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

.method public static setThreadChecksDisabled(Z)V
    .locals 0
    .parameter "disabled"

    .prologue
    .line 166
    sput-boolean p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mThreadChecksDisabled:Z

    .line 167
    return-void
.end method

.method private static wrapPromoter(Lcom/google/android/googlequicksearchbox/Promoter;I)Lcom/google/android/googlequicksearchbox/CachingPromoter;
    .locals 1
    .parameter "p"
    .parameter "maxPromoted"

    .prologue
    .line 437
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingPromoter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Promoter;I)V

    return-object v0
.end method


# virtual methods
.method protected close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 171
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->stopListening()V

    .line 173
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->close()V

    .line 177
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->close()V

    .line 181
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->close()V

    .line 185
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProvider;->close()V

    .line 189
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;->close()V

    .line 193
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->close()V

    .line 197
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->close()V

    .line 201
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    if-eqz v0, :cond_8

    .line 204
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->close()V

    .line 205
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 207
    :cond_8
    return-void
.end method

.method protected createClock()Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1

    .prologue
    .line 549
    new-instance v0, Lcom/google/android/googlequicksearchbox/GenericClock;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/GenericClock;-><init>()V

    return-object v0
.end method

.method protected createGoogleMaps()Lcom/google/android/googlequicksearchbox/google/Maps;
    .locals 2

    .prologue
    .line 718
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/Maps;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/Maps;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSourceSelectionStrategy()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;-><init>(Lcom/google/android/googlequicksearchbox/QsbApplication;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;)V

    .line 456
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    goto :goto_0
.end method

.method protected createHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;
    .locals 7

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v6

    .line 561
    .local v6, c:Lcom/google/android/googlequicksearchbox/Config;
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getHttpConnectTimeout()I

    move-result v3

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getHttpReadTimeout()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;-><init>(Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;Ljava/lang/String;IILandroid/content/Context;)V

    return-object v0
.end method

.method protected createIconLoaderExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    .line 223
    .local v0, iconThreadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/android/googlequicksearchbox/util/Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;-><init>(Lcom/google/android/googlequicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createListEntryViewFactory()Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    .locals 3

    .prologue
    .line 417
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method protected createLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 3

    .prologue
    .line 636
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationManager()Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;)V

    return-object v0
.end method

.method protected createLocationManager()Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;
    .locals 3

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 731
    .local v0, wrapped:Landroid/location/LocationManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 732
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;

    invoke-direct {v1, v0}, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;-><init>(Landroid/location/LocationManager;)V

    goto :goto_0
.end method

.method protected createLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;
    .locals 3

    .prologue
    .line 605
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryOnStartStrategy()Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;)V

    return-object v0
.end method

.method protected createLogger()Lcom/google/android/googlequicksearchbox/Logger;
    .locals 3

    .prologue
    .line 504
    new-instance v0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method protected createLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 5

    .prologue
    .line 620
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Landroid/os/Handler;)V

    return-object v0
.end method

.method public createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;
    .locals 6
    .parameter "activity"

    .prologue
    .line 530
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected createPsychicPathPattern()Ljava/util/regex/Pattern;
    .locals 3

    .prologue
    .line 752
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicPathPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 760
    .local v0, pathPattern:Ljava/util/regex/Pattern;
    :goto_0
    return-object v0

    .line 753
    .end local v0           #pathPattern:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 757
    .local v1, pse:Ljava/util/regex/PatternSyntaxException;
    const-string v2, "/webhp.*|/search.*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .restart local v0       #pathPattern:Ljava/util/regex/Pattern;
    goto :goto_0
.end method

.method protected createPsychicSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 4

    .prologue
    .line 670
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestSource;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestSource;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V

    return-object v0
.end method

.method protected createPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;
    .locals 4

    .prologue
    .line 658
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSourceSelector()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)V

    return-object v0
.end method

.method protected createQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 4

    .prologue
    .line 377
    const-string v0, "QSB #%d"

    .line 378
    .local v0, nameFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getQueryThreadPriority()I

    move-result v1

    .line 379
    .local v1, priority:I
    new-instance v2, Lcom/google/common/util/concurrent/NamingThreadFactory;

    new-instance v3, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;

    invoke-direct {v3, v1}, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    invoke-direct {v2, v0, v3}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)V

    return-object v2
.end method

.method protected createSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
    .locals 5

    .prologue
    .line 785
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    return-object v0
.end method

.method protected createSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
    .locals 6

    .prologue
    .line 589
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method protected createSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 4

    .prologue
    .line 250
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/LocationSettings;)V

    return-object v0
.end method

.method protected createShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;-><init>(Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    return-object v0
.end method

.method protected createShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    .locals 11

    .prologue
    .line 308
    new-instance v10, Lcom/google/common/util/concurrent/NamingThreadFactory;

    const-string v0, "ShortcutRepository #%d"

    new-instance v1, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    invoke-direct {v10, v0, v1}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)V

    .line 310
    .local v10, logThreadFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {v10}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 311
    .local v4, logExecutor:Ljava/util/concurrent/Executor;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryOnStartStrategy()Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->create(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;I)Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    move-result-object v0

    return-object v0
.end method

.method protected createSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;)V

    return-object v0
.end method

.method protected createSourceSelectionStrategy()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;
    .locals 2

    .prologue
    .line 472
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;-><init>(Lcom/google/android/googlequicksearchbox/QsbApplication;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method protected createSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 361
    .local v0, queryThreadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/android/googlequicksearchbox/util/Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;-><init>(Lcom/google/android/googlequicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createSources()Lcom/google/android/googlequicksearchbox/Sources;
    .locals 5

    .prologue
    .line 273
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchableSources;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getIconLoaderExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/SearchableSources;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 275
    .local v0, sources:Lcom/google/android/googlequicksearchbox/Sources;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Sources;->update()V

    .line 276
    return-object v0
.end method

.method protected createSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
    .locals 2

    .prologue
    .line 515
    new-instance v0, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getTextAppearanceFactory()Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;-><init>(Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;)V

    return-object v0
.end method

.method protected createSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;
    .locals 6

    .prologue
    .line 397
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/Logger;)V

    return-object v0
.end method

.method public createSummonsPromoter()Lcom/google/android/googlequicksearchbox/CachingPromoter;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 426
    new-instance v1, Lcom/google/android/googlequicksearchbox/SummonsFilter;

    invoke-direct {v1}, Lcom/google/android/googlequicksearchbox/SummonsFilter;-><init>()V

    .line 427
    .local v1, summonsFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;
    new-instance v2, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1, v6}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;)V

    .line 429
    .local v2, superResultsPromoter:Lcom/google/android/googlequicksearchbox/Promoter;
    new-instance v3, Lcom/google/android/googlequicksearchbox/WebResultPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v5

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/google/android/googlequicksearchbox/WebResultPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 431
    .local v3, webResultsPromoter:Lcom/google/android/googlequicksearchbox/Promoter;
    new-instance v0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v5

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;)V

    .line 433
    .local v0, resultsPromoter:Lcom/google/android/googlequicksearchbox/Promoter;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPromotedSummons()I

    move-result v4

    invoke-static {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbApplication;->wrapPromoter(Lcom/google/android/googlequicksearchbox/Promoter;I)Lcom/google/android/googlequicksearchbox/CachingPromoter;

    move-result-object v4

    return-object v4
.end method

.method protected createTextAppearanceFactory()Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;
    .locals 2

    .prologue
    .line 526
    new-instance v0, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;
    .locals 2

    .prologue
    .line 577
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/UriRewriter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;
    .locals 3

    .prologue
    .line 488
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method protected createWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
    .locals 5

    .prologue
    .line 325
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;

    new-instance v1, Lcom/google/common/util/concurrent/NamingThreadFactory;

    const-string v2, "WebHistoryRepository"

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 327
    .local v0, executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    new-instance v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    return-object v1
.end method

.method public createWebPromoter()Lcom/google/android/googlequicksearchbox/CachingPromoter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 421
    new-instance v0, Lcom/google/android/googlequicksearchbox/WebPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/android/googlequicksearchbox/WebPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPromotedSuggestions()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->wrapPromoter(Lcom/google/android/googlequicksearchbox/Promoter;I)Lcom/google/android/googlequicksearchbox/CachingPromoter;

    move-result-object v0

    return-object v0
.end method

.method protected createWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .locals 8

    .prologue
    .line 682
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getUseGenie()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleMaps()Lcom/google/android/googlequicksearchbox/google/Maps;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Lcom/google/android/googlequicksearchbox/google/Maps;)V

    .line 700
    .local v0, source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :goto_0
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryOnStartStrategy()Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;)V

    .line 702
    .end local v0           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .local v1, source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    new-instance v2, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryOnStartStrategy()Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;)V

    return-object v2

    .line 691
    .end local v1           #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    .restart local v0       #source:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    goto :goto_0
.end method

.method public declared-synchronized getClock()Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mClock:Lcom/google/android/googlequicksearchbox/Clock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getGoogleMaps()Lcom/google/android/googlequicksearchbox/google/Maps;
    .locals 1

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    if-nez v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createGoogleMaps()Lcom/google/android/googlequicksearchbox/google/Maps;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleMaps:Lcom/google/android/googlequicksearchbox/google/Maps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 446
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    if-nez v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    return-object v0
.end method

.method public getHelp()Lcom/google/android/googlequicksearchbox/Help;
    .locals 3

    .prologue
    .line 765
    new-instance v0, Lcom/google/android/googlequicksearchbox/Help;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/Help;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    return-object v0
.end method

.method public declared-synchronized getHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;
    .locals 1

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    if-nez v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createHttpHelper()Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIconLoaderExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createIconLoaderExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getListEntryViewFactory()Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 410
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mListEntryViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createListEntryViewFactory()Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mListEntryViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mListEntryViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    return-object v0
.end method

.method public declared-synchronized getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 1

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocationManager()Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    if-nez v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLocationManager()Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationManager:Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;

    return-object v0
.end method

.method public declared-synchronized getLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;
    .locals 1

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLocationOptIn:Lcom/google/android/googlequicksearchbox/google/LocationSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger()Lcom/google/android/googlequicksearchbox/Logger;
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 497
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    return-object v0
.end method

.method public declared-synchronized getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 1

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-nez v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPsychicPathPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicPathPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createPsychicPathPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicPathPattern:Ljava/util/regex/Pattern;

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicPathPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public declared-synchronized getPsychicSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createPsychicSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;
    .locals 1

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicSuggestAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicSuggestAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mPsychicSuggestAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQueryOnStartStrategy()Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    return-object v0
.end method

.method protected getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 370
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public getSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    if-nez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    return-object v0
.end method

.method public declared-synchronized getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
    .locals 1

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 2

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 243
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->upgradeSettingsIfNeeded()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 336
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    return-object v0
.end method

.method public getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 301
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    return-object v0
.end method

.method public getSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 285
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceRanker:Lcom/google/android/googlequicksearchbox/SourceRanker;

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceRanker:Lcom/google/android/googlequicksearchbox/SourceRanker;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceRanker:Lcom/google/android/googlequicksearchbox/SourceRanker;

    return-object v0
.end method

.method public getSourceSelectionStrategy()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;
    .locals 1

    .prologue
    .line 461
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 462
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceSelection:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSourceSelectionStrategy()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceSelection:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceSelection:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    return-object v0
.end method

.method public getSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 353
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSourceTaskExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method public getSources()Lcom/google/android/googlequicksearchbox/Sources;
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 266
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    return-object v0
.end method

.method public getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    return-object v0
.end method

.method protected getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 390
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    return-object v0
.end method

.method public getTextAppearanceFactory()Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createTextAppearanceFactory()Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    return-object v0
.end method

.method public declared-synchronized getUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;
    .locals 1

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mUriRewriter:Lcom/google/android/googlequicksearchbox/google/UriRewriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersionCode()I
    .locals 5

    .prologue
    .line 143
    iget v3, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVersionCode:I

    if-nez v3, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 146
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 147
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    iget v3, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVersionCode:I

    return v3

    .line 148
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 151
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 481
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVoiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVoiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mVoiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;

    return-object v0
.end method

.method public declared-synchronized getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebHistoryRepository:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWebSourceSelector()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;
    .locals 0

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    return-object p0
.end method

.method public declared-synchronized getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    .locals 1

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mWebSuggestSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStartupComplete()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public shouldUsePsychic()Z
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getUsePsychic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSources()V
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 259
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplication;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Sources;->update()V

    .line 262
    :cond_0
    return-void
.end method
