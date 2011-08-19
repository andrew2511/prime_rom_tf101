.class public Lcom/google/android/googlequicksearchbox/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultSourcesSuggestUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupResultsSourceUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoredSources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleLineSourceUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceIconOverrides:Ljava/util/Map;
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

.field private mWebHistoryPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method private loadResourceStringMap(I)Ljava/util/Map;
    .locals 6
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 138
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 139
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, vals:[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    sub-int/2addr v3, v5

    if-ge v0, v3, :cond_1

    .line 142
    aget-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 140
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 144
    .restart local v0       #i:I
    :cond_1
    return-object v1
.end method

.method private loadResourceStringSet(I)Ljava/util/HashSet;
    .locals 2
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public getCompleteServerClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    const-string v0, "qsb-android"

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCountryCodeCheckServerUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const-string v0, "https://www.google.com/searchdomaincheck?format=countrycode"

    return-object v0
.end method

.method public getDefaultNumVisibleSuggestionSlots()I
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDomainCheckServerUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    const-string v0, "https://www.google.com/searchdomaincheck?format=domain"

    return-object v0
.end method

.method public getExperimentIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getHelpUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "activity"

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpConnectTimeout()I
    .locals 1

    .prologue
    .line 354
    const/16 v0, 0x2710

    return v0
.end method

.method public getHttpReadTimeout()I
    .locals 1

    .prologue
    .line 358
    const/16 v0, 0x2710

    return v0
.end method

.method public getInitPsychicJavascript(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "query"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 375
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a0008

    new-array v2, v4, [Ljava/lang/Object;

    const v3, 0x7f0a0009

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLatencyLogFrequency()I
    .locals 1

    .prologue
    .line 310
    const/16 v0, 0x3e8

    return v0
.end method

.method public getManageSearchHistoryUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLocalHistoryAgeMillis()J
    .locals 2

    .prologue
    .line 503
    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method

.method public getMaxLocalHistoryForFullWebResults()I
    .locals 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxLocalHistoryForPartialWebResults()I
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxLocalHistorySuggestions()I
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxPromotedSuggestions()I
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxPromotedSummons()I
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxPsychicLatency()I
    .locals 1

    .prologue
    .line 449
    const/16 v0, 0x3e8

    return v0
.end method

.method public getMaxResultsPerSource()I
    .locals 1

    .prologue
    .line 270
    const/16 v0, 0x32

    return v0
.end method

.method public getMaxStatAgeMillis()J
    .locals 2

    .prologue
    .line 293
    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method

.method public getMaxSuggestionsDisplayDelayMillis()I
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaximumSuggestionsAboveSummons()I
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinClicksForSourceRanking()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x3

    return v0
.end method

.method public getMinimumSuggestionsAboveSummons()I
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumVisibleSummons()I
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getNumPromotedSources()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x3

    return v0
.end method

.method public getNumSuggestionsAboveKeyboard()I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getProbePsychicJavascript()Ljava/lang/String;
    .locals 5

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPsychicPathPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    const-string v0, "/webhp.*|/search.*"

    return-object v0
.end method

.method public getPsychicQueryJavascript(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "query"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a0008

    new-array v2, v4, [Ljava/lang/Object;

    const v3, 0x7f0a0009

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPsychicShowResultsJavascript(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "query"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 391
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a0008

    new-array v2, v4, [Ljava/lang/Object;

    const v3, 0x7f0a000a

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPsychicSupported()Z
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getPublishResultDelayMillis()J
    .locals 2

    .prologue
    .line 326
    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getQsbInstallJavascript()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbJavascriptInterfaceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryThreadPriority()I
    .locals 1

    .prologue
    .line 286
    const/16 v0, 0x9

    return v0
.end method

.method public getRefreshSearchHistoryDelay()J
    .locals 2

    .prologue
    .line 485
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public declared-synchronized getSourceIconOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "iconUri"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSourceIconOverrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 208
    const v0, 0x7f0b0002

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringMap(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSourceIconOverrides:Ljava/util/Map;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSourceIconOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSourceTimeoutMillis()J
    .locals 2

    .prologue
    .line 277
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public getSuggestLatencyHistorySize()I
    .locals 1

    .prologue
    .line 457
    const/16 v0, 0xa

    return v0
.end method

.method public getTargetPsychicLatency()I
    .locals 1

    .prologue
    .line 442
    const/16 v0, 0x1f4

    return v0
.end method

.method public getTargetSuggestLatencyToLoadPsychic()I
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0x1f4

    return v0
.end method

.method public getTypingUpdateSuggestionsDelayMillis()J
    .locals 2

    .prologue
    .line 318
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getUseGenie()Z
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const-string v0, "Android/1.0"

    return-object v0
.end method

.method public getVoiceSearchInstallUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "market://search?q=pname:com.google.android.voicesearch"

    return-object v0
.end method

.method public getVoiceSearchPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const-string v0, "com.google.android.voicesearch"

    return-object v0
.end method

.method public isDropBoxLoggingEnabled()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public isPsuggestAvailable()Z
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isSourceEnabledByDefault(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x1

    .line 151
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Config;->mDefaultSources:Ljava/util/HashSet;

    if-nez v2, :cond_0

    .line 154
    const/high16 v2, 0x7f0b

    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Config;->mDefaultSources:Ljava/util/HashSet;

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Config;->mDefaultSources:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 173
    :goto_0
    monitor-exit p0

    return v2

    .line 161
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Config;->mDefaultSourcesSuggestUris:Ljava/util/HashSet;

    if-nez v2, :cond_2

    .line 162
    const v2, 0x7f0b0001

    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Config;->mDefaultSourcesSuggestUris:Ljava/util/HashSet;

    .line 166
    :cond_2
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, uri:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Config;->mDefaultSourcesSuggestUris:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 170
    goto :goto_0

    .line 173
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 151
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isSourceGroupResults(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mGroupResultsSourceUris:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 201
    const v0, 0x7f0b0004

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mGroupResultsSourceUris:Ljava/util/HashSet;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mGroupResultsSourceUris:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSourceIgnored(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Config;->mIgnoredSources:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 180
    const v1, 0x7f0b0005

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/Config;->mIgnoredSources:Ljava/util/HashSet;

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Config;->mIgnoredSources:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 177
    .end local v0           #name:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSourceShowSingleLine(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSingleLineSourceUris:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 190
    const v0, 0x7f0b0003

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSingleLineSourceUris:Ljava/util/HashSet;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSingleLineSourceUris:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldAllowWebHistoryFromPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mWebHistoryPackages:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 550
    const v0, 0x7f0b0006

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mWebHistoryPackages:Ljava/util/HashSet;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mWebHistoryPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showSuggestionsForZeroQuery()Z
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showSummonsForZeroQuery()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
