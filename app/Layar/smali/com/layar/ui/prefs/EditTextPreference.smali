.class public Lcom/layar/ui/prefs/EditTextPreference;
.super Landroid/preference/Preference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/prefs/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mTempText:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private viewEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/prefs/EditTextPreference;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/prefs/EditTextPreference;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->viewEditText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 71
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->viewEditText:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->viewEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/layar/ui/prefs/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->viewEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->viewEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/layar/ui/prefs/EditTextPreference$1;

    invoke-direct {v1, p0}, Lcom/layar/ui/prefs/EditTextPreference$1;-><init>(Lcom/layar/ui/prefs/EditTextPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->viewEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/layar/ui/prefs/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 144
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/layar/ui/prefs/EditTextPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/layar/ui/prefs/EditTextPreference$SavedState;

    move-object v1, v0

    .line 179
    .local v1, myState:Lcom/layar/ui/prefs/EditTextPreference$SavedState;
    invoke-virtual {v1}, Lcom/layar/ui/prefs/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 180
    iget-object v2, v1, Lcom/layar/ui/prefs/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/layar/ui/prefs/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 160
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/layar/ui/prefs/EditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 167
    :goto_0
    return-object v2

    .line 165
    :cond_0
    new-instance v0, Lcom/layar/ui/prefs/EditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/layar/ui/prefs/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 166
    .local v0, myState:Lcom/layar/ui/prefs/EditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/layar/ui/prefs/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/ui/prefs/EditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v2, v0

    .line 167
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 150
    return-void

    .line 149
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/layar/ui/prefs/EditTextPreference;->setText(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 7
    .parameter "text"
    .parameter "isUser"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/layar/ui/prefs/EditTextPreference;->shouldDisableDependents()Z

    move-result v3

    .line 107
    .local v3, wasBlocking:Z
    iput-object p1, p0, Lcom/layar/ui/prefs/EditTextPreference;->mText:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/layar/ui/prefs/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "T: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/layar/ui/prefs/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ttt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v4, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 112
    iget-object v1, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    .line 113
    .local v1, newText:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    .line 114
    iget-object v4, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/layar/ui/prefs/EditTextPreference;->setText(Ljava/lang/String;Z)V

    .line 131
    .end local v1           #newText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-nez p2, :cond_2

    iget-object v4, p0, Lcom/layar/ui/prefs/EditTextPreference;->viewEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/layar/ui/prefs/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "T2: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    .line 121
    .local v2, temp:Ljava/lang/String;
    iget-object v4, p0, Lcom/layar/ui/prefs/EditTextPreference;->viewEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iput-object v2, p0, Lcom/layar/ui/prefs/EditTextPreference;->mTempText:Ljava/lang/String;

    .line 125
    .end local v2           #temp:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/layar/ui/prefs/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 127
    invoke-virtual {p0}, Lcom/layar/ui/prefs/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 128
    .local v0, isBlocking:Z
    if-eq v0, v3, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/EditTextPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .end local v0           #isBlocking:Z
    .restart local v2       #temp:Ljava/lang/String;
    :cond_3
    move-object v5, p1

    .line 121
    goto :goto_1
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/layar/ui/prefs/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
