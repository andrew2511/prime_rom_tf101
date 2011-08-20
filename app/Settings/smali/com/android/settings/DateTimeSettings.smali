.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAutoTimePref:Landroid/preference/CheckBoxPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 404
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 376
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 378
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 379
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 380
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 381
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 383
    if-gez p0, :cond_0

    .line 384
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 385
    neg-int p0, p0

    .line 390
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 391
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 393
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 394
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 396
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 398
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 399
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 401
    return-object v0

    .line 387
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 332
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 330
    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v2

    .line 332
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .parameter "tz"

    .prologue
    .line 364
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 365
    .local v0, daylight:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 367
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initUI()V
    .locals 19

    .prologue
    .line 84
    const-string v3, "auto_time"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v10

    .line 85
    .local v10, autoTimeEnabled:Z
    const-string v3, "auto_time_zone"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v11

    .line 87
    .local v11, autoTimeZoneEnabled:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 88
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "firstRun"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 90
    .local v18, isFirstRun:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 93
    const-string v3, "auto_time"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    const-string v3, "auto_zone"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 98
    invoke-static {}, Lcom/android/settings/Utils;->isWifiOnly()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v18, :cond_1

    .line 99
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    const/4 v11, 0x0

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    const-string v3, "time"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 105
    const-string v3, "24 hour"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 106
    const-string v3, "timezone"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 107
    const-string v3, "date"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 108
    const-string v3, "date_format"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 109
    if-eqz v18, :cond_2

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, dateFormats:[Ljava/lang/String;
    array-length v3, v13

    new-array v15, v3, [Ljava/lang/String;

    .line 116
    .local v15, formattedDates:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, currentFormat:Ljava/lang/String;
    if-nez v12, :cond_3

    .line 120
    const-string v12, ""

    .line 122
    :cond_3
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    array-length v3, v15

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_5

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aget-object v4, v13, v16

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, formatted:Ljava/lang/String;
    aget-object v3, v13, v16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v16

    .line 122
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 131
    :cond_4
    aput-object v14, v15, v16

    goto :goto_1

    .line 135
    .end local v14           #formatted:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    move-object v3, v0

    invoke-virtual {v3, v15}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    move-object v3, v0

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    move-object v3, v0

    invoke-virtual {v3, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    move-object v3, v0

    if-nez v10, :cond_6

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    move-object v3, v0

    if-nez v10, :cond_7

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    move-object v3, v0

    if-nez v11, :cond_8

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    return-void

    .line 139
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 140
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 141
    :cond_8
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    if-eqz p1, :cond_0

    const-string v2, "24"

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    return-void

    .line 318
    :cond_0
    const-string v2, "12"

    goto :goto_0
.end method

.method static setDate(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 339
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 341
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 342
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 344
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 346
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 347
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 349
    :cond_0
    return-void
.end method

.method static setTime(II)V
    .locals 7
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 352
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 354
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 355
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 356
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 358
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 359
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 361
    :cond_0
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 81
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 229
    packed-switch p1, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    .line 255
    .local v0, d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 231
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 232
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 238
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 241
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 242
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 248
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 183
    invoke-static {p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->setDate(III)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 185
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 169
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 286
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 297
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 295
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 205
    const-string v3, "date_format"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 223
    .end local v2           #format:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v3, "auto_time"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 212
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 213
    .local v0, autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    if-eqz v0, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 216
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 213
    goto :goto_1

    :cond_3
    move v4, v7

    .line 215
    goto :goto_2

    :cond_4
    move v4, v7

    .line 216
    goto :goto_3

    .line 217
    .end local v0           #autoEnabled:Z
    :cond_5
    const-string v3, "auto_zone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 219
    .local v1, autoZoneEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time_zone"

    if-eqz v1, :cond_6

    move v5, v6

    :goto_4
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_7

    move v4, v6

    :goto_5
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v5, v7

    .line 219
    goto :goto_4

    :cond_7
    move v4, v7

    .line 221
    goto :goto_5
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 192
    invoke-static {p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(II)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 194
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 201
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 173
    .local v2, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 174
    .local v1, now:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 175
    .local v0, dummyDate:Ljava/util/Date;
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method
