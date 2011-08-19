.class Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;
.super Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.source "UiViewerThumbnailPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
        "<",
        "Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
    .locals 0
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
            "Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;",
            ">;",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 312
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 313
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 317
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 319
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    .line 321
    .local v1, oItem:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;
    const v3, 0x7f0c00bb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 322
    .local v0, oButton:Landroid/widget/RadioButton;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_oThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 325
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;->m_oOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 327
    new-instance v3, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter$1;

    invoke-direct {v3, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter$1;-><init>(Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 341
    const v3, 0x7f0c00bc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 342
    .local v2, oTextView:Landroid/widget/TextView;
    iget v3, v1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_nIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-object p2
.end method
