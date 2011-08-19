.class public Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;
.super Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;
.source "UiAccountSelectContextMenu.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# instance fields
.field private m_oActivity:Landroid/app/Activity;

.field private m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a_oActivity"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oActivity:Landroid/app/Activity;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    .line 27
    return-void
.end method


# virtual methods
.method public createView()V
    .locals 8

    .prologue
    .line 30
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 31
    .local v3, oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_DialogContextMenu:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createDialog(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .line 32
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v5, 0x7f0a0253

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setTitle(I)V

    .line 33
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v4, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 35
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->getAllAccountCount()I

    move-result v0

    .line 37
    .local v0, nAccountCount:I
    new-array v4, v0, [Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    iput-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    .line 39
    const/4 v1, 0x0

    .local v1, nCount:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 49
    new-instance v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oActivity:Landroid/app/Activity;

    const v6, 0x7f030008

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 50
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v4, v5, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 51
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 53
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    const/16 v5, 0x168

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setMinimumWidth(I)I

    .line 54
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    const v5, 0x7f0202ba

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setDivider(I)V

    .line 55
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setNativeView(Landroid/view/View;)V

    .line 56
    return-void

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    .local v2, nIconID:I
    invoke-static {v1}, Lcom/infraware/filemanager/FmWebStorageAccount;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "google_account"

    if-ne v4, v5, :cond_2

    .line 42
    const v2, 0x7f02019d

    .line 46
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    new-instance v5, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-static {v1}, Lcom/infraware/filemanager/FmWebStorageAccount;->getID(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_2
    const-string v4, "boxnet_account"

    invoke-static {v1}, Lcom/infraware/filemanager/FmWebStorageAccount;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 44
    const v2, 0x7f020195

    goto :goto_1
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 6
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    const/4 v5, 0x0

    .line 63
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-eq p2, v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 68
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_SelectAccount:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, p1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V
    .locals 0
    .parameter "a_oOnCommandListener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    .line 75
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "a_bShow"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountSelectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->show(Z)V

    .line 60
    return-void
.end method
