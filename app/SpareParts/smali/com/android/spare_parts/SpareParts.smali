.class public Lcom/android/spare_parts/SpareParts;
.super Landroid/preference/PreferenceActivity;
.source "SpareParts.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final BATTERY_HISTORY_PREF:Ljava/lang/String; = "battery_history_settings"

.field private static final BATTERY_INFORMATION_PREF:Ljava/lang/String; = "battery_information_settings"

.field private static final END_BUTTON_PREF:Ljava/lang/String; = "end_button"

.field private static final FANCY_IME_ANIMATIONS_PREF:Ljava/lang/String; = "fancy_ime_animations"

.field private static final FONT_SIZE_PREF:Ljava/lang/String; = "font_size"

.field private static final HAPTIC_FEEDBACK_PREF:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_COMPATIBILITY_MODE:Ljava/lang/String; = "compatibility_mode"

.field private static final TAG:Ljava/lang/String; = "SpareParts"

.field private static final TRANSITION_ANIMATIONS_PREF:Ljava/lang/String; = "transition_animations"

.field private static final USAGE_STATISTICS_PREF:Ljava/lang/String; = "usage_statistics_settings"

.field private static final WINDOW_ANIMATIONS_PREF:Ljava/lang/String; = "window_animations"


# instance fields
.field private mCompatibilityMode:Landroid/preference/CheckBoxPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mEndButtonPref:Landroid/preference/ListPreference;

.field private mFancyImeAnimationsPref:Landroid/preference/CheckBoxPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mHapticFeedbackPref:Landroid/preference/CheckBoxPreference;

.field private mTransitionAnimationsPref:Landroid/preference/ListPreference;

.field private mWindowAnimationsPref:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 62
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/spare_parts/SpareParts;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 11
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 78
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 106
    :goto_0
    return v7

    .line 82
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 86
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 87
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 88
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 89
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 90
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 94
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move v7, v10

    .line 98
    goto :goto_0

    .line 88
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v7, v10

    .line 106
    goto :goto_0
.end method

.method private updateToggles()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mFancyImeAnimationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fancy_ime_animations"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mHapticFeedbackPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    return-void

    :cond_0
    move v1, v3

    .line 145
    goto :goto_0

    :cond_1
    move v1, v3

    .line 148
    goto :goto_1
.end method


# virtual methods
.method floatToIndex(FI)I
    .locals 7
    .parameter "val"
    .parameter "resid"

    .prologue
    const/4 v6, 0x1

    .line 205
    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 207
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 208
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 209
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 210
    sub-int v4, v0, v6

    .line 214
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 212
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    sub-int/2addr v4, v6

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/android/spare_parts/SpareParts;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 116
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "window_animations"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/spare_parts/SpareParts;->mWindowAnimationsPref:Landroid/preference/ListPreference;

    .line 117
    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mWindowAnimationsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    const-string v2, "transition_animations"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/spare_parts/SpareParts;->mTransitionAnimationsPref:Landroid/preference/ListPreference;

    .line 119
    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mTransitionAnimationsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v2, "fancy_ime_animations"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/spare_parts/SpareParts;->mFancyImeAnimationsPref:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v2, "haptic_feedback"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/spare_parts/SpareParts;->mHapticFeedbackPref:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v2, "font_size"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/spare_parts/SpareParts;->mFontSizePref:Landroid/preference/ListPreference;

    .line 123
    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    const-string v2, "end_button"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/spare_parts/SpareParts;->mEndButtonPref:Landroid/preference/ListPreference;

    .line 125
    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mEndButtonPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const-string v2, "compatibility_mode"

    invoke-virtual {p0, v2}, Lcom/android/spare_parts/SpareParts;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/spare_parts/SpareParts;->mCompatibilityMode:Landroid/preference/CheckBoxPreference;

    .line 127
    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mCompatibilityMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mCompatibilityMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "compatibility_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/spare_parts/SpareParts;->mWindowManager:Landroid/view/IWindowManager;

    .line 133
    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 134
    .local v0, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v2, "battery_history_settings"

    invoke-static {p0, v0, v2, v5}, Lcom/android/spare_parts/SpareParts;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 136
    const-string v2, "battery_information_settings"

    invoke-static {p0, v0, v2, v5}, Lcom/android/spare_parts/SpareParts;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 138
    const-string v2, "usage_statistics_settings"

    invoke-static {p0, v0, v2, v5}, Lcom/android/spare_parts/SpareParts;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 141
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 142
    return-void

    .end local v0           #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_0
    move v3, v5

    .line 128
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mWindowAnimationsPref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/spare_parts/SpareParts;->writeAnimationPreference(ILjava/lang/Object;)V

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mTransitionAnimationsPref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 157
    invoke-virtual {p0, v1, p2}, Lcom/android/spare_parts/SpareParts;->writeAnimationPreference(ILjava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mFontSizePref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/spare_parts/SpareParts;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mEndButtonPref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 161
    invoke-virtual {p0, p2}, Lcom/android/spare_parts/SpareParts;->writeEndButtonPreference(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mCompatibilityMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "compatibility_mode"

    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mCompatibilityMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v4

    .line 175
    :goto_1
    return v0

    :cond_0
    move v2, v3

    .line 170
    goto :goto_0

    :cond_1
    move v0, v3

    .line 175
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 259
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/spare_parts/SpareParts;->mWindowAnimationsPref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/spare_parts/SpareParts;->readAnimationPreference(ILandroid/preference/ListPreference;)V

    .line 260
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/spare_parts/SpareParts;->mTransitionAnimationsPref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/spare_parts/SpareParts;->readAnimationPreference(ILandroid/preference/ListPreference;)V

    .line 261
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/spare_parts/SpareParts;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 262
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mEndButtonPref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/spare_parts/SpareParts;->readEndButtonPreference(Landroid/preference/ListPreference;)V

    .line 263
    invoke-direct {p0}, Lcom/android/spare_parts/SpareParts;->updateToggles()V

    .line 264
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 245
    const-string v0, "fancy_ime_animations"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fancy_ime_animations"

    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mFancyImeAnimationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 246
    goto :goto_0

    .line 249
    :cond_2
    const-string v0, "haptic_feedback"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    iget-object v2, p0, Lcom/android/spare_parts/SpareParts;->mHapticFeedbackPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public readAnimationPreference(ILandroid/preference/ListPreference;)V
    .locals 2
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/spare_parts/SpareParts;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 220
    .local v0, scale:F
    const v1, 0x7f050001

    invoke-virtual {p0, v0, v1}, Lcom/android/spare_parts/SpareParts;->floatToIndex(FI)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0           #scale:F
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public readEndButtonPreference(Landroid/preference/ListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x7f050003

    invoke-virtual {p0, v0, v1}, Lcom/android/spare_parts/SpareParts;->floatToIndex(FI)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 234
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeAnimationPreference(ILjava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "objValue"

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 181
    .local v0, val:F
    iget-object v1, p0, Lcom/android/spare_parts/SpareParts;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0           #val:F
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    goto :goto_0

    .line 182
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public writeEndButtonPreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, val:I
    invoke-virtual {p0}, Lcom/android/spare_parts/SpareParts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "end_button_behavior"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0           #val:I
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 2
    .parameter "objValue"

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/spare_parts/SpareParts;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 190
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/spare_parts/SpareParts;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method
