.class public Lcom/android/camera/ui/IndicatorButton;
.super Landroid/widget/ImageView;
.source "IndicatorButton.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "IndicatorButton"

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->TAG:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorButton;->setClickable(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 36
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 72
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 39
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 40
    .local v0, iconIds:[I
    if-eqz v0, :cond_2

    .line 43
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, index:I
    :cond_0
    aget v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorButton;->setImageResource(I)V

    .line 59
    .end local v1           #index:I
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 47
    .restart local v1       #index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 49
    const-string v2, "IndicatorButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to find override value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_0

    .line 57
    .end local v1           #index:I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorButton;->setImageResource(I)V

    goto :goto_0
.end method
