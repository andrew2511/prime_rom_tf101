.class public Lcom/asus/mygazine/PreferenceSettings;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFALT_SHOW_DATE:Z = true

.field public static final DEFALT_SHOW_EVENT:Z = true

.field public static final DEFALT_SHOW_LOGO:Z = true

.field public static final DEFALT_SHOW_PHOTO_DATE:Z = true

.field public static final DEFALT_SHOW_WEATHER:Z = true

.field public static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMMM dd,yyyy"

.field public static final DEFAULT_SCALE_TYPE:Ljava/lang/String; = "centerCrop"

.field public static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final KEY_SCALE_TYPE:Ljava/lang/String; = "scale_type"

.field public static final KEY_SHOW_DATE:Ljava/lang/String; = "date_display"

.field public static final KEY_SHOW_EVENT:Ljava/lang/String; = "event_display"

.field public static final KEY_SHOW_LOGO:Ljava/lang/String; = "logo_display"

.field public static final KEY_SHOW_PHOTO_DATE:Ljava/lang/String; = "photo_date_display"

.field public static final KEY_SHOW_WEATHER:Ljava/lang/String; = "weather_display"

.field public static final PREFS_NAME:Ljava/lang/String; = "MyzinePrefs"

.field public static final TAG:Ljava/lang/String; = "PreferenceSettings"


# instance fields
.field private mDateFomatPrefs:Landroid/preference/ListPreference;

.field private mDateShowPrefs:Landroid/preference/CheckBoxPreference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mEventShowPrefs:Landroid/preference/CheckBoxPreference;

.field private mLogoPrefs:Landroid/preference/CheckBoxPreference;

.field private mPhotDateShowPrefs:Landroid/preference/CheckBoxPreference;

.field private mScaleTypePref:Landroid/preference/ListPreference;

.field private mWeatherShowPrefs:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method initUI()V
    .locals 18

    .prologue
    .line 105
    sget-boolean v14, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v14, :cond_0

    const-string v14, "PreferenceSettings"

    const-string v15, "initUI"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/asus/mygazine/PreferenceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "MyzinePrefs"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 109
    .local v13, settings:Landroid/content/SharedPreferences;
    const-string v14, "scale_type"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    .line 110
    const-string v14, "scale_type"

    const-string v15, "centerCrop"

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, scaleType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    move-object v14, v0

    invoke-virtual {v14, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    const-string v14, "logo_display"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/mygazine/PreferenceSettings;->mLogoPrefs:Landroid/preference/CheckBoxPreference;

    .line 116
    const-string v14, "logo_display"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 117
    .local v8, isShowLogo:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mLogoPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mLogoPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    invoke-virtual {v14, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    const-string v14, "date_display"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/mygazine/PreferenceSettings;->mDateShowPrefs:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v14, "date_display"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 122
    .local v6, isShowDate:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateShowPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateShowPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    invoke-virtual {v14, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    const-string v14, "photo_date_display"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/mygazine/PreferenceSettings;->mPhotDateShowPrefs:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v14, "photo_date_display"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 127
    .local v9, isShowPhotoDate:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mPhotDateShowPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mPhotDateShowPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    invoke-virtual {v14, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    const-string v14, "event_display"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/mygazine/PreferenceSettings;->mEventShowPrefs:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v14, "event_display"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 132
    .local v7, isShowEvent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mEventShowPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mEventShowPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    invoke-virtual {v14, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    const-string v14, "weather_display"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/mygazine/PreferenceSettings;->mWeatherShowPrefs:Landroid/preference/CheckBoxPreference;

    .line 136
    const-string v14, "weather_display"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 137
    .local v10, isShowWeather:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mWeatherShowPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mWeatherShowPrefs:Landroid/preference/CheckBoxPreference;

    move-object v14, v0

    invoke-virtual {v14, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/mygazine/PreferenceSettings;->mDummyDate:Ljava/util/Calendar;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDummyDate:Ljava/util/Calendar;

    move-object v14, v0

    const/16 v15, 0x7db

    const/16 v16, 0x2

    const/16 v17, 0x7

    invoke-virtual/range {v14 .. v17}, Ljava/util/Calendar;->set(III)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDummyDate:Ljava/util/Calendar;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 143
    .local v4, dummyDate:Ljava/util/Date;
    const-string v14, "date_format"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/asus/mygazine/PreferenceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060006

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, dateFormats:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    move-object v14, v0

    invoke-virtual {v14, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 147
    array-length v14, v3

    new-array v2, v14, [Ljava/lang/String;

    .line 148
    .local v2, dateEntrances:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v14, v2

    if-ge v5, v14, :cond_1

    .line 149
    new-instance v14, Ljava/text/SimpleDateFormat;

    aget-object v15, v3, v5

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct/range {v14 .. v16}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v14, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v5

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 151
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    move-object v14, v0

    invoke-virtual {v14, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 152
    const-string v14, "date_format"

    const/4 v15, 0x3

    aget-object v15, v3, v15

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, mDateFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    move-object v14, v0

    invoke-virtual {v14, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    move-object v14, v0

    if-nez v6, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 156
    return-void

    .line 155
    :cond_3
    const/4 v15, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 49
    sget-boolean v0, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreferenceSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/asus/mygazine/PreferenceSettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/asus/mygazine/PreferenceSettings;->initUI()V

    .line 53
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 70
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/mygazine/PreferenceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "MyzinePrefs"

    invoke-virtual {v6, v7, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 72
    .local v5, settings:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 73
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "logo_display"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "date_display"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "photo_date_display"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "event_display"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "weather_display"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    sget-boolean v6, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v6, :cond_1

    const-string v7, "PreferenceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange - key="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " newValue= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    const-string v6, "scale_type"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    iget-object v7, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    iget-object v6, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    sget-boolean v6, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v6, :cond_2

    const-string v7, "PreferenceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange - key = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " newValue="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    const-string v6, "date_format"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    sget-boolean v6, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v6, :cond_3

    const-string v7, "PreferenceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange - key="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " newValue= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_3
    iget-object v6, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    :cond_4
    const-string v6, "date_display"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 98
    .local v2, isShowDate:Z
    const-string v6, "photo_date_display"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 99
    .local v3, isShowPhotoDate:Z
    iget-object v6, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v7, v9

    :goto_0
    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 100
    const-string v6, "PreferenceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDateFomatPrefs.isEnabled() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v9

    :cond_6
    move v7, v10

    .line 99
    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/asus/mygazine/PreferenceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    const-string v4, "type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, type:Ljava/lang/String;
    sget-boolean v4, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "PreferenceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume()- action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/asus/mygazine/PreferenceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 60
    .local v2, root:Landroid/preference/PreferenceScreen;
    const-string v4, "MyZine2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    iget-object v4, p0, Lcom/asus/mygazine/PreferenceSettings;->mEventShowPrefs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 62
    iget-object v4, p0, Lcom/asus/mygazine/PreferenceSettings;->mWeatherShowPrefs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 68
    return-void

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/asus/mygazine/PreferenceSettings;->mEventShowPrefs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 65
    iget-object v4, p0, Lcom/asus/mygazine/PreferenceSettings;->mWeatherShowPrefs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
