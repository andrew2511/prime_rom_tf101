.class public Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;
.super Ljava/lang/Object;
.source "UiContextMenu.java"


# instance fields
.field protected m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

.field protected m_oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

.field protected m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public createView()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->isVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public setItemEnabled(IZ)V
    .locals 1
    .parameter "a_nIndex"
    .parameter "a_bEnable"

    .prologue
    .line 25
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;->m_oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;->m_oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    .line 29
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 1
    .parameter "a_bShow"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->show(Z)V

    .line 22
    return-void
.end method
