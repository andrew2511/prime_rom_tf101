.class public Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;
.super Ljava/lang/Object;
.source "PreferenceControllerFactory.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Landroid/app/Activity;)V
    .locals 1
    .parameter "settings"
    .parameter "loginHelper"
    .parameter "config"
    .parameter "helper"
    .parameter "activity"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 55
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    .line 56
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 57
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 58
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 59
    return-void
.end method

.method private createControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    .locals 8
    .parameter "p"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getControllerId(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    .line 113
    .local v0, app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    const-string v3, "search_sources"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryOnStartStrategy()Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Sources;Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;)V

    .line 129
    :goto_0
    return-object v3

    .line 116
    :cond_0
    const-string v3, "clear_shortcuts"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v2

    .line 118
    .local v2, shortcuts:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryOnStartStrategy()Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;-><init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;)V

    goto :goto_0

    .line 120
    .end local v2           #shortcuts:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    :cond_1
    const-string v3, "use_location"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-direct {v3, v4}, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    goto :goto_0

    .line 122
    :cond_2
    const-string v3, "search_history"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/Config;Landroid/app/Activity;)V

    goto :goto_0

    .line 124
    :cond_3
    const-string v3, "use_google_com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Landroid/app/Activity;)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v3, "use_psychic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/UsePsychicSettingController;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-direct {v3, v4, v5}, Lcom/google/android/googlequicksearchbox/preferences/UsePsychicSettingController;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Config;)V

    goto :goto_0

    .line 129
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    .locals 3
    .parameter "p"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getControllerId(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 136
    .local v0, c:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->createControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0, v1, v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->addController(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;)V

    .line 142
    :cond_0
    return-object v0
.end method

.method private getControllerId(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, key:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    .line 101
    :cond_0
    const-string v1, "search_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "manage_search_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "google_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    :cond_1
    const-string v1, "search_history"

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 107
    goto :goto_0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private handlePrerenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 163
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 164
    .local v0, child:Landroid/preference/Preference;
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->filterPreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->handlePreference(Landroid/preference/Preference;)V

    goto :goto_1

    .line 170
    .end local v0           #child:Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected addController(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;)V
    .locals 1
    .parameter "key"
    .parameter "controller"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public filterPreference(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "p"

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, c:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-nez v2, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    move-result-object v0

    .line 152
    :cond_0
    const/4 v1, 0x0

    .line 153
    .local v1, filter:Z
    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->filterPreference(Landroid/preference/Preference;)Z

    move-result v1

    .line 157
    :cond_1
    return v1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    move-result-object v0

    .line 178
    .local v0, c:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    .line 190
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    .line 182
    check-cast p1, Landroid/preference/PreferenceGroup;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->handlePrerenceGroup(Landroid/preference/PreferenceGroup;)V

    goto :goto_0

    .line 185
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;

    invoke-direct {v1, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;-><init>(Landroid/preference/Preference;)V

    throw v1
.end method

.method public onCreateComplete()V
    .locals 3

    .prologue
    .line 70
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 71
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onCreateComplete()V

    goto :goto_0

    .line 73
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 89
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 90
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onDestroy()V

    goto :goto_0

    .line 92
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 77
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v0, v2}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->setScreen(Landroid/preference/PreferenceScreen;)V

    .line 78
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onResume()V

    goto :goto_0

    .line 80
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 83
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 84
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onStop()V

    goto :goto_0

    .line 86
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public setScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mScreen:Landroid/preference/PreferenceScreen;

    .line 195
    return-void
.end method
