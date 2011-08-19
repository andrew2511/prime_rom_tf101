.class public Lcom/android/systemui/statusbar/policy/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mPower:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 8
    .parameter "context"
    .parameter "control"

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 49
    .local v1, automaticAvailable:Z
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 51
    if-eqz v1, :cond_1

    .line 54
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    .local v0, automatic:I
    :goto_0
    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 67
    .end local v0           #automatic:I
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 73
    .local v4, value:I
    :goto_3
    const/16 v5, 0xe1

    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 74
    const/16 v5, 0x1e

    sub-int v5, v4, v5

    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 76
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    .line 77
    return-void

    .line 56
    .end local v4           #value:I
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 57
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #automatic:I
    goto :goto_0

    .end local v3           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v5, v7

    .line 59
    goto :goto_1

    .line 61
    .end local v0           #automatic:I
    :cond_1
    invoke-virtual {p2, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    goto :goto_2

    .line 69
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 70
    .local v2, ex:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v4, 0xff

    .restart local v4       #value:I
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 2
    .parameter "view"
    .parameter "tracking"
    .parameter "automatic"
    .parameter "value"

    .prologue
    .line 80
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMode(I)V

    .line 82
    if-nez p3, :cond_0

    .line 83
    add-int/lit8 v0, p4, 0x1e

    .line 84
    .local v0, val:I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightness(I)V

    .line 85
    if-nez p2, :cond_0

    .line 86
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 94
    .end local v0           #val:I
    :cond_0
    return-void

    .line 80
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
