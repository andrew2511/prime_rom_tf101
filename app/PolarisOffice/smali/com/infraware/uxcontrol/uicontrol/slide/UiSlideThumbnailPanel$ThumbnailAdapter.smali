.class Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;
.super Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.source "UiSlideThumbnailPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;
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
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;)V
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
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;)V

    .line 513
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 517
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 519
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    .line 521
    .local v2, oItem:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;
    const v4, 0x7f0c00bd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 522
    .local v1, oImageButton:Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 524
    const v4, 0x7f0c00bb

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 525
    .local v0, oButton:Landroid/widget/RadioButton;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v2, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_oThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 528
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;->m_oDndOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;->getNativeView()Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->isItemChecked(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 530
    new-instance v4, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter$1;

    invoke-direct {v4, p0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter$1;-><init>(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 544
    const v4, 0x7f0c00bc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 545
    .local v3, oTextView:Landroid/widget/TextView;
    iget v4, v2, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_nIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-boolean v4, v2, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_bMoved:Z

    if-eqz v4, :cond_0

    .line 549
    sget-object v4, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oSlideMoveAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 551
    iput-boolean v6, v2, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_bMoved:Z

    .line 553
    :cond_0
    return-object p2
.end method
