.class public Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;
.super Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;
.source "BrightnessAndColorsView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public hide()Z
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide(I)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsBase;->onFinishInflate()V

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->syncSelectedOptions()V

    .line 42
    return-void
.end method

.method public showBrightnessTextColorOptions()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->hide()Z

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BrightnessAndColorsView;->show(I)Z

    move-result v0

    goto :goto_0
.end method
