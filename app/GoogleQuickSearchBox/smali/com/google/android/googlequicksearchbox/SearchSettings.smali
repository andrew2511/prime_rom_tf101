.class public interface abstract Lcom/google/android/googlequicksearchbox/SearchSettings;
.super Ljava/lang/Object;
.source "SearchSettings.java"


# virtual methods
.method public abstract addMenuItems(Landroid/view/Menu;Z)V
.end method

.method public abstract broadcastSettingsChanged()V
.end method

.method public abstract firstRunDialogShown()V
.end method

.method public abstract getCachedZeroQueryWebResults()Ljava/lang/String;
.end method

.method public abstract getGoogleAccountToUse()Ljava/lang/String;
.end method

.method public abstract getNumVisibleSuggestionSlots(II)I
.end method

.method public abstract getSearchDomain()Ljava/lang/String;
.end method

.method public abstract getSearchDomainApplyTime()J
.end method

.method public abstract getSearchDomainCountryCode()Ljava/lang/String;
.end method

.method public abstract getSearchPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getUseLocationForServices()Z
.end method

.method public abstract getUsePsychic()Z
.end method

.method public abstract isSearchHistoryEnabled()Z
.end method

.method public abstract isSourceEnabled(Lcom/google/android/googlequicksearchbox/Source;)Z
.end method

.method public abstract isWebSourceEnabled()Z
.end method

.method public abstract registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract resetSearchDomainApplyTime()V
.end method

.method public abstract setCachedZeroQueryWebResults(Ljava/lang/String;)V
.end method

.method public abstract setGoogleAccountToUse(Ljava/lang/String;)V
.end method

.method public abstract setNumVisibleSuggestionSlots(II)V
.end method

.method public abstract setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setShowSearchHistory(Z)V
.end method

.method public abstract setUseGoogleCom(Z)V
.end method

.method public abstract setUseLocationForServices(Z)V
.end method

.method public abstract shouldSendLocation(Z)Z
.end method

.method public abstract shouldShowFirstRunDialog()Z
.end method

.method public abstract shouldUseGoogleCom()Z
.end method

.method public abstract shouldUseLocalWebHistory()Z
.end method

.method public abstract unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract upgradeSettingsIfNeeded()V
.end method
