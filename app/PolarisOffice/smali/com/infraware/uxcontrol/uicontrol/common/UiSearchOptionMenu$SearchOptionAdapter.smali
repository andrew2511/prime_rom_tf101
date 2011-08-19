.class public Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;
.super Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.source "UiSearchOptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchOptionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
        "<",
        "Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
    .locals 0
    .parameter "a_oContext"
    .parameter "a_nItemViewResourceId"
    .parameter
    .parameter "a_oUnitView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;",
            ">;",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 119
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;

    .line 120
    .local v0, oItem:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;
    const v3, 0x7f0c0035

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, oItemNameView:Landroid/widget/TextView;
    const v3, 0x7f0c003b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 123
    .local v1, oItemCheckBox:Landroid/widget/CheckBox;
    iget-object v3, v0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;->m_szName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v3, 0x106000d

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 126
    const v3, 0x7f020012

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 127
    check-cast p3, Landroid/widget/ListView;

    .end local p3
    invoke-virtual {p3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;->m_bChecked:Z

    .line 128
    iget-boolean v3, v0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;->m_bChecked:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    return-object p2
.end method
