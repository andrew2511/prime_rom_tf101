.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;
.source "UiUnit_BorderControl.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# instance fields
.field oBottomLineLayout:Landroid/widget/LinearLayout;

.field oCenterLineLayout:Landroid/widget/LinearLayout;

.field oLeftLineLayout:Landroid/widget/LinearLayout;

.field oMiddleLineLayout:Landroid/widget/LinearLayout;

.field oRightLineLayout:Landroid/widget/LinearLayout;

.field oTopLineLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "a_oActivity"
    .parameter "a_nResourceId"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;-><init>(Landroid/app/Activity;I)V

    .line 26
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oLeftLineLayout:Landroid/widget/LinearLayout;

    .line 27
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oCenterLineLayout:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oRightLineLayout:Landroid/widget/LinearLayout;

    .line 30
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oTopLineLayout:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oMiddleLineLayout:Landroid/widget/LinearLayout;

    .line 32
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oBottomLineLayout:Landroid/widget/LinearLayout;

    .line 33
    return-void
.end method


# virtual methods
.method public IsBottomLineShown()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oBottomLineLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oBottomLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsCenterLineShown()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oCenterLineLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oCenterLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsLeftLineShown()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oLeftLineLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oLeftLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsMiddleLineShown()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oMiddleLineLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oMiddleLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsRightLineShown()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oRightLineLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oRightLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsTopLineShown()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oTopLineLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oTopLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createNativeView(I)V
    .locals 3
    .parameter "a_nResourceId"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->m_oActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 157
    .local v0, oToolbarLayout:Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->setNativeView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public showBottomLine(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oBottomLineLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oBottomLineLayout:Landroid/widget/LinearLayout;

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oBottomLineLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oBottomLineLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCenterLine(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oCenterLineLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oCenterLineLayout:Landroid/widget/LinearLayout;

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oCenterLineLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oCenterLineLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLeftLine(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oLeftLineLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oLeftLineLayout:Landroid/widget/LinearLayout;

    .line 39
    :cond_0
    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oLeftLineLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oLeftLineLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMiddleLine(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oMiddleLineLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oMiddleLineLayout:Landroid/widget/LinearLayout;

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oMiddleLineLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oMiddleLineLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRightLine(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oRightLineLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oRightLineLayout:Landroid/widget/LinearLayout;

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oRightLineLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oRightLineLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTopLine(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oTopLineLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oTopLineLayout:Landroid/widget/LinearLayout;

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oTopLineLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_BorderControl;->oTopLineLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
