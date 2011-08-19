.class public Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter;
.super Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.source "UiBookmarkPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
        "<",
        "Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarItem;",
        ">;"
    }
.end annotation


# instance fields
.field m_nItemViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
    .locals 0
    .parameter "a_oContext"
    .parameter "a_nItemViewResourceId"
    .parameter
    .parameter "a_oListControl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarItem;",
            ">;",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarItem;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 346
    iput p2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter;->m_nItemViewResourceId:I

    .line 347
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter;)Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;
    .locals 1
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter;->m_oOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 351
    if-nez p2, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 354
    .local v2, oInflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter;->m_nItemViewResourceId:I

    invoke-virtual {v2, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 357
    .end local v2           #oInflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarItem;

    .line 358
    .local v3, oItem:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarItem;
    const v5, 0x7f0c0035

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 360
    .local v4, oItemNameView:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 361
    iget-object v5, v3, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_1
    const v5, 0x7f0c00b8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 366
    .local v1, oImageButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_2

    .line 368
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 371
    :cond_2
    move v0, p1

    .line 373
    .local v0, index:I
    new-instance v5, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter$1;-><init>(Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$BookmarkAdapter;I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    return-object p2
.end method
