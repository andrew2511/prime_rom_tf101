.class public Lcom/google/android/apps/books/preference/BrightnessPreference;
.super Landroid/widget/LinearLayout;
.source "BrightnessPreference.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference;


# instance fields
.field private mAutoListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mBinding:Z

.field private mBrightnessAuto:Landroid/widget/CheckBox;

.field private mBrightnessScrub:Landroid/widget/SeekBar;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mMaxValue:I

.field private mMinValue:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mScrubListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStep:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    .line 32
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMinValue:I

    .line 33
    const/16 v1, 0x64

    iput v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMaxValue:I

    .line 34
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    .line 121
    new-instance v1, Lcom/google/android/apps/books/preference/BrightnessPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/BrightnessPreference$1;-><init>(Lcom/google/android/apps/books/preference/BrightnessPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mAutoListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 131
    new-instance v1, Lcom/google/android/apps/books/preference/BrightnessPreference$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/BrightnessPreference$2;-><init>(Lcom/google/android/apps/books/preference/BrightnessPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mScrubListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 54
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mKey:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/preference/BrightnessPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/preference/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->updateEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/preference/BrightnessPreference;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/preference/BrightnessPreference;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/preference/BrightnessPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getBrightnessValue()I

    move-result v0

    return v0
.end method

.method private adjustSeekBarRange()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getScrubMaxValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 195
    return-void
.end method

.method private getBrightnessValue()I
    .locals 5

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 169
    .local v0, brightnessAuto:Z
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, -0x1

    .line 172
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMaxValue:I

    iget v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMinValue:I

    iget v3, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    iget-object v4, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getScrubMaxValue()I
    .locals 3

    .prologue
    .line 157
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMaxValue:I

    iget v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMinValue:I

    sub-int v0, v1, v2

    .line 158
    .local v0, diff:I
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    rem-int v1, v0, v1

    if-nez v1, :cond_0

    .line 159
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    div-int v1, v0, v1

    .line 162
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setBrightnessValue(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 178
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMaxValue:I

    if-lt p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getScrubMaxValue()I

    move-result v1

    move v0, v1

    .line 185
    .local v0, progress:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    if-gez v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 183
    .end local v0           #progress:I
    :cond_1
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMinValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    div-int/2addr v1, v2

    move v0, v1

    goto :goto_1

    .restart local v0       #progress:I
    :cond_2
    move v2, v0

    .line 185
    goto :goto_2
.end method

.method private updateEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 119
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bindPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mKey:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, value:I
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setBrightnessValue(I)V

    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->updateEnabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iput-boolean v4, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    .line 100
    return-void

    .line 98
    .end local v0           #value:I
    :catchall_0
    move-exception v1

    iput-boolean v4, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    throw v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 64
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mAutoListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mScrubListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->adjustSeekBarRange()V

    .line 71
    return-void
.end method

.method public persistPreference()V
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getBrightnessValue()I

    move-result v0

    .line 105
    .local v0, value:I
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;->onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 76
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->updateEnabled()V

    .line 77
    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 0
    .parameter "window"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mWindow:Landroid/view/Window;

    .line 81
    return-void
.end method

.method public setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V
    .locals 0
    .parameter "prefs"
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 86
    iput-object p2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->bindPreference()V

    .line 88
    return-void
.end method
