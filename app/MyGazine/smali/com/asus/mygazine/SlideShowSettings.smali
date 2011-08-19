.class public Lcom/asus/mygazine/SlideShowSettings;
.super Landroid/preference/PreferenceFragment;
.source "SlideShowSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFAULT_PIC_NUMBER:I = 0x14

.field public static final DEFAULT_QUERY_NUMBER:I = 0x64

.field public static final DEFAULT_SLIDE_SHOW_INTERVAL:I = 0x2710

.field public static final DEFAULT_TRANSITION:Z = true

.field public static final KEY_PIC_NUMBER:Ljava/lang/String; = "picture_number"

.field public static final KEY_SLIDE_SHOW_INTERVAL:Ljava/lang/String; = "slide_show_interval"

.field public static final KEY_TRANSITION:Ljava/lang/String; = "transition_effect"

.field public static final PREFS_NAME:Ljava/lang/String; = "MyzinePrefs"

.field public static final TAG:Ljava/lang/String; = "SlideShowSettings"


# instance fields
.field private mPictureNumPref:Landroid/preference/ListPreference;

.field private mShowIntervalPref:Landroid/preference/ListPreference;

.field private mTransitionPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method initUI()V
    .locals 10

    .prologue
    .line 63
    const-string v7, "picture_number"

    invoke-virtual {p0, v7}, Lcom/asus/mygazine/SlideShowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    .line 64
    const-string v7, "slide_show_interval"

    invoke-virtual {p0, v7}, Lcom/asus/mygazine/SlideShowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    .line 65
    const-string v7, "transition_effect"

    invoke-virtual {p0, v7}, Lcom/asus/mygazine/SlideShowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mTransitionPref:Landroid/preference/CheckBoxPreference;

    .line 67
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mTransitionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/asus/mygazine/SlideShowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "MyzinePrefs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 72
    .local v5, settings:Landroid/content/SharedPreferences;
    const-string v7, "picture_number"

    const/16 v8, 0x14

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, pictureNumber:Ljava/lang/String;
    const-string v7, "slide_show_interval"

    const/16 v8, 0x2710

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, interval:Ljava/lang/String;
    const-string v7, "transition_effect"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 76
    .local v2, isChecked:Z
    invoke-virtual {p0}, Lcom/asus/mygazine/SlideShowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, pictureNumberEntries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_0

    .line 78
    aget-object v7, v4, v0

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/asus/mygazine/SlideShowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/asus/mygazine/SlideShowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, showIntervalEntries:[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 83
    aget-object v7, v6, v0

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/asus/mygazine/SlideShowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 86
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 89
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v7, p0, Lcom/asus/mygazine/SlideShowSettings;->mTransitionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 29
    sget-boolean v0, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SlideShowSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/asus/mygazine/SlideShowSettings;->addPreferencesFromResource(I)V

    .line 32
    invoke-virtual {p0}, Lcom/asus/mygazine/SlideShowSettings;->initUI()V

    .line 33
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/mygazine/SlideShowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "MyzinePrefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 38
    .local v3, settings:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 39
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "picture_number"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    sget-boolean v4, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v4, :cond_0

    const-string v5, "SlideShowSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange - key = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " value="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    iget-object v5, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 44
    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/asus/mygazine/SlideShowSettings;->mPictureNumPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    :cond_1
    const-string v4, "slide_show_interval"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    sget-boolean v4, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v4, :cond_2

    const-string v5, "SlideShowSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange - key = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " value="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    iget-object v5, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    :cond_3
    const-string v4, "transition_effect"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 55
    sget-boolean v4, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v4, :cond_4

    const-string v5, "SlideShowSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange - key = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " value="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    :cond_5
    const/4 v4, 0x1

    return v4
.end method
