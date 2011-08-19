.class public Lcom/android/systemui/statusbar/policy/AirplaneModeController;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirplaneMode:Z

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 2
    .parameter "context"
    .parameter "checkbox"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->getAirplaneMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    .line 43
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 44
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 45
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private unsafe(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    if-eq p2, v0, :cond_0

    .line 59
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    .line 60
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->unsafe(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, enabled:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    if-eq v0, v1, :cond_0

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 72
    .end local v0           #enabled:Z
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    return-void
.end method
