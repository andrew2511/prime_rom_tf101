.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;
.source "UiUnit_ToggleButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;
    }
.end annotation


# instance fields
.field private m_bChecking:Z

.field private m_bMultipleSelect:Z

.field private m_oCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 0
    .parameter "a_oActivity"
    .parameter "a_nLayoutResourceId"
    .parameter "a_bMultipleSelect"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;-><init>(Landroid/app/Activity;I)V

    .line 21
    iput-boolean p3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_bMultipleSelect:Z

    .line 22
    return-void
.end method


# virtual methods
.method public addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z
    .locals 7
    .parameter "a_nHolderResourceId"
    .parameter "a_oUnitView"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 42
    instance-of v4, p2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    if-nez v4, :cond_0

    .line 43
    const/4 v4, 0x0

    .line 65
    :goto_0
    return v4

    .line 45
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v1, v0

    .line 47
    .local v1, oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    iget-boolean v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_bMultipleSelect:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 48
    iput-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    .line 49
    invoke-virtual {v1, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->setChecked(Z)V

    .line 52
    :cond_1
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oView:Landroid/view/View;

    check-cast v3, Landroid/widget/LinearLayout;

    .line 56
    .local v3, oPlaceholder:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_2

    .line 57
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #oPlaceholder:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 60
    .restart local v3       #oPlaceholder:Landroid/widget/LinearLayout;
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v2, oLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->getNativeView()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    move v4, v6

    .line 65
    goto :goto_0
.end method

.method public addComponent(Lcom/infraware/uxcontrol/uiunit/UiUnitView;)Z
    .locals 1
    .parameter "a_oUnitView"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;->addComponent(Lcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    move-result v0

    return v0
.end method

.method protected createNativeView(I)V
    .locals 3
    .parameter "a_nLayoutResourceId"

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    const p1, 0x7f030056

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 32
    .local v0, oButtonGroup:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setNativeView(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method public getCurrentSelection()Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-boolean v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_bMultipleSelect:Z

    if-eqz v3, :cond_0

    move-object v3, v5

    .line 91
    :goto_0
    return-object v3

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v3, v5

    .line 91
    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/uxcontrol/uiunit/UiUnitView;

    .line 85
    .local v2, oView:Lcom/infraware/uxcontrol/uiunit/UiUnitView;
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    move-object v0, v2

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v1, v0

    .line 87
    .local v1, oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 88
    goto :goto_0
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 4
    .parameter "a_oView"
    .parameter "a_eUnitCommand"
    .parameter "a_aoArgs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    iget-boolean v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_bChecking:Z

    if-eqz v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-boolean v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_bMultipleSelect:Z

    if-nez v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->getCurrentSelection()Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-result-object v0

    .line 102
    .local v0, oNewlyCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    iput-boolean v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_bChecking:Z

    .line 103
    if-nez v0, :cond_2

    .line 105
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    invoke-virtual {v1, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->setChecked(Z)V

    .line 111
    :goto_1
    iput-boolean v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_bChecking:Z

    .line 114
    .end local v0           #oNewlyCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    invoke-super {p0, p1, p2, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    .restart local v0       #oNewlyCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :cond_2
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->setChecked(Z)V

    .line 109
    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oCheckedButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    goto :goto_1
.end method

.method public setSelected(I)V
    .locals 2
    .parameter "a_nIndex"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    .line 70
    .local v0, oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->setChecked(Z)V

    .line 71
    return-void
.end method

.method public setUnselected(I)V
    .locals 2
    .parameter "a_nIndex"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->m_oChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    .line 75
    .local v0, oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->setChecked(Z)V

    .line 76
    return-void
.end method
