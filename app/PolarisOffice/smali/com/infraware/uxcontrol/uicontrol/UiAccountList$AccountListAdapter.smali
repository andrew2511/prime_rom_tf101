.class Lcom/infraware/uxcontrol/uicontrol/UiAccountList$AccountListAdapter;
.super Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.source "UiAccountList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiAccountList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
        "<",
        "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiAccountList;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiAccountList;Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
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
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 738
    .local p4, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountList$AccountListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiAccountList;

    .line 739
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 740
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 744
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiAccountList$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    .line 746
    .local v1, oItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;
    if-nez p2, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiAccountList$AccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 749
    .local v0, oInflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountList$AccountListAdapter;->m_nItemViewResourceId:I

    invoke-virtual {v0, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 753
    .end local v0           #oInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f0c0035

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 754
    .local v4, oItemNameView:Landroid/widget/TextView;
    const v5, 0x7f0c003a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 755
    .local v2, oItemCommentView:Landroid/widget/TextView;
    const v5, 0x7f0c0034

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 756
    .local v3, oItemImageView:Landroid/widget/ImageView;
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 757
    iget-boolean v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 759
    if-eqz v4, :cond_1

    .line 760
    iget-object v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-boolean v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 764
    :cond_1
    if-eqz v2, :cond_2

    .line 765
    iget-object v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strComment:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 766
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    :goto_0
    iget-object v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strComment:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-boolean v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 772
    :cond_2
    if-eqz v3, :cond_3

    .line 773
    iget v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nImageResourceId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 774
    iget-boolean v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 777
    :cond_3
    return-object p2

    .line 768
    :cond_4
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
