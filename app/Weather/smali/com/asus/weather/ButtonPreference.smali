.class public Lcom/asus/weather/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/weather/ButtonPreference;->mEnabled:Z

    .line 16
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/asus/weather/ButtonPreference;->setWidgetLayoutResource(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public isPersistent()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 29
    const/high16 v1, 0x7f08

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    .local v0, btnView:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 32
    if-eqz v0, :cond_0

    .line 34
    iget-boolean v1, p0, Lcom/asus/weather/ButtonPreference;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 36
    :cond_0
    return-void
.end method

.method public setButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/asus/weather/ButtonPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 42
    iput-boolean p1, p0, Lcom/asus/weather/ButtonPreference;->mEnabled:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/asus/weather/ButtonPreference;->persistBoolean(Z)Z

    .line 44
    invoke-virtual {p0}, Lcom/asus/weather/ButtonPreference;->notifyChanged()V

    .line 46
    :cond_0
    return-void
.end method
