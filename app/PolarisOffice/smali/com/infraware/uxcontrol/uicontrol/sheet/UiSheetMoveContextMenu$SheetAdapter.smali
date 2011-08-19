.class Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu$SheetAdapter;
.super Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.source "UiSheetMoveContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SheetAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
        "<",
        "Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu;Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
    .locals 0
    .parameter
    .parameter "a_oContext"
    .parameter "a_nItemViewResourceId"
    .parameter
    .parameter "a_oOwner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;",
            ">;",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p4, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;>;"
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu$SheetAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu;

    .line 101
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 102
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu$SheetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;

    .line 110
    .local v0, oItem:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;
    const v3, 0x7f0c0035

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, oNameView:Landroid/widget/TextView;
    iget-object v3, v0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;->m_aszSheetName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v3, 0x7f0c003b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 115
    .local v2, oRadioButton:Landroid/widget/RadioButton;
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu$SheetAdapter;->m_oOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMoveContextMenu$SheetAdapter;->m_oOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    :cond_0
    return-object p2
.end method
