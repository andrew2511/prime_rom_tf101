.class public abstract Lcom/android/camera/ui/AbstractSettingPopup;
.super Landroid/widget/LinearLayout;
.source "AbstractSettingPopup.java"


# instance fields
.field protected mSettingList:Landroid/view/ViewGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 44
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .line 46
    return-void
.end method
