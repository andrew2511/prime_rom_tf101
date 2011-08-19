.class public Lcom/google/android/music/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# static fields
.field public static final CONNECTED:I = 0x0

.field public static final DISCONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountPreference"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mChecked:Z

.field private mEnabled:Z

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/google/android/music/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 28
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountPreference;->setLayoutResource(I)V

    .line 29
    iget-object v0, p0, Lcom/google/android/music/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    iput-boolean v1, p0, Lcom/google/android/music/AccountPreference;->mChecked:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AccountPreference;->mEnabled:Z

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/android/music/AccountPreference;->setPersistent(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/music/AccountPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 43
    const v0, 0x7f0f0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/music/AccountPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 44
    iget-object v0, p0, Lcom/google/android/music/AccountPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/google/android/music/AccountPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 45
    iget-object v0, p0, Lcom/google/android/music/AccountPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/google/android/music/AccountPreference;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 46
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/music/AccountPreference;->mChecked:Z

    .line 50
    iget-object v0, p0, Lcom/google/android/music/AccountPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/music/AccountPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/google/android/music/AccountPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/music/AccountPreference;->mEnabled:Z

    .line 61
    iget-object v0, p0, Lcom/google/android/music/AccountPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/music/AccountPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 64
    :cond_0
    return-void
.end method
