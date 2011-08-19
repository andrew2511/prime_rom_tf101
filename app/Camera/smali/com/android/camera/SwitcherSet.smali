.class public Lcom/android/camera/SwitcherSet;
.super Landroid/widget/RadioGroup;
.source "SwitcherSet.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/android/camera/Switcher$OnSwitchListener;


# instance fields
.field private final DISABLED_COLOR:I

.field private mListener:Lcom/android/camera/Switcher$OnSwitchListener;

.field private mOffView:Landroid/widget/CompoundButton;

.field private mOnView:Landroid/widget/CompoundButton;

.field private mSwitcher:Lcom/android/camera/Switcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/SwitcherSet;->DISABLED_COLOR:I

    .line 41
    return-void
.end method

.method private setEnabled(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "enabled"

    .prologue
    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 102
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget v1, p0, Lcom/android/camera/SwitcherSet;->DISABLED_COLOR:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private tryToSetSwitch(Z)V
    .locals 2
    .parameter "onOff"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mSwitcher:Lcom/android/camera/Switcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/Switcher;->setSwitch(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    iget-object v1, p0, Lcom/android/camera/SwitcherSet;->mSwitcher:Lcom/android/camera/Switcher;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/Switcher$OnSwitchListener;->onSwitchChanged(Lcom/android/camera/Switcher;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/SwitcherSet;->setSwitch(Z)V

    .line 84
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/camera/SwitcherSet;->mOnView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 46
    .local v0, onOff:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/SwitcherSet;->tryToSetSwitch(Z)V

    .line 47
    return-void

    .line 45
    .end local v0           #onOff:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 51
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/android/camera/SwitcherSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Switcher;

    iput-object v0, p0, Lcom/android/camera/SwitcherSet;->mSwitcher:Lcom/android/camera/Switcher;

    .line 52
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mSwitcher:Lcom/android/camera/Switcher;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot find switcher in layout file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mSwitcher:Lcom/android/camera/Switcher;

    invoke-virtual {v0, p0}, Lcom/android/camera/Switcher;->setOnSwitchListener(Lcom/android/camera/Switcher$OnSwitchListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mSwitcher:Lcom/android/camera/Switcher;

    invoke-virtual {v0, p0}, Lcom/android/camera/Switcher;->addTouchView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/android/camera/SwitcherSet;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 58
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/android/camera/SwitcherSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/camera/SwitcherSet;->mOnView:Landroid/widget/CompoundButton;

    .line 59
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/android/camera/SwitcherSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/camera/SwitcherSet;->mOffView:Landroid/widget/CompoundButton;

    .line 60
    return-void
.end method

.method public onSwitchChanged(Lcom/android/camera/Switcher;Z)Z
    .locals 1
    .parameter "source"
    .parameter "onOff"

    .prologue
    .line 88
    invoke-virtual {p0, p2}, Lcom/android/camera/SwitcherSet;->setSwitch(Z)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mSwitcher:Lcom/android/camera/Switcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/Switcher;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mOnView:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mOnView:Landroid/widget/CompoundButton;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SwitcherSet;->setEnabled(Landroid/widget/CompoundButton;Z)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mOffView:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SwitcherSet;->mOffView:Landroid/widget/CompoundButton;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SwitcherSet;->setEnabled(Landroid/widget/CompoundButton;Z)V

    .line 98
    :cond_1
    return-void
.end method

.method public setOnSwitchListener(Lcom/android/camera/Switcher$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/SwitcherSet;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    .line 74
    return-void
.end method

.method public setSwitch(Z)V
    .locals 2
    .parameter "onOff"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/camera/SwitcherSet;->mOnView:Landroid/widget/CompoundButton;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/SwitcherSet;->mOffView:Landroid/widget/CompoundButton;

    if-nez v1, :cond_1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/SwitcherSet;->tryToSetSwitch(Z)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/camera/SwitcherSet;->mOnView:Landroid/widget/CompoundButton;

    move-object v0, v1

    .line 68
    .local v0, button:Landroid/widget/CompoundButton;
    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 67
    .end local v0           #button:Landroid/widget/CompoundButton;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/SwitcherSet;->mOffView:Landroid/widget/CompoundButton;

    move-object v0, v1

    goto :goto_1
.end method
