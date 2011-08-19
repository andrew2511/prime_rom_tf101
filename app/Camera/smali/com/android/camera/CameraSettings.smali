.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field private static MMS_VIDEO_DURATION:I

.field private static mCameraId:I


# instance fields
.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "activity"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 78
    sput p3, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 79
    iput-object p4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 80
    return-void
.end method

.method private buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 8
    .parameter "group"
    .parameter "preference"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 227
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v3, v4

    .line 228
    .local v3, numOfCameras:I
    if-ge v3, v5, :cond_0

    .line 229
    invoke-virtual {p2}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 245
    :goto_0
    return-void

    .line 233
    :cond_0
    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 234
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 235
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v6, :cond_2

    move v2, v6

    .line 239
    .local v2, index:I
    :goto_2
    aget-object v4, v0, v2

    if-nez v4, :cond_4

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 241
    if-ne v2, v6, :cond_3

    move v4, v7

    :goto_3
    aget-object v4, v0, v4

    if-eqz v4, :cond_4

    .line 244
    .end local v2           #index:I
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/camera/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v2, v7

    .line 235
    goto :goto_2

    .restart local v2       #index:I
    :cond_3
    move v4, v6

    .line 241
    goto :goto_3

    .line 234
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 11
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 202
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    .line 203
    .local v4, max:I
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 204
    .local v6, min:I
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    .line 205
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 223
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v8

    .line 211
    .local v8, step:F
    int-to-float v9, v4

    mul-float/2addr v9, v8

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v5, v9

    .line 212
    .local v5, maxValue:I
    int-to-float v9, v6

    mul-float/2addr v9, v8

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 213
    .local v7, minValue:I
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 214
    .local v1, entries:[Ljava/lang/CharSequence;
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 215
    .local v2, entryValues:[Ljava/lang/CharSequence;
    move v3, v7

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_2

    .line 216
    sub-int v9, v5, v3

    int-to-float v10, v3

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, builder:Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    const/16 v9, 0x2b

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_1
    sub-int v9, v5, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 221
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p2, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p2, v2}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 269
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 270
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 275
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 276
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 280
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    goto :goto_0
.end method

.method public static getVideoDurationInMillis(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "quality"

    .prologue
    const/4 v2, 0x0

    .line 364
    sget v1, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    if-nez v1, :cond_0

    .line 365
    sget v1, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 366
    .local v0, profile:Landroid/media/CamcorderProfile;
    if-eqz v0, :cond_0

    .line 367
    iget v1, v0, Landroid/media/CamcorderProfile;->duration:I

    sput v1, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    .line 371
    .end local v0           #profile:Landroid/media/CamcorderProfile;
    :cond_0
    const v1, 0x7f0b0026

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    sget v1, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 376
    :goto_0
    return v1

    .line 373
    :cond_1
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    const v1, 0xdbba0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 376
    goto :goto_0
.end method

.method public static getVideoQuality(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "quality"

    .prologue
    .line 358
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPreference(Lcom/android/camera/PreferenceGroup;)V
    .locals 12
    .parameter "group"

    .prologue
    .line 131
    const-string v11, "pref_video_quality_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 132
    .local v9, videoQuality:Lcom/android/camera/ListPreference;
    const-string v11, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 133
    .local v7, timeLapseInterval:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_picturesize_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 134
    .local v5, pictureSize:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 135
    .local v10, whiteBalance:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_coloreffect_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 136
    .local v1, colorEffect:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_scenemode_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 137
    .local v6, sceneMode:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_flashmode_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 138
    .local v3, flashMode:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_focusmode_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 139
    .local v4, focusMode:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_exposure_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 140
    .local v2, exposure:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_id_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 142
    .local v0, cameraIdPref:Lcom/android/camera/IconListPreference;
    const-string v11, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 147
    .local v8, videoFlashMode:Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_0

    .line 148
    invoke-direct {p0, v9}, Lcom/android/camera/CameraSettings;->initVideoQuality(Lcom/android/camera/ListPreference;)V

    .line 151
    :cond_0
    if-eqz v5, :cond_1

    .line 152
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v5, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 155
    :cond_1
    if-eqz v10, :cond_2

    .line 156
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v10, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 159
    :cond_2
    if-eqz v1, :cond_3

    .line 160
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v1, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 163
    :cond_3
    if-eqz v6, :cond_4

    .line 164
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v6, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 167
    :cond_4
    if-eqz v3, :cond_5

    .line 168
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v3, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 171
    :cond_5
    if-eqz v4, :cond_6

    .line 172
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v4, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 175
    :cond_6
    if-eqz v8, :cond_7

    .line 176
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v8, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 179
    :cond_7
    if-eqz v2, :cond_8

    invoke-direct {p0, p1, v2}, Lcom/android/camera/CameraSettings;->buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 180
    :cond_8
    if-eqz v0, :cond_9

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraSettings;->buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 182
    :cond_9
    if-eqz v7, :cond_a

    invoke-direct {p0, v7}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 183
    :cond_a
    return-void
.end method

.method private initVideoQuality(Lcom/android/camera/ListPreference;)V
    .locals 7
    .parameter "videoQuality"

    .prologue
    const v6, 0x7f0b0026

    .line 426
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 427
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 428
    .local v3, values:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/camera/Util;->isMmsCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 431
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "30"

    sget v6, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 449
    :cond_0
    :goto_1
    return-void

    .line 430
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v1           #i:I
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v2, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 443
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 444
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 447
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    goto :goto_1
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 96
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v5, :cond_0

    .line 108
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 99
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 102
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_camera_picturesize_key"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 97
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    .end local v1           #candidate:Ljava/lang/String;
    :cond_2
    const-string v6, "CameraSettings"

    const-string v7, "No supported picture size found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 380
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    .line 248
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 249
    invoke-virtual {p0, v2}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    .line 250
    .local v1, child:Lcom/android/camera/CameraPreference;
    instance-of v4, v1, Lcom/android/camera/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 251
    move-object v0, v1

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    move-object v4, v0

    invoke-static {v4, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 261
    .end local v1           #child:Lcom/android/camera/CameraPreference;
    :goto_1
    return v4

    .line 255
    .restart local v1       #child:Lcom/android/camera/CameraPreference;
    :cond_0
    instance-of v4, v1, Lcom/android/camera/ListPreference;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/android/camera/ListPreference;

    .end local v1           #child:Lcom/android/camera/CameraPreference;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    move v4, v5

    .line 258
    goto :goto_1

    .line 248
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 113
    return-void
.end method

.method private resetIfInvalid(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 287
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 289
    :cond_0
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"

    .prologue
    const/4 v5, -0x1

    .line 393
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 396
    .local v1, currentCameraId:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 397
    .local v0, backCameraId:I
    if-eq v0, v5, :cond_0

    .line 398
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 399
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 400
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 403
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 404
    .local v3, frontCameraId:I
    if-eq v3, v5, :cond_1

    .line 405
    invoke-virtual {p1, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 406
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 407
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 415
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 416
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 421
    invoke-static {p0, p2}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 422
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 423
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v6, 0x0

    .line 117
    const/16 v5, 0x78

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 118
    .local v2, index:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    move v5, v6

    .line 127
    :goto_0
    return v5

    .line 119
    :cond_0
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 120
    .local v4, width:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 122
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v4, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v5, v0, :cond_1

    .line 123
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 124
    const/4 v5, 0x1

    goto :goto_0

    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_2
    move v5, v6

    .line 127
    goto :goto_0
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 294
    .local v2, size:Landroid/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 313
    const/4 v3, 0x0

    .line 315
    .local v3, version:I
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 319
    :goto_0
    if-ne v3, v7, :cond_0

    .line 355
    :goto_1
    return-void

    .line 316
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 317
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0

    .line 321
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 325
    const/4 v3, 0x1

    .line 327
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 329
    const-string v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 331
    const-string v2, "normal"

    .line 337
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    const/4 v3, 0x2

    .line 340
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 341
    const-string v4, "pref_camera_recordlocation_key"

    const-string v5, "pref_camera_recordlocation_key"

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "on"

    :goto_3
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    const/4 v3, 0x3

    .line 347
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 350
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 351
    const-string v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 353
    :cond_4
    const-string v4, "pref_version_key"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 332
    .restart local v2       #quality:Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 333
    const-string v2, "fine"

    goto :goto_2

    .line 335
    :cond_6
    const-string v2, "superfine"

    goto :goto_2

    .line 341
    .end local v2           #quality:Ljava/lang/String;
    :cond_7
    const-string v5, "none"

    goto :goto_3
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x1

    .line 302
    :try_start_0
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 306
    .local v2, version:I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 310
    :goto_1
    return-void

    .line 303
    .end local v2           #version:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 304
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #version:I
    goto :goto_0

    .line 307
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 385
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 386
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 388
    return-void
.end method


# virtual methods
.method public getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 83
    new-instance v1, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    .line 86
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->initPreference(Lcom/android/camera/PreferenceGroup;)V

    .line 87
    return-object v0
.end method
