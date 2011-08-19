.class public Lcom/android/camera/ui/CameraHeadUpDisplay;
.super Lcom/android/camera/ui/HeadUpDisplay;
.source "CameraHeadUpDisplay.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

.field private mInitialOrientation:I

.field private mInitialZoomRatios:[F

.field private mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

.field private mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;[FI)V
    .locals 0
    .parameter "context"
    .parameter "group"
    .parameter "initialZoomRatios"
    .parameter "initialOrientation"

    .prologue
    .line 44
    iput-object p3, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mInitialZoomRatios:[F

    .line 45
    iput p4, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mInitialOrientation:I

    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/HeadUpDisplay;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 47
    return-void
.end method

.method protected initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 4
    .parameter "context"
    .parameter "group"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/HeadUpDisplay;->initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 54
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pref_camera_exposure_key"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_scenemode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "pref_camera_picturesize_key"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_jpegquality_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    invoke-static {p2, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->getListPreferences(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)[Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 62
    .local v0, prefs:[Lcom/android/camera/ListPreference;
    new-instance v1, Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-direct {v1, p1, v0}, Lcom/android/camera/ui/OtherSettingsIndicator;-><init>(Landroid/content/Context;[Lcom/android/camera/ListPreference;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    new-instance v2, Lcom/android/camera/ui/CameraHeadUpDisplay$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CameraHeadUpDisplay$1;-><init>(Lcom/android/camera/ui/CameraHeadUpDisplay;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/OtherSettingsIndicator;->setOnRestorePreferencesClickedRunner(Ljava/lang/Runnable;)V

    .line 70
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 72
    new-instance v2, Lcom/android/camera/ui/GpsIndicator;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {p2, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-direct {v2, p1, v1}, Lcom/android/camera/ui/GpsIndicator;-><init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V

    iput-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

    .line 75
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 77
    const-string v1, "pref_camera_whitebalance_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 78
    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 80
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mInitialZoomRatios:[F

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lcom/android/camera/ui/ZoomIndicator;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ZoomIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mInitialZoomRatios:[F

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomIndicator;->setZoomRatios([F)V

    .line 83
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 88
    :goto_0
    const-string v1, "pref_camera_id_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mInitialOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->setOrientation(I)V

    .line 91
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    goto :goto_0
.end method

.method public setGpsHasSignal(Z)V
    .locals 2
    .parameter "hasSignal"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraHeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 112
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 113
    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/GpsIndicator;->setHasSignal(Z)V

    .line 115
    monitor-exit v0

    .line 119
    :goto_0
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/GpsIndicator;->setHasSignal(Z)V

    goto :goto_0
.end method

.method public setZoomIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraHeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 101
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 102
    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomIndicator;->setZoomIndex(I)V

    .line 104
    monitor-exit v0

    .line 108
    :goto_0
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomIndicator;->setZoomIndex(I)V

    goto :goto_0
.end method

.method public setZoomListener(Lcom/android/camera/ui/ZoomControllerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomIndicator;->setZoomListener(Lcom/android/camera/ui/ZoomControllerListener;)V

    .line 97
    return-void
.end method
