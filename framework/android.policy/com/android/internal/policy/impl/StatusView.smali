.class Lcom/android/internal/policy/impl/StatusView;
.super Ljava/lang/Object;
.source "StatusView.java"


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field public static final BATTERY_LOW_ICON:I

.field public static final CHARGING_ICON:I

.field public static final LOCK_ICON:I


# instance fields
.field private mAlarmStatus:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private mCarrier:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mHasCarrier:Z

.field private mHasDate:Z

.field private mHelpIconId:I

.field private mHelpMessageId:I

.field private mInstructions:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPluggedIn:Z

.field private mPropertyOf:Landroid/widget/TextView;

.field private mShowingBatteryInfo:Z

.field private mStatus1:Landroid/widget/TextView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 8
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/StatusView;->mShowingBatteryInfo:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/StatusView;->mPluggedIn:Z

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/StatusView;->mBatteryLevel:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mInstructions:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/android/internal/policy/impl/StatusView;->mView:Landroid/view/View;

    .line 95
    const v0, 0x1020262

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/StatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mCarrier:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mCarrier:Landroid/widget/TextView;

    if-eqz v0, :cond_86

    move v0, v3

    :goto_22
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/StatusView;->mHasCarrier:Z

    .line 97
    const v0, 0x1020063

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/StatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mDate:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mDate:Landroid/widget/TextView;

    if-eqz v0, :cond_88

    move v0, v3

    :goto_34
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/StatusView;->mHasDate:Z

    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/StatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mDateFormatString:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/android/internal/policy/impl/StatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    iput-object p2, p0, Lcom/android/internal/policy/impl/StatusView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/StatusView;->refreshTimeAndDateDisplay()V

    .line 105
    const v0, 0x102025f

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/StatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    .line 106
    const v0, 0x102026b

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/StatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mAlarmStatus:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mAlarmStatus:Landroid/widget/TextView;

    const v1, 0x108002e

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 108
    const v0, 0x102026d

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/StatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mPropertyOf:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/policy/impl/StatusView;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/StatusView;->mHasCarrier:Z

    if-eqz v0, :cond_85

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mCarrier:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    :cond_85
    return-void

    :cond_86
    move v0, v2

    .line 96
    goto :goto_22

    :cond_88
    move v0, v2

    .line 98
    goto :goto_34
.end method

.method private findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method onRefreshBatteryInfo(ZZI)V
    .registers 5
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/StatusView;->mShowingBatteryInfo:Z

    .line 76
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/StatusView;->mPluggedIn:Z

    .line 77
    iput p3, p0, Lcom/android/internal/policy/impl/StatusView;->mBatteryLevel:I

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/StatusView;->updateStatusLines(Z)V

    .line 79
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 89
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/StatusView;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 86
    return-void
.end method

.method onTimeChanged()V
    .registers 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/StatusView;->refreshTimeAndDateDisplay()V

    .line 83
    return-void
.end method

.method refreshTimeAndDateDisplay()V
    .registers 4

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/StatusView;->mHasDate:Z

    if-eqz v0, :cond_14

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/StatusView;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_14
    return-void
.end method

.method resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 4
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mInstructions:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/StatusView;->mShowingBatteryInfo:Z

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/StatusView;->mPluggedIn:Z

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/StatusView;->mBatteryLevel:I

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/StatusView;->updateStatusLines(Z)V

    .line 125
    return-void
.end method

.method setCarrierText(I)V
    .registers 3
    .parameter "stringId"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "carrierText"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mCarrier:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_9
    return-void
.end method

.method setCarrierText(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method setHelpMessage(II)V
    .registers 3
    .parameter "messageId"
    .parameter "iconId"

    .prologue
    .line 224
    iput p1, p0, Lcom/android/internal/policy/impl/StatusView;->mHelpMessageId:I

    .line 225
    iput p2, p0, Lcom/android/internal/policy/impl/StatusView;->mHelpIconId:I

    .line 226
    return-void
.end method

.method setInstructionText(I)V
    .registers 4
    .parameter "stringId"

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    return-void

    .line 130
    :cond_13
    const/4 v1, 0x4

    goto :goto_f
.end method

.method setInstructionText(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x4

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    return-void

    :cond_18
    move v1, v2

    .line 136
    goto :goto_14
.end method

.method setInstructions(Ljava/lang/String;)V
    .registers 2
    .parameter "instructions"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/impl/StatusView;->mInstructions:Ljava/lang/String;

    .line 66
    return-void
.end method

.method updateStatusLines(Z)V
    .registers 12
    .parameter "showStatusLines"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 154
    if-nez p1, :cond_1a

    .line 155
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    move v5, v9

    :goto_a
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mAlarmStatus:Landroid/widget/TextView;

    if-eqz p1, :cond_18

    move v5, v9

    :goto_12
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :goto_15
    return-void

    :cond_16
    move v5, v6

    .line 155
    goto :goto_a

    :cond_18
    move v5, v6

    .line 156
    goto :goto_12

    .line 161
    :cond_1a
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mPropertyOf:Landroid/widget/TextView;

    if-eqz v4, :cond_48

    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/StatusView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 163
    .local v3, res:Landroid/content/ContentResolver;
    const-string v4, "lock_screen_owner_info"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, info:Ljava/lang/String;
    const-string v4, "lock_screen_owner_info_enabled"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_78

    move v0, v7

    .line 167
    .local v0, enabled:Z
    :goto_35
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mPropertyOf:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mPropertyOf:Landroid/widget/TextView;

    if-eqz v0, :cond_7a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7a

    move v5, v9

    :goto_45
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    .end local v0           #enabled:Z
    .end local v1           #info:Ljava/lang/String;
    .end local v3           #res:Landroid/content/ContentResolver;
    :cond_48
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, nextAlarm:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 175
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_5e
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mInstructions:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 184
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/StatusView;->mInstructions:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 186
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .end local v2           #nextAlarm:Ljava/lang/String;
    .restart local v1       #info:Ljava/lang/String;
    .restart local v3       #res:Landroid/content/ContentResolver;
    :cond_78
    move v0, v9

    .line 164
    goto :goto_35

    .restart local v0       #enabled:Z
    :cond_7a
    move v5, v6

    .line 168
    goto :goto_45

    .line 178
    .end local v0           #enabled:Z
    .end local v1           #info:Ljava/lang/String;
    .end local v3           #res:Landroid/content/ContentResolver;
    .restart local v2       #nextAlarm:Ljava/lang/String;
    :cond_7c
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5e

    .line 187
    :cond_82
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/StatusView;->mShowingBatteryInfo:Z

    if-eqz v4, :cond_10c

    .line 189
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/StatusView;->mPluggedIn:Z

    if-eqz v4, :cond_e3

    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 192
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/StatusView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10402af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 194
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 195
    :cond_ae
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharging()Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 196
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/StatusView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10402ae

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/internal/policy/impl/StatusView;->mBatteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 199
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 201
    :cond_dc
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 203
    :cond_e3
    iget v4, p0, Lcom/android/internal/policy/impl/StatusView;->mBatteryLevel:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_105

    .line 205
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/StatusView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10402b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 207
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 209
    :cond_105
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 213
    :cond_10c
    iget v4, p0, Lcom/android/internal/policy/impl/StatusView;->mHelpMessageId:I

    if-eqz v4, :cond_125

    .line 214
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/StatusView;->mHelpMessageId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/StatusView;->mHelpIconId:I

    invoke-virtual {v4, v5, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 216
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 218
    :cond_125
    iget-object v4, p0, Lcom/android/internal/policy/impl/StatusView;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15
.end method
