.class public Lcom/nuance/xt9/input/InputModePreference;
.super Landroid/preference/Preference;
.source "InputModePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabledCheckBox:Lcom/nuance/xt9/input/EnableButton;

.field public mInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

.field private mMoreSettings:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/InputModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 1
    .parameter "context"
    .parameter "inputMode"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputModePreference;->setLayoutResource(I)V

    .line 34
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputModePreference;->setWidgetLayoutResource(I)V

    .line 36
    iput-object p1, p0, Lcom/nuance/xt9/input/InputModePreference;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/nuance/xt9/input/InputModePreference;->mInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/InputModePreference;)Lcom/nuance/xt9/input/EnableButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/xt9/input/EnableButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/InputModePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputModePreference;->setChecked(Z)V

    return-void
.end method

.method private setChecked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/InputModePreference;->persistBoolean(Z)Z

    .line 94
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputModePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputModePreference;->notifyDependencyChange(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputModePreference;->notifyChanged()V

    .line 96
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputModePreference;->showOrHideMoreSettingIndicator()V

    .line 97
    return-void
.end method

.method private showOrHideMoreSettingIndicator()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/xt9/input/EnableButton;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/EnableButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mMoreSettings:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mMoreSettings:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 48
    const/high16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mMoreSettings:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/EnableButton;

    iput-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/xt9/input/EnableButton;

    .line 50
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/xt9/input/EnableButton;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/xt9/input/EnableButton;

    iget-object v1, p0, Lcom/nuance/xt9/input/InputModePreference;->mInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/EnableButton;->setChecked(Z)V

    .line 52
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputModePreference;->showOrHideMoreSettingIndicator()V

    .line 54
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/xt9/input/EnableButton;

    new-instance v1, Lcom/nuance/xt9/input/InputModePreference$1;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/InputModePreference$1;-><init>(Lcom/nuance/xt9/input/InputModePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 66
    iget-object v1, p0, Lcom/nuance/xt9/input/InputModePreference;->mEnabledCheckBox:Lcom/nuance/xt9/input/EnableButton;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/EnableButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/nuance/xt9/input/InputModePreference;->mContext:Landroid/content/Context;

    const-class v3, Lcom/nuance/xt9/input/InputSettings;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "language_id"

    iget-object v2, p0, Lcom/nuance/xt9/input/InputModePreference;->mInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v1, "input_mode"

    iget-object v2, p0, Lcom/nuance/xt9/input/InputModePreference;->mInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "locale"

    iget-object v2, p0, Lcom/nuance/xt9/input/InputModePreference;->mInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/nuance/xt9/input/InputModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
