.class public Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "SearchableItemsController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

.field private mSourcePreferences:Landroid/preference/PreferenceGroup;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Sources;Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;)V
    .locals 0
    .parameter "searchSettings"
    .parameter "sources"
    .parameter "context"
    .parameter "strategy"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 52
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 53
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    .line 55
    return-void
.end method

.method private createSourcePreference(Lcom/google/android/googlequicksearchbox/Source;)Landroid/preference/Preference;
    .locals 4
    .parameter "source"

    .prologue
    .line 89
    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;-><init>(Landroid/content/Context;)V

    .line 90
    .local v2, sourcePref:Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSourceEnabledPreference(Lcom/google/android/googlequicksearchbox/Source;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setKey(Ljava/lang/String;)V

    .line 91
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 94
    .local v1, label:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSettingsDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    .local v0, description:Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 98
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-object v2
.end method

.method private createWebSourcePreference()Landroid/preference/Preference;
    .locals 5

    .prologue
    .line 103
    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, sourcePref:Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;
    invoke-static {}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getWebSourceEnabledPreference()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setKey(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setOrder(I)V

    .line 107
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a001b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, label:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, description:Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-object v2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSources()Lcom/google/android/googlequicksearchbox/Sources;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    return-object v0
.end method

.method private populateSourcePreference()V
    .locals 5

    .prologue
    .line 74
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 75
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->createWebSourcePreference()Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 76
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/Sources;->getSources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    .line 77
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->createSourcePreference(Lcom/google/android/googlequicksearchbox/Source;)Landroid/preference/Preference;

    move-result-object v1

    .line 78
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 80
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 83
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_1
    return-void
.end method


# virtual methods
.method public handlePreference(Landroid/preference/Preference;)V
    .locals 0
    .parameter "sourcePreferences"

    .prologue
    .line 58
    check-cast p1, Landroid/preference/PreferenceGroup;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    .line 59
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->populateSourcePreference()V

    .line 60
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->broadcastSettingsChanged()V

    .line 121
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->set()V

    .line 122
    const/4 v0, 0x1

    return v0
.end method
