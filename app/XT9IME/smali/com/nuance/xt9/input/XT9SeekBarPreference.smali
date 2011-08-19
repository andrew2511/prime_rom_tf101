.class public Lcom/nuance/xt9/input/XT9SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "XT9SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final AUTO_ACCEPT_RECOGNIZE:Ljava/lang/String; = "auto_recpgnize_delay"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefault:I

.field private mMax:I

.field private mMin:I

.field mParent:Landroid/preference/PreferenceScreen;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mUnit:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    .line 40
    iput-object p1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mUnit:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mMax:I

    .line 43
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mDefault:I

    .line 46
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mMin:I

    .line 48
    return-void
.end method

.method public static getAutoDelay(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 3
    .parameter "sp"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 143
    move v0, p2

    .line 145
    .local v0, delay:I
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 149
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private saveAutoDelay(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "delay"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mMax:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 91
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 92
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x6

    .line 57
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 61
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 62
    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    const/high16 v6, 0x4200

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v5, Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 71
    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 74
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "auto_recpgnize_delay"

    iget v6, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mDefault:I

    invoke-static {v3, v5, v6}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->getAutoDelay(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    .line 75
    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    div-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 76
    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mMax:I

    div-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 77
    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    iget v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    int-to-float v5, v5

    const/high16 v6, 0x447a

    div-float v0, v5, v6

    .line 80
    .local v0, d:F
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, t:Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mUnit:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    const-string v0, "auto_recpgnize_delay"

    .line 169
    .local v0, key:Ljava/lang/String;
    iget v1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->saveAutoDelay(Ljava/lang/String;I)V

    .line 171
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mParent:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 174
    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seek"
    .parameter "value"
    .parameter "fromTouch"

    .prologue
    .line 109
    mul-int/lit8 v2, p2, 0x64

    iget v3, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mMin:I

    if-ge v2, v3, :cond_0

    .line 110
    iget v2, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mMin:I

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->setProgress(I)V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    mul-int/lit8 v2, p2, 0x64

    iput v2, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    .line 116
    iget v2, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    int-to-float v0, v2

    .line 117
    .local v0, d:F
    const/high16 v2, 0x447a

    div-float/2addr v0, v2

    .line 118
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, t:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mUnit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .parameter "restore"
    .parameter "defaultValue"

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "auto_recpgnize_delay"

    iget v2, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mDefault:I

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->getAutoDelay(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    .line 104
    .end local v0           #sp:Landroid/content/SharedPreferences;
    .end local p2
    :goto_0
    return-void

    .line 103
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 124
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 127
    return-void
.end method

.method public setParent(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mParent:Landroid/preference/PreferenceScreen;

    .line 52
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 130
    iput p1, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mValue:I

    .line 131
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->showDialog(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method
