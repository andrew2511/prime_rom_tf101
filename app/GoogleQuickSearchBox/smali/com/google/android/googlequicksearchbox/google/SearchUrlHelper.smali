.class public Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
.super Ljava/lang/Object;
.source "SearchUrlHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;,
        Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private final mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "helper"
    .parameter "config"
    .parameter "searchSettings"
    .parameter "prefs"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 68
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 70
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mWatchers:Ljava/util/ArrayList;

    .line 76
    invoke-interface {p5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->maybeUpdateBaseDomainSetting(Z)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->handleDomainAndCountryCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 167
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    return-void
.end method

.method private checkSearchDomain()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;-><init>(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    .line 280
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;-><init>(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getDomainCheckServerUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$2;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$2;-><init>(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getCountryCodeCheckServerUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private formatUrlBase(ILandroid/os/Bundle;Z)Ljava/lang/String;
    .locals 5
    .parameter "patternResourceId"
    .parameter "appSearchData"
    .parameter "fromSelf"

    .prologue
    const/4 v4, 0x0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomain(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, url:Ljava/lang/StringBuilder;
    const-string v1, "client"

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getClientParam()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "source"

    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSourceParam(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "rlz"

    invoke-direct {p0, p3}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getRlzParam(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getClientParam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "search_client_id"

    invoke-static {v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, searchClientId:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 188
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ms-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "client_id"

    invoke-static {v2, v3}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSearchDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 133
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, language:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, hl:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getRlzParam(Z)Ljava/lang/String;
    .locals 8
    .parameter "searchIsFromQsb"

    .prologue
    .line 193
    const/4 v7, 0x0

    .line 194
    .local v7, rlz:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 198
    const/4 v6, 0x0

    .line 200
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getRlzUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 201
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 205
    :cond_0
    if-eqz v6, :cond_1

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 205
    .restart local v6       #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getRlzUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, rlzAp:Ljava/lang/String;
    sget-object v1, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getSourceParam(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "appSearchData"

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, source:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    if-nez v0, :cond_1

    const-string v0, "unknown"

    .line 176
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleDomainAndCountryCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "domain"
    .parameter "countryCode"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->resetSearchDomainApplyTime()V

    .line 303
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mCurrentDomainFetch:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    .line 304
    return-void

    .line 301
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyDomainWatchers()V
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;->onSearchDomainChanged()V

    .line 329
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "domain"
    .parameter "countryCode"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->notifyDomainWatchers()V

    .line 325
    return-void
.end method

.method private shouldUseGoogleCom()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldUseGoogleCom()Z

    move-result v0

    return v0
.end method

.method private static useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "language"
    .parameter "country"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "GB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 150
    :cond_0
    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    const-string v0, "CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 152
    :cond_3
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    const-string v0, "BR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 155
    goto :goto_0
.end method


# virtual methods
.method public getPsychicBaseUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "appSearchData"

    .prologue
    .line 227
    const v0, 0x7f0a0003

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->formatUrlBase(ILandroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseUrl(Landroid/os/Bundle;Z)Ljava/lang/String;
    .locals 1
    .parameter "appSearchData"
    .parameter "fromSelf"

    .prologue
    .line 223
    const v0, 0x7f0a0002

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->formatUrlBase(ILandroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchDomain(Z)Ljava/lang/String;
    .locals 3
    .parameter "forceDefaultDomain"

    .prologue
    .line 238
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->shouldUseGoogleCom()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getDefaultSearchDomain()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 241
    .local v0, domain:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getDefaultSearchDomain()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "www"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_2
    return-object v0

    .line 238
    .end local v0           #domain:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchDomain()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSearchDomainCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->shouldUseGoogleCom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchDomainCountryCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDotComAnyway()Z
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getDefaultSearchDomain()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public maybeUpdateBaseDomainSetting(Z)V
    .locals 8
    .parameter "force"

    .prologue
    .line 104
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mSearchSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSearchDomainApplyTime()J

    move-result-wide v2

    .line 105
    .local v2, lastUpdateTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    .local v0, currentTime:J
    if-nez p1, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->checkSearchDomain()V

    .line 113
    :cond_1
    return-void
.end method

.method public notifySearchDomainChange(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 338
    const-string v0, "use_google_com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->maybeUpdateBaseDomainSetting(Z)V

    .line 341
    :cond_0
    return-void
.end method
