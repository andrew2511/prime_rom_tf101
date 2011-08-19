.class public Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;
.super Ljava/lang/Object;
.source "UiSearchOptionMenu.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;,
        Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;
    }
.end annotation


# instance fields
.field private m_oActivity:Lcom/infraware/common/UxDocViewerBase;

.field private m_oAdapter:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;

.field private m_oItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

.field private m_oParentView:Lcom/infraware/uxcontrol/uiunit/UiUnitView;


# direct methods
.method public constructor <init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiUnitView;)V
    .locals 0
    .parameter "a_oActivity"
    .parameter "a_oParentView"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    .line 34
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oParentView:Lcom/infraware/uxcontrol/uiunit/UiUnitView;

    .line 35
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->createView()V

    .line 36
    return-void
.end method

.method private createView()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oItemLists:Ljava/util/ArrayList;

    .line 40
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oItemLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;

    .line 41
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-direct {v1, v2, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;-><init>(Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getViewMode()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 45
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getViewMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oItemLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;

    .line 47
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-direct {v1, v2, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;-><init>(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    const v2, 0x7f030065

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    .line 57
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SubmenuSearchOption:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setStyle(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 58
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oParentView:Lcom/infraware/uxcontrol/uiunit/UiUnitView;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setParentView(Landroid/view/View;)V

    .line 60
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    .line 61
    const v2, 0x7f03003d

    .line 62
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oItemLists:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 60
    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oAdapter:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;

    .line 64
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oAdapter:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setCustomAdapter(Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    invoke-virtual {v0, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setChoiceMode(I)V

    .line 66
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    const/16 v1, 0xf4

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setWidth(I)V

    .line 67
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setHeight(I)V

    .line 68
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setGravity(I)V

    .line 69
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setVerticalOffset(I)V

    .line 71
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    invoke-virtual {v0, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 72
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oItemLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;

    .line 52
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-direct {v1, v2, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;-><init>(Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->isVisible()Z

    move-result v0

    return v0
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 0
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    .line 98
    return-void
.end method

.method public shouldMatchCase()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oAdapter:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;

    if-nez v0, :cond_0

    move v0, v1

    .line 87
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oAdapter:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;

    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;->m_bChecked:Z

    goto :goto_0
.end method

.method public shouldMatchWholeWordsOnly()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oAdapter:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oAdapter:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;

    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;->m_bChecked:Z

    goto :goto_0
.end method

.method public show(Z)V
    .locals 1
    .parameter "a_bShow"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;->m_oOptionMenu:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->show(Z)V

    .line 76
    return-void
.end method
