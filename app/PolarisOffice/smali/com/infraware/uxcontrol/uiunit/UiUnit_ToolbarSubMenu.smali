.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;
.source "UiUnit_ToolbarSubMenu.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# instance fields
.field private m_nGravity:I

.field m_nPositionX:I

.field m_nPositionY:I

.field private m_nSubMenuListWidth:I

.field private m_nVerticalOffset:I

.field private m_oParentView:Landroid/view/View;

.field private m_oPopupWindow:Landroid/widget/PopupWindow;

.field private m_oToolbarLayout:Landroid/widget/LinearLayout;

.field private m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

.field private m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_nResourceId"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;-><init>(Landroid/app/Activity;I)V

    .line 30
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nSubMenuListWidth:I

    .line 36
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionX:I

    .line 37
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionY:I

    .line 38
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nGravity:I

    .line 39
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nVerticalOffset:I

    .line 45
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SubmenuToolbar:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_eUnitStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 46
    return-void
.end method


# virtual methods
.method public addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z
    .locals 4
    .parameter "a_nResourceId"
    .parameter "a_oUnitView"

    .prologue
    const/4 v3, -0x2

    .line 144
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 160
    :goto_0
    return v2

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 149
    .local v1, oPlaceholder:Landroid/widget/LinearLayout;
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nSubMenuListWidth:I

    if-gtz v2, :cond_2

    .line 150
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 154
    .local v0, oLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    invoke-virtual {p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->getNativeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p2, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 160
    const/4 v2, 0x1

    goto :goto_0

    .line 152
    .end local v0           #oLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nSubMenuListWidth:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v0       #oLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_1
.end method

.method public addComponent(Lcom/infraware/uxcontrol/uiunit/UiUnitView;)Z
    .locals 2
    .parameter "a_oView"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method protected createNativeView(I)V
    .locals 4
    .parameter "a_nResourceId"

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x1

    .line 50
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oToolbarLayout:Landroid/widget/LinearLayout;

    .line 52
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oToolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setNativeView(Landroid/view/View;)V

    .line 54
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oToolbarLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    .line 55
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 56
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 59
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu$1;

    invoke-direct {v1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu$1;-><init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 67
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public notifyListControlChanged()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 283
    :cond_0
    return-void
.end method

.method public resetGridItemSelected()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->resetGridItemSelected()V

    .line 249
    :cond_0
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .parameter "a_nBackgroundResourceId"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oToolbarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oToolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "a_nChoiceMode"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public setCustomAdapter(Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, a_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;,"Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter<*>;"
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 263
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 264
    const v0, 0x7f0c011f

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {p0, v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 266
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {p1, v0}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->setOwner(Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 267
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setCustomAdapter(Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)V

    .line 268
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .parameter "a_nGravity"

    .prologue
    .line 178
    iput p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nGravity:I

    .line 179
    return-void
.end method

.method public setGridItemSelected(I)V
    .locals 1
    .parameter "a_nIndex"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->setGridItemSelected(I)V

    .line 243
    :cond_0
    return-void
.end method

.method public setGridMenu(Ljava/util/List;II)V
    .locals 11
    .parameter "a_oItemList"
    .parameter "a_nItemLayoutId"
    .parameter "a_nNumColumns"

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 188
    const p2, 0x7f03006c

    .line 190
    :cond_0
    iget-object v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 192
    .local v7, oResources:Landroid/content/res/Resources;
    const v8, 0x7f090076

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    .line 193
    .local v3, nPaddingLeft:I
    const v8, 0x7f090077

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 194
    .local v5, nPaddingTop:I
    const v8, 0x7f090078

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 195
    .local v4, nPaddingRight:I
    const v8, 0x7f090079

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 197
    .local v2, nPaddingBottom:I
    const v8, 0x7f09006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    .line 199
    .local v1, nItemWidth:I
    const v8, 0x7f09007a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 200
    .local v0, nHorizontalSpacing:I
    const v8, 0x7f09007b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 202
    .local v6, nVerticalSpacing:I
    new-instance v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v8, v9, p2, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    .line 203
    iget-object v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    sget-object v9, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v10, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v8, v9, v10}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 204
    iget-object v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    invoke-virtual {v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 205
    iget-object v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    invoke-virtual {v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 206
    iget-object v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    invoke-virtual {v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 207
    iget-object v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    invoke-virtual {v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 208
    iget-object v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    invoke-virtual {v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v8, v3, v5, v4, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 209
    const v8, 0x7f0c011f

    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    invoke-virtual {p0, v8, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 210
    return-void
.end method

.method public setGridMenu(Ljava/util/List;IIII)V
    .locals 17
    .parameter "a_oItemList"
    .parameter "a_nItemLayoutId"
    .parameter "a_nNumColumns"
    .parameter "a_nNormalBackgroundResourceId"
    .parameter "a_nSelectedBackroundResourceId"

    .prologue
    .line 214
    if-nez p2, :cond_0

    .line 215
    const p2, 0x7f03006c

    .line 217
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 219
    .local v16, oResources:Landroid/content/res/Resources;
    const v3, 0x7f090076

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v12, v3

    .line 220
    .local v12, nPaddingLeft:I
    const v3, 0x7f090077

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v14, v3

    .line 221
    .local v14, nPaddingTop:I
    const v3, 0x7f090078

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v13, v3

    .line 222
    .local v13, nPaddingRight:I
    const v3, 0x7f090079

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v11, v3

    .line 224
    .local v11, nPaddingBottom:I
    const v3, 0x7f09006e

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v10, v3

    .line 226
    .local v10, nItemWidth:I
    const v3, 0x7f09007a

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v9, v3

    .line 227
    .local v9, nHorizontalSpacing:I
    const v3, 0x7f09007b

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v15, v3

    .line 229
    .local v15, nVerticalSpacing:I
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    move-object v4, v0

    move/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;-><init>(Landroid/app/Activity;ILjava/util/List;II)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    move-object v3, v0

    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v3, v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v12, v14, v13, v11}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 236
    const v3, 0x7f0c011f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitGridControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;

    move-object v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 237
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "a_nHeight"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 169
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0
    .parameter "a_oParentView"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oParentView:Landroid/view/View;

    .line 72
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .parameter "a_nX"
    .parameter "a_nY"

    .prologue
    .line 173
    iput p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionX:I

    .line 174
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionY:I

    .line 175
    return-void
.end method

.method public setStyle(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V
    .locals 1
    .parameter "a_eStyle"

    .prologue
    .line 83
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SubmenuToolbar:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SubmenuSearchOption:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    if-eq p1, v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_eUnitStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    goto :goto_0
.end method

.method public setSubMenu(Ljava/util/List;I)V
    .locals 3
    .parameter "a_oItemList"
    .parameter "a_nItemLayoutId"

    .prologue
    .line 252
    if-nez p2, :cond_0

    .line 253
    const p2, 0x7f03006c

    .line 256
    :cond_0
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 257
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 258
    const v0, 0x7f0c011f

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oUnitListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {p0, v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 259
    return-void
.end method

.method public setSubmenuListWidth(I)V
    .locals 0
    .parameter "a_nSubMenuListWidth"

    .prologue
    .line 139
    iput p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nSubMenuListWidth:I

    .line 140
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0
    .parameter "a_nOffset"

    .prologue
    .line 182
    iput p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nVerticalOffset:I

    .line 183
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "a_nWidth"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 165
    return-void
.end method

.method public show(Z)V
    .locals 10
    .parameter "a_bShow"

    .prologue
    .line 91
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_eUnitStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SubmenuToolbar:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    if-ne v4, v5, :cond_0

    .line 92
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 95
    .local v1, nDisplayWidth:I
    iget v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionX:I

    iget-object v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    add-int v2, v4, v5

    .line 97
    .local v2, nSubmenuRight:I
    if-le v2, v1, :cond_2

    .line 99
    const v4, 0x7f020302

    invoke-virtual {p0, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setBackground(I)V

    .line 101
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 102
    .local v3, oResources:Landroid/content/res/Resources;
    iget v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionX:I

    iget-object v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0x7f09007d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionX:I

    .line 114
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #nDisplayWidth:I
    .end local v2           #nSubmenuRight:I
    .end local v3           #oResources:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 116
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oParentView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 117
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oParentView:Landroid/view/View;

    iget v6, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nGravity:I

    iget v7, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionX:I

    iget v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nPositionY:I

    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_nVerticalOffset:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 123
    :cond_1
    :goto_1
    return-void

    .line 106
    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #nDisplayWidth:I
    .restart local v2       #nSubmenuRight:I
    :cond_2
    const v4, 0x7f020301

    invoke-virtual {p0, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->setBackground(I)V

    goto :goto_0

    .line 121
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #nDisplayWidth:I
    .end local v2           #nSubmenuRight:I
    :cond_3
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToolbarSubMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method
