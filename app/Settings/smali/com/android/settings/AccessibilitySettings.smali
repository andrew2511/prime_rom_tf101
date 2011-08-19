.class public Lcom/android/settings/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private final KEY_LONG_PRESS_TIMEOUT_LIST_PREFERENCE:Ljava/lang/String;

.field private final KEY_TOGGLE_ACCESSIBILITY_SERVICE_CHECKBOX:Ljava/lang/String;

.field private final TOGGLE_ACCESSIBILITY_CHECKBOX:Ljava/lang/String;

.field private mAccessibilityServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

.field private mLongPressTimeoutListPreference:Landroid/preference/ListPreference;

.field private mPowerButtonCategory:Landroid/preference/PreferenceCategory;

.field private mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

.field private mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mToggleAccessibilityCheckBox:Landroid/preference/CheckBoxPreference;

.field private mToggleAccessibilityServiceCheckBox:Landroid/preference/CheckBoxPreference;

.field private mToggleScriptInjectionCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    const-string v0, "toggle_accessibility_service_checkbox"

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->TOGGLE_ACCESSIBILITY_CHECKBOX:Ljava/lang/String;

    .line 68
    const-string v0, "key_toggle_accessibility_service_checkbox"

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->KEY_TOGGLE_ACCESSIBILITY_SERVICE_CHECKBOX:Ljava/lang/String;

    .line 71
    const-string v0, "long_press_timeout_list_preference"

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->KEY_LONG_PRESS_TIMEOUT_LIST_PREFERENCE:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    .line 93
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityCheckBox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilitySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionCheckBox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityServiceCheckBox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    return-void
.end method

.method private addAccessibilitServicePreferences()V
    .locals 9

    .prologue
    .line 357
    const-string v7, "accessibility"

    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 360
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 362
    .local v3, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    :cond_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 369
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 370
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ServiceInfo;

    .line 371
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 374
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 375
    .local v5, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 369
    .end local v5           #preference:Landroid/preference/CheckBoxPreference;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleEnableAccessibilityServiceStateChange(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityServiceCheckBox:Landroid/preference/CheckBoxPreference;

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 326
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    goto :goto_0
.end method

.method private handleEnableAccessibilityStateChange(Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 289
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    invoke-direct {p0, v2}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 296
    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0
.end method

.method private handleToggleAccessibilityScriptInjection(Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_script_injection"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private persistEnabledAccessibilityServices()V
    .locals 8

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 341
    .local v1, firstEnabled:I
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 342
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 343
    .local v4, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 349
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #preference:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 351
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 226
    const-string v0, "key_toggle_accessibility_service_checkbox"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 229
    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_toggle_accessibility_service_checkbox must be mapped to an instance of a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityServiceCheckBox:Landroid/preference/CheckBoxPreference;

    .line 237
    :cond_1
    return-void
.end method

.method private setAccessibilityServicePreferencesState(Z)V
    .locals 4
    .parameter "isEnabled"

    .prologue
    .line 246
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_0

    .line 257
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 251
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 252
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 253
    .local v2, pref:Landroid/preference/Preference;
    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 147
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->addAccessibilitServicePreferences()V

    .line 149
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 150
    .local v1, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, settingValue:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 153
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 154
    .local v7, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v7, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 155
    :goto_0
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 156
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v7           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    .line 162
    .local v0, accessibilityServices:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 164
    .local v4, preference:Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_1

    .line 165
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 169
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #preference:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_enabled"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 172
    .local v5, serviceState:I
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 173
    if-ne v5, v11, :cond_4

    .line 174
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    if-eqz p1, :cond_3

    .line 176
    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilitySettings;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 181
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 194
    :goto_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    return-void

    .line 179
    :cond_4
    invoke-direct {p0, v10}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    goto :goto_2

    .line 183
    :cond_5
    if-ne v5, v11, :cond_6

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_enabled"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    :cond_6
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 191
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/high16 v3, 0x7f05

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 102
    const-string v3, "accessibility_services_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    .line 105
    const-string v3, "toggle_accessibility_service_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityCheckBox:Landroid/preference/CheckBoxPreference;

    .line 108
    const-string v3, "toggle_accessibility_script_injection_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionCheckBox:Landroid/preference/CheckBoxPreference;

    .line 111
    const-string v3, "power_button_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonCategory:Landroid/preference/PreferenceCategory;

    .line 112
    const-string v3, "power_button_ends_call"

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    .line 115
    const-string v3, "long_press_timeout_list_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutListPreference:Landroid/preference/ListPreference;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_script_injection"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    move v2, v5

    .line 121
    .local v2, scriptInjectionEnabled:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 124
    const/16 v3, 0x1a

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "incall_power_button_behavior"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, incallPowerBehavior:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v1, v5

    .line 134
    .local v1, powerButtonCheckboxEnabled:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    .end local v0           #incallPowerBehavior:I
    .end local v1           #powerButtonCheckboxEnabled:Z
    :goto_2
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    return-void

    .end local v2           #scriptInjectionEnabled:Z
    :cond_0
    move v2, v6

    .line 119
    goto :goto_0

    .restart local v0       #incallPowerBehavior:I
    .restart local v2       #scriptInjectionEnabled:Z
    :cond_1
    move v1, v6

    .line 132
    goto :goto_1

    .line 139
    .end local v0           #incallPowerBehavior:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "dialogId"

    .prologue
    const v2, 0x1040014

    const v10, 0x104000a

    const/high16 v9, 0x104

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 384
    packed-switch p1, :pswitch_data_0

    move-object v0, v7

    .line 459
    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080424

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$1;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 404
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08042a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$2;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 421
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080423

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityServiceCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$3;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 439
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080425

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080426

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccessibilitySettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$4;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    .line 202
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutListPreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 214
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, intValue:I
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    const/4 v1, 0x1

    .line 219
    .end local v0           #intValue:I
    :goto_0
    return v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 261
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, key:Ljava/lang/String;
    const-string v3, "toggle_accessibility_service_checkbox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityStateChange(Landroid/preference/CheckBoxPreference;)V

    .line 280
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 265
    :cond_1
    const-string v3, "power_button_ends_call"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 270
    .local v1, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "incall_power_button_behavior"

    if-eqz v1, :cond_2

    const/4 v5, 0x2

    :goto_1
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 274
    .end local v1           #isChecked:Z
    :cond_3
    const-string v3, "toggle_accessibility_script_injection_checkbox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/android/settings/AccessibilitySettings;->handleToggleAccessibilityScriptInjection(Landroid/preference/CheckBoxPreference;)V

    goto :goto_0

    .line 276
    :cond_4
    instance-of v3, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 277
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityServiceStateChange(Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityServiceCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "key_toggle_accessibility_service_checkbox"

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAccessibilityServiceCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method
