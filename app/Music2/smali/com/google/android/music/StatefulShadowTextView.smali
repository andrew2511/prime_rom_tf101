.class public Lcom/google/android/music/StatefulShadowTextView;
.super Landroid/widget/TextView;
.source "StatefulShadowTextView.java"


# static fields
.field private static final SHADOW_RADIUS:F = 2.0f

.field private static mPrimaryOffline:Landroid/content/res/ColorStateList;

.field private static mPrimaryOnline:Landroid/content/res/ColorStateList;

.field private static mSecondaryOffline:Landroid/content/res/ColorStateList;

.field private static mSecondaryOnline:Landroid/content/res/ColorStateList;

.field private static mShadowOffline:I

.field private static mShadowOnline:I


# instance fields
.field private mOnline:Z

.field private mShowShadowWhenDeselected:Z

.field private mShowShadowWhenSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenSelected:Z

    .line 31
    iput-boolean v2, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenDeselected:Z

    .line 32
    iput-boolean v2, p0, Lcom/google/android/music/StatefulShadowTextView;->mOnline:Z

    .line 36
    invoke-direct {p0}, Lcom/google/android/music/StatefulShadowTextView;->updateShadowState()V

    .line 38
    sget-object v1, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOnline:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOnline:Landroid/content/res/ColorStateList;

    .line 41
    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOffline:Landroid/content/res/ColorStateList;

    .line 42
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/StatefulShadowTextView;->mSecondaryOnline:Landroid/content/res/ColorStateList;

    .line 43
    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/StatefulShadowTextView;->mSecondaryOffline:Landroid/content/res/ColorStateList;

    .line 44
    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    sput v1, Lcom/google/android/music/StatefulShadowTextView;->mShadowOnline:I

    .line 45
    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    sput v1, Lcom/google/android/music/StatefulShadowTextView;->mShadowOffline:I

    .line 47
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private updateShadowState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/music/StatefulShadowTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/StatefulShadowTextView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/StatefulShadowTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenSelected:Z

    move v0, v1

    .line 78
    .local v0, showShadow:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 79
    const/high16 v1, 0x4000

    iget-boolean v2, p0, Lcom/google/android/music/StatefulShadowTextView;->mOnline:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/google/android/music/StatefulShadowTextView;->mShadowOnline:I

    :goto_1
    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/google/android/music/StatefulShadowTextView;->setShadowLayer(FFFI)V

    .line 83
    :goto_2
    return-void

    .line 76
    .end local v0           #showShadow:Z
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenDeselected:Z

    move v0, v1

    goto :goto_0

    .line 79
    .restart local v0       #showShadow:Z
    :cond_2
    sget v2, Lcom/google/android/music/StatefulShadowTextView;->mShadowOffline:I

    goto :goto_1

    .line 81
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v3, v3, v1}, Lcom/google/android/music/StatefulShadowTextView;->setShadowLayer(FFFI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 72
    invoke-direct {p0}, Lcom/google/android/music/StatefulShadowTextView;->updateShadowState()V

    .line 73
    return-void
.end method

.method public setPrimaryAndOnline(ZZ)V
    .locals 3
    .parameter "primary"
    .parameter "online"

    .prologue
    const/4 v2, 0x0

    .line 60
    if-eqz p1, :cond_1

    .line 61
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOnline:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/StatefulShadowTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    :goto_1
    const/high16 v0, 0x4000

    if-eqz p2, :cond_3

    sget v1, Lcom/google/android/music/StatefulShadowTextView;->mShadowOnline:I

    :goto_2
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/google/android/music/StatefulShadowTextView;->setShadowLayer(FFFI)V

    .line 66
    iput-boolean p2, p0, Lcom/google/android/music/StatefulShadowTextView;->mOnline:Z

    .line 67
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/google/android/music/StatefulShadowTextView;->mPrimaryOffline:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 63
    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/google/android/music/StatefulShadowTextView;->mSecondaryOnline:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/music/StatefulShadowTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/music/StatefulShadowTextView;->mSecondaryOffline:Landroid/content/res/ColorStateList;

    goto :goto_3

    .line 65
    :cond_3
    sget v1, Lcom/google/android/music/StatefulShadowTextView;->mShadowOffline:I

    goto :goto_2
.end method

.method public setShowShadowWhenDeselected(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenDeselected:Z

    .line 56
    invoke-direct {p0}, Lcom/google/android/music/StatefulShadowTextView;->updateShadowState()V

    .line 57
    return-void
.end method

.method public setShowShadowWhenSelected(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/music/StatefulShadowTextView;->mShowShadowWhenSelected:Z

    .line 51
    invoke-direct {p0}, Lcom/google/android/music/StatefulShadowTextView;->updateShadowState()V

    .line 52
    return-void
.end method
