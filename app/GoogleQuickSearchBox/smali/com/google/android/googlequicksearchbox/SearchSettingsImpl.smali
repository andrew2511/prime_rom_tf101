.class public Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;
.super Ljava/lang/Object;
.source "SearchSettingsImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SearchSettings;


# static fields
.field public static final RLZ_PROVIDER_URI:Landroid/net/Uri;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field protected final mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "content://com.google.android.partnersetup.rlzappprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/LocationSettings;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "locationSettings"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 129
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    .line 130
    return-void
.end method

.method private getNumVisibleSuggestionSlotsKey(I)Ljava/lang/String;
    .locals 2
    .parameter "orientation"

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "num_visible_suggestion_slots_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOldPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GoogleSearchSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSourceEnabledPreference(Lcom/google/android/googlequicksearchbox/Source;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_corpus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebSourceEnabledPreference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "enable_corpus_web"

    return-object v0
.end method

.method private setSearchDomain(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "searchDomain"
    .parameter "countryCode"
    .parameter "applyTime"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "search_domain"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    const-string v1, "search_domain_country_code"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    const-string v1, "search_domain_apply_time"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 275
    return-void
.end method

.method private upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "oldKey"
    .parameter "newKey"
    .parameter "removeOld"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 351
    if-eqz p3, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->removePref(Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void
.end method

.method private upgradeSearchHistoryPreferenceIfNeeded()V
    .locals 6

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 317
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "search_history"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getOldPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, oldPrefs:Landroid/content/SharedPreferences;
    const-string v3, "search_history"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    const-string v3, "search_history"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 321
    .local v1, oldValue:Z
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->setShowSearchHistory(Z)V

    .line 322
    const-string v3, "QSB.SearchSettingsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copied old search history value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0           #oldPrefs:Landroid/content/SharedPreferences;
    .end local v1           #oldValue:Z
    :cond_0
    return-void
.end method


# virtual methods
.method public addMenuItems(Landroid/view/Menu;Z)V
    .locals 3
    .parameter "menu"
    .parameter "showDisabled"

    .prologue
    .line 218
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f0e0001

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 220
    const v2, 0x7f0f002e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 221
    .local v1, item:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 222
    return-void
.end method

.method public broadcastSettingsChanged()V
    .locals 4

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "QSB.SearchSettingsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public firstRunDialogShown()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "first_run_dialog_version"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeInt(Ljava/lang/String;I)V

    .line 407
    return-void
.end method

.method public getCachedZeroQueryWebResults()Ljava/lang/String;
    .locals 3

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zero_query_web_results"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGoogleAccountToUse()Ljava/lang/String;
    .locals 3

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "google_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumVisibleSuggestionSlots(II)I
    .locals 2
    .parameter "orientation"
    .parameter "defaultValue"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getNumVisibleSuggestionSlotsKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSearchDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_domain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchDomainApplyTime()J
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_domain_apply_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchDomainCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_domain_country_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SearchSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSearchSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, settings:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    return-object v0
.end method

.method public getUseLocationForServices()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->shouldSendLocation()Z

    move-result v0

    return v0
.end method

.method public getUsePsychic()Z
    .locals 3

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_psychic"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSearchHistoryEnabled()Z
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->isPsuggestAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_history"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSourceEnabled(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 3
    .parameter "source"

    .prologue
    .line 170
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v0

    .line 171
    .local v0, defaultEnabled:Z
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSourceEnabledPreference(Lcom/google/android/googlequicksearchbox/Source;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, sourceEnabledPref:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public isWebSourceEnabled()Z
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getWebSourceEnabledPreference()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 447
    return-void
.end method

.method protected removePref(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 203
    return-void
.end method

.method public resetSearchDomainApplyTime()V
    .locals 3

    .prologue
    .line 284
    const-string v0, "search_domain_apply_time"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeLong(Ljava/lang/String;J)V

    .line 285
    return-void
.end method

.method public setCachedZeroQueryWebResults(Ljava/lang/String;)V
    .locals 1
    .parameter "jsonData"

    .prologue
    .line 426
    const-string v0, "zero_query_web_results"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setGoogleAccountToUse(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 383
    const-string v0, "google_account"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->removePref(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->setShowSearchHistory(Z)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v0, "google_account"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNumVisibleSuggestionSlots(II)V
    .locals 1
    .parameter "orientation"
    .parameter "count"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getNumVisibleSuggestionSlotsKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeInt(Ljava/lang/String;I)V

    .line 438
    return-void
.end method

.method public setPsuggestAvailableIfAbsent()V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "psuggest_available"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const-string v0, "psuggest_available"

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->isPsuggestAvailable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 336
    :cond_0
    return-void
.end method

.method public setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "searchDomain"
    .parameter "countryCode"

    .prologue
    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->setSearchDomain(Ljava/lang/String;Ljava/lang/String;J)V

    .line 280
    return-void
.end method

.method public setShowSearchHistory(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 373
    const-string v0, "search_history"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 374
    return-void
.end method

.method public setUseGoogleCom(Z)V
    .locals 1
    .parameter "useGoogleCom"

    .prologue
    .line 242
    const-string v0, "use_google_com"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method public setUseLocationForServices(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->setUseLocationForServices(Z)V

    .line 295
    return-void
.end method

.method public setUsePsychic(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 416
    const-string v0, "use_psychic"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 417
    return-void
.end method

.method public shouldSendLocation(Z)Z
    .locals 1
    .parameter "prompt"

    .prologue
    .line 299
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->isUseLocationSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->showLocationOptIn()V

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->shouldSendLocation()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldShowFirstRunDialog()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 396
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    .line 401
    :goto_0
    return v2

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "first_run_dialog_version"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 401
    .local v1, lastVersion:I
    if-eq v1, v5, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public shouldUseGoogleCom()Z
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_google_com"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldUseLocalWebHistory()Z
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->isSearchHistoryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected storeBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 187
    return-void
.end method

.method protected storeInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 191
    return-void
.end method

.method protected storeLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 195
    return-void
.end method

.method protected storeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 199
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 452
    return-void
.end method

.method public upgradeSettingsIfNeeded()V
    .locals 3

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeSearchHistoryPreferenceIfNeeded()V

    .line 145
    const-string v0, "enable_corpus_apps"

    const-string v1, "enable_corpus_com.android.providers.applications/.ApplicationLauncher"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    const-string v0, "enable_corpus_web"

    const-string v1, "enable_corpus_com.android.browser/.BookmarkSearch"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->setPsuggestAvailableIfAbsent()V

    .line 153
    return-void
.end method
