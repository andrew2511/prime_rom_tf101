.class public Lcom/google/android/partnersetup/RlzDebugActivity;
.super Landroid/app/Activity;
.source "RlzDebugActivity.java"


# instance fields
.field private current_oem_mode:I

.field private mACAP:Landroid/widget/TextView;

.field private mActivated:Landroid/widget/TextView;

.field private mBrandCode:Landroid/widget/TextView;

.field private mDelayAfterActivation:Landroid/widget/TextView;

.field private mDelayAfterEvent:Landroid/widget/TextView;

.field private mEnabled:Landroid/widget/TextView;

.field private mGUID:Landroid/widget/TextView;

.field private mMaxTableSize:Landroid/widget/TextView;

.field private mOEM:Landroid/widget/RadioGroup;

.field private mPID:Landroid/widget/TextView;

.field private mPingInterval:Landroid/widget/TextView;

.field private mRetryInterval:Landroid/widget/TextView;

.field private mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

.field private mWakeTime:Landroid/widget/TextView;

.field private unknownProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/partnersetup/RlzDebugActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->current_oem_mode:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/partnersetup/RlzDebugActivity;)Lcom/google/android/partnersetup/RlzPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    return-object v0
.end method

.method private getUnknownPropertyString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->unknownProperty:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzDebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->unknownProperty:Ljava/lang/String;

    .line 164
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->unknownProperty:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->setContentView(I)V

    .line 60
    new-instance v0, Lcom/google/android/partnersetup/RlzPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    .line 62
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mBrandCode:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mGUID:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mPID:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mActivated:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mACAP:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mWakeTime:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mOEM:Landroid/widget/RadioGroup;

    .line 69
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mOEM:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$1;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 82
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mEnabled:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mMaxTableSize:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mPingInterval:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRetryInterval:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mDelayAfterActivation:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mDelayAfterEvent:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$2;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$3;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$4;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mBrandCode:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getBrandCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v6}, Lcom/google/android/partnersetup/RlzPreferences;->getDeviceGUID()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, guid:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzDebugActivity;->getUnknownPropertyString()Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_0
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mGUID:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v6}, Lcom/google/android/partnersetup/RlzPreferences;->getDevicePID()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, pid:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzDebugActivity;->getUnknownPropertyString()Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_1
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mPID:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mActivated:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->isActivationPingPrepared()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mACAP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzDebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/partnersetup/RlzAcap;->generateAcap(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v6}, Lcom/google/android/partnersetup/RlzPreferences;->getAlarmWakeTime()J

    move-result-wide v4

    .line 143
    .local v4, wakeTime:J
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 144
    .local v0, dateFormat:Ljava/text/DateFormat;
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mWakeTime:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v6}, Lcom/google/android/partnersetup/RlzPreferences;->isOEMModeEnabled()Z

    move-result v2

    .line 147
    .local v2, oem_pref:Z
    if-eqz v2, :cond_2

    const v6, 0x7f05000d

    :goto_0
    iput v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->current_oem_mode:I

    .line 148
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mOEM:Landroid/widget/RadioGroup;

    iget v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->current_oem_mode:I

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 150
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mEnabled:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->isRlzEnabledGservices()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mMaxTableSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getMaxTableSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mPingInterval:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getPingInterval()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRetryInterval:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getRetryInterval()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mDelayAfterActivation:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getDelayAfterActivation()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v6, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mDelayAfterEvent:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getDelayAfterEvent()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 147
    :cond_2
    const v6, 0x7f05000e

    goto :goto_0
.end method
