.class public Lcom/asus/weather/RadioPreference;
.super Landroid/preference/Preference;
.source "RadioPreference.java"


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/asus/weather/RadioPreference;->setWidgetLayoutResource(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    return v0
.end method

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

    .line 27
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 28
    const v1, 0x7f080007

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, radioView:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 32
    if-eqz v0, :cond_0

    .line 34
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #radioView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 36
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 42
    invoke-virtual {p0}, Lcom/asus/weather/RadioPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 44
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/weather/RadioPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :goto_1
    return-void

    .line 42
    .end local v0           #newValue:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 48
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/asus/weather/RadioPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    .line 71
    return-void

    .line 69
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 55
    iput-boolean p1, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/asus/weather/RadioPreference;->persistBoolean(Z)Z

    .line 57
    invoke-virtual {p0}, Lcom/asus/weather/RadioPreference;->notifyChanged()V

    .line 59
    :cond_0
    return-void
.end method
