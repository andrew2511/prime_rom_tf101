.class public abstract Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;
.super Ljava/lang/Object;
.source "UiSubToolbar.java"


# instance fields
.field protected m_nToolbarStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

.field protected m_oActivity:Lcom/infraware/common/UxDocViewerBase;

.field protected m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field protected m_oUnitSubMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;


# direct methods
.method public constructor <init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_nToolbarStyle"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    .line 21
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 22
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_nToolbarStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract createView()V
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oUnitSubMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setGridHeight(I)V
    .locals 8
    .parameter "a_nItemCount"

    .prologue
    .line 54
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v4}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 55
    .local v3, oResources:Landroid/content/res/Resources;
    const v4, 0x7f09006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 56
    .local v0, fItemHeight:F
    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 57
    const v5, 0x7f090074

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 56
    add-float v1, v4, v5

    .line 59
    .local v1, fMargin:F
    const v4, 0x7f09007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 60
    .local v2, fVerticalSpacing:F
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oUnitSubMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    float-to-int v5, v1

    float-to-int v6, v0

    mul-int/2addr v6, p1

    add-int/2addr v5, v6

    float-to-int v6, v2

    const/4 v7, 0x1

    sub-int v7, p1, v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setHeight(I)V

    .line 61
    return-void
.end method

.method public setGridWidth(I)V
    .locals 8
    .parameter "a_nItemPerLine"

    .prologue
    .line 36
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v4}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 37
    .local v3, oResources:Landroid/content/res/Resources;
    const v4, 0x7f09006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 38
    .local v1, fItemWidth:F
    const v4, 0x7f090073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 39
    const v5, 0x7f090075

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 38
    add-float v2, v4, v5

    .line 40
    .local v2, fWidth:F
    const v4, 0x7f09007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 41
    .local v0, fHorizontalSpacing:F
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oUnitSubMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    float-to-int v5, v2

    float-to-int v6, v1

    mul-int/2addr v6, p1

    add-int/2addr v5, v6

    float-to-int v6, v0

    const/4 v7, 0x1

    sub-int v7, p1, v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setWidth(I)V

    .line 42
    return-void
.end method

.method public setHeight(I)V
    .locals 6
    .parameter "a_nItemCount"

    .prologue
    .line 64
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v3}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    .local v2, oResources:Landroid/content/res/Resources;
    const v3, 0x7f09006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x3f80

    add-float v0, v3, v4

    .line 66
    .local v0, fItemHeight:F
    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 68
    .local v1, fMargin:F
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oUnitSubMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    float-to-int v4, v1

    float-to-int v5, v0

    mul-int/2addr v5, p1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setHeight(I)V

    .line 69
    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "a_nLeftMargine"
    .parameter "a_nTopMargine"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oUnitSubMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setPosition(II)V

    .line 73
    return-void
.end method

.method public setWidth(I)V
    .locals 4
    .parameter "a_nTextWidth"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    .local v1, oResources:Landroid/content/res/Resources;
    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 47
    const v3, 0x7f09006a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 46
    add-float/2addr v2, v3

    .line 48
    const v3, 0x7f09006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 46
    add-float v0, v2, v3

    .line 50
    .local v0, fWidth:F
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oUnitSubMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    float-to-int v3, v0

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setWidth(I)V

    .line 51
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "a_bShow"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSubToolbar;->m_oUnitSubMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->show(Z)V

    .line 29
    return-void
.end method
