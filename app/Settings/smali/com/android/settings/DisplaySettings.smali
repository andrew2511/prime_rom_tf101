.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAnimationScales:[F

.field private mAnimations:Landroid/preference/ListPreference;

.field private mDockBatterySaving:Landroid/preference/CheckBoxPreference;

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mHasDockFeature:Z

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mScreenshot:Landroid/preference/CheckBoxPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mHasDockFeature:Z

    .line 68
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 210
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDockBatterySaving:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 139
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v11

    move-wide v3, v11

    .line 140
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 169
    .end local p0
    :goto_1
    return-void

    .line 139
    .end local v3           #maxTimeout:J
    .restart local p0
    :cond_0
    const-wide/16 v11, 0x0

    move-wide v3, v11

    goto :goto_0

    .line 143
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 144
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 145
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 148
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 149
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 150
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 154
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 155
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 160
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 161
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 168
    .end local v9           #userPreference:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private getScreenShotSummaryId()I
    .locals 2

    .prologue
    .line 347
    const-string v0, "0"

    .line 348
    .local v0, cameraKeyProperty:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08000b

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f08000c

    goto :goto_0
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenshot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screenshot"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 269
    return-void

    :cond_0
    move v1, v3

    .line 261
    goto :goto_0

    :cond_1
    move v1, v3

    .line 265
    goto :goto_1
.end method

.method private updateAnimationsSummary(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 273
    .local v1, summaries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 274
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 277
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    return-void

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f00

    const/4 v9, 0x2

    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, animations:I
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v7}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-nez v7, :cond_0

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    .line 233
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-eqz v7, :cond_2

    .line 234
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    if-lt v7, v11, :cond_1

    .line 235
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v7, v10

    float-to-int v7, v7

    rem-int/lit8 v1, v7, 0xa

    .line 237
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    if-lt v7, v9, :cond_2

    .line 238
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v7, v7, v11

    add-float/2addr v7, v10

    float-to-int v7, v7

    and-int/lit8 v7, v7, 0x7

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v1, v7

    .line 241
    :cond_2
    const/4 v5, 0x0

    .line 242
    .local v5, idx:I
    const/4 v2, 0x0

    .line 243
    .local v2, best:I
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 244
    .local v0, aents:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_5

    .line 245
    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 246
    .local v6, val:I
    if-gt v6, v1, :cond_3

    if-le v6, v2, :cond_3

    .line 247
    move v2, v6

    .line 248
    move v5, v4

    .line 244
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 225
    .end local v0           #aents:[Ljava/lang/CharSequence;
    .end local v2           #best:I
    .end local v4           #i:I
    .end local v5           #idx:I
    .end local v6           #val:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 226
    .local v3, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "DisplaySettings"

    const-string v8, "can\'t get a valid mAnimationScales"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-nez v7, :cond_0

    new-array v7, v9, [F

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    goto :goto_0

    .line 227
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 228
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "DisplaySettings"

    const-string v8, "Exception"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-nez v7, :cond_0

    new-array v7, v9, [F

    fill-array-data v7, :array_2

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-nez v8, :cond_4

    new-array v8, v9, [F

    fill-array-data v8, :array_3

    iput-object v8, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    :cond_4
    throw v7

    .line 251
    .restart local v0       #aents:[Ljava/lang/CharSequence;
    .restart local v2       #best:I
    .restart local v4       #i:I
    .restart local v5       #idx:I
    :cond_5
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 252
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V

    .line 254
    :try_start_3
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    :goto_2
    return-void

    .line 255
    :catch_2
    move-exception v3

    .line 256
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v7, "DisplaySettings"

    const-string v8, "NullPointerException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 231
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private updateTimeoutPreferenceDescription(Landroid/content/ContentResolver;J)V
    .locals 12
    .parameter "resolver"
    .parameter "currentTimeout"

    .prologue
    .line 109
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 110
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 111
    .local v6, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 113
    .local v0, best:I
    const-wide/16 v7, -0x1

    cmp-long v7, p2, v7

    if-nez v7, :cond_0

    .line 114
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v8, 0x7f080005

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    const-string v7, "screenshot"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/android/settings/DisplaySettings;->mScreenshot:Landroid/preference/CheckBoxPreference;

    .line 129
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenshot:Landroid/preference/CheckBoxPreference;

    const-string v8, "screenshot"

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenshot:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->getScreenShotSummaryId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 133
    return-void

    .line 116
    .restart local p2
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v7, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ge v2, v7, :cond_2

    .line 117
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 118
    .local v4, timeout:J
    cmp-long v7, p2, v4

    if-ltz v7, :cond_1

    .line 119
    move v0, v2

    .line 116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    .end local v4           #timeout:J
    :cond_2
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f08026f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v11, v1, v0

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, summary:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    .end local v2           #i:I
    .end local v3           #summary:Ljava/lang/String;
    .end local p2
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 79
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 81
    const v4, 0x7f05000f

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 83
    const-string v4, "animations"

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    .line 84
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    const-string v4, "accelerometer"

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 86
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 88
    const-string v4, "screen_timeout"

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 89
    const-string v4, "screen_off_timeout"

    const-wide/16 v5, 0x7530

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 91
    .local v0, currentTimeout:J
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 94
    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(Landroid/content/ContentResolver;J)V

    .line 97
    const-string v4, "asus_battery_saving_mode"

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mDockBatterySaving:Landroid/preference/CheckBoxPreference;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 99
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v4, "asus.hardware.dock"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/DisplaySettings;->mHasDockFeature:Z

    .line 100
    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->mHasDockFeature:Z

    if-nez v4, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDockBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mDockBatterySaving:Landroid/preference/CheckBoxPreference;

    const-string v5, "dock_power_saving"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 203
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mHasDockFeature:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 303
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, key:Ljava/lang/String;
    const-string v4, "animations"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 307
    .local v3, value:I
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v4, v4

    if-lt v4, v7, :cond_0

    .line 308
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v5, 0x0

    rem-int/lit8 v6, v3, 0xa

    int-to-float v6, v6

    aput v6, v4, v5

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v4, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 311
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v5, 0x1

    div-int/lit8 v6, v3, 0xa

    rem-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    :goto_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    .end local v3           #value:I
    :cond_2
    const-string v4, "screen_timeout"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 325
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 327
    .restart local v3       #value:I
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    int-to-long v5, v3

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(Landroid/content/ContentResolver;J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v3           #value:I
    :cond_3
    :goto_1
    move v4, v7

    .line 335
    :goto_2
    return v4

    .line 318
    .restart local p2
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 319
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v5, "could not persist animation setting"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v8

    .line 320
    goto :goto_2

    .line 330
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local p2
    .restart local v3       #value:I
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 331
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 315
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 286
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    :cond_0
    :goto_1
    return v5

    :cond_1
    move v4, v6

    .line 287
    goto :goto_0

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenshot:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 291
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenshot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 292
    .local v1, isScreenshot:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screenshot"

    if-eqz v1, :cond_3

    move v4, v5

    :goto_2
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    .line 294
    .end local v1           #isScreenshot:Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDockBatterySaving:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDockBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 296
    .local v0, isBatterySaving:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_power_saving"

    if-eqz v0, :cond_5

    move v4, v5

    :goto_3
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_3
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 176
    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->mHasDockFeature:Z

    if-eqz v4, :cond_0

    .line 177
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 180
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 182
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, dockState:I
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    move v1, v7

    .line 186
    .local v1, enable:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mDockBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 192
    .end local v0           #dockState:I
    .end local v1           #enable:Z
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->updateState(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    return-void

    .restart local v0       #dockState:I
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    move v1, v6

    .line 185
    goto :goto_0

    .line 188
    .end local v0           #dockState:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mDockBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method
