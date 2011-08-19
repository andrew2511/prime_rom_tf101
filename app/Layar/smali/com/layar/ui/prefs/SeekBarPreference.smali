.class public Lcom/layar/ui/prefs/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/prefs/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mEnabledCheckbox:Landroid/widget/CheckBox;

.field private mInitSummary:Ljava/lang/String;

.field private mMaxValue:I

.field private mMinValue:I

.field private mValue:I

.field private mWidgetFrame:Landroid/view/View;

.field private viewSummaryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/layar/ui/prefs/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/ui/prefs/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 39
    const/high16 v1, 0x7f01

    invoke-direct {p0, p1, p2, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v1, Lcom/layar/R$styleable;->SeekBarPreference:[I

    .line 41
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mMinValue:I

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mMaxValue:I

    .line 45
    iget v1, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mMaxValue:I

    iget v2, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mMaxValue:I

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-virtual {p0}, Lcom/layar/ui/prefs/SeekBarPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mInitSummary:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mValue:I

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 55
    const v4, 0x7f0700ab

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    .line 56
    iget-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 57
    iget-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    iget-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    iget-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    const v4, 0x1020018

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mWidgetFrame:Landroid/view/View;

    .line 63
    iget-boolean v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mWidgetFrame:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :goto_0
    const v4, 0x7f0700ac

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, viewSeekBar:Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/widget/SeekBar;

    if-eqz v4, :cond_0

    .line 68
    move-object v0, v3

    check-cast v0, Landroid/widget/SeekBar;

    move-object v1, v0

    .line 69
    .local v1, seekBar:Landroid/widget/SeekBar;
    iget v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mMaxValue:I

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 70
    iget v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mValue:I

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 71
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 75
    .end local v1           #seekBar:Landroid/widget/SeekBar;
    :cond_0
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->viewSummaryText:Landroid/widget/TextView;

    .line 76
    iget-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->viewSummaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, summary:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabled:Z

    if-eqz v4, :cond_3

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    const-string v5, "%value%"

    invoke-virtual {p0}, Lcom/layar/ui/prefs/SeekBarPreference;->getValue()I

    move-result v6

    invoke-static {v6}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    :goto_1
    iget-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->viewSummaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v2           #summary:Ljava/lang/String;
    :cond_1
    return-void

    .line 64
    .end local v3           #viewSeekBar:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mWidgetFrame:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 82
    .restart local v2       #summary:Ljava/lang/String;
    .restart local v3       #viewSeekBar:Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 89
    iput-boolean p2, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabled:Z

    .line 90
    iget-object v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 91
    iget-boolean v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/SeekBarPreference;->setValue(I)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 111
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 116
    if-nez p3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->viewSummaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->viewSummaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mInitSummary:Ljava/lang/String;

    .line 120
    const-string v2, "%value%"

    iget v3, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mMinValue:I

    add-int/2addr v3, p2

    invoke-static {v3}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/layar/ui/prefs/SeekBarPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/layar/ui/prefs/SeekBarPreference$SavedState;

    move-object v1, v0

    .line 161
    .local v1, myState:Lcom/layar/ui/prefs/SeekBarPreference$SavedState;
    invoke-virtual {v1}, Lcom/layar/ui/prefs/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 162
    iget v2, v1, Lcom/layar/ui/prefs/SeekBarPreference$SavedState;->value:I

    invoke-virtual {p0, v2}, Lcom/layar/ui/prefs/SeekBarPreference;->setValue(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 142
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/layar/ui/prefs/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 149
    :goto_0
    return-object v2

    .line 147
    :cond_0
    new-instance v0, Lcom/layar/ui/prefs/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/layar/ui/prefs/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 148
    .local v0, myState:Lcom/layar/ui/prefs/SeekBarPreference$SavedState;
    invoke-virtual {p0}, Lcom/layar/ui/prefs/SeekBarPreference;->getValue()I

    move-result v2

    iput v2, v0, Lcom/layar/ui/prefs/SeekBarPreference$SavedState;->value:I

    move-object v2, v0

    .line 149
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/SeekBarPreference;->setValue(I)V

    .line 137
    return-void

    .line 136
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 125
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 129
    iget v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mMinValue:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/SeekBarPreference;->setValue(I)V

    .line 130
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 95
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mEnabled:Z

    .line 96
    iget v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mValue:I

    if-eq v0, p1, :cond_0

    .line 97
    iput p1, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mValue:I

    .line 98
    invoke-virtual {p0, p1}, Lcom/layar/ui/prefs/SeekBarPreference;->persistInt(I)Z

    .line 99
    iget-object v0, p0, Lcom/layar/ui/prefs/SeekBarPreference;->mInitSummary:Ljava/lang/String;

    .line 100
    const-string v1, "%value%"

    invoke-virtual {p0}, Lcom/layar/ui/prefs/SeekBarPreference;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
