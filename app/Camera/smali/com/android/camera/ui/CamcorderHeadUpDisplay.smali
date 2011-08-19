.class public Lcom/android/camera/ui/CamcorderHeadUpDisplay;
.super Lcom/android/camera/ui/HeadUpDisplay;
.source "CamcorderHeadUpDisplay.java"


# instance fields
.field private mInitialOrientation:I

.field private mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;I)V
    .locals 0
    .parameter "context"
    .parameter "group"
    .parameter "initialOrientation"

    .prologue
    .line 38
    iput p3, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mInitialOrientation:I

    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/HeadUpDisplay;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 40
    return-void
.end method

.method protected initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 4
    .parameter "context"
    .parameter "group"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/HeadUpDisplay;->initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 47
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

    invoke-static {p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->getListPreferences(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)[Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 55
    .local v0, prefs:[Lcom/android/camera/ListPreference;
    new-instance v1, Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-direct {v1, p1, v0}, Lcom/android/camera/ui/OtherSettingsIndicator;-><init>(Landroid/content/Context;[Lcom/android/camera/ListPreference;)V

    iput-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    new-instance v2, Lcom/android/camera/ui/CamcorderHeadUpDisplay$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CamcorderHeadUpDisplay$1;-><init>(Lcom/android/camera/ui/CamcorderHeadUpDisplay;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/OtherSettingsIndicator;->setOnRestorePreferencesClickedRunner(Ljava/lang/Runnable;)V

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 65
    const-string v1, "pref_camera_whitebalance_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 66
    const-string v1, "pref_camera_video_flashmode_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 67
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 68
    const-string v1, "pref_camera_id_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 70
    iget-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget v2, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mInitialOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->setOrientation(I)V

    .line 71
    return-void
.end method
