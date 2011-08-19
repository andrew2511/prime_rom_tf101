.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "UiUnit_GridControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
        ">;"
    }
.end annotation


# instance fields
.field m_nItemViewResourceId:I

.field private m_nNormalBg:I

.field private m_nSelectedBg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter "a_oContext"
    .parameter "a_nItemViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 165
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nNormalBg:I

    .line 166
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nSelectedBg:I

    .line 170
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nItemViewResourceId:I

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;II)V
    .locals 1
    .parameter "a_oContext"
    .parameter "a_nItemViewResourceId"
    .parameter
    .parameter "a_nNormalBackgroundResourceId"
    .parameter "a_nSelectedBackroundResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 165
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nNormalBg:I

    .line 166
    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nSelectedBg:I

    .line 175
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nItemViewResourceId:I

    .line 176
    iput p4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nNormalBg:I

    .line 177
    iput p5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nSelectedBg:I

    .line 178
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    .line 184
    .local v2, oItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;
    if-nez p2, :cond_1

    .line 185
    const v0, 0x7f030053

    .line 187
    .local v0, nSpinnerViewLayoutId:I
    iget v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_nImageResourceId:I

    if-eqz v5, :cond_0

    .line 188
    const v0, 0x7f030052

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 193
    .local v1, oInflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    invoke-virtual {v1, v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 196
    .end local v0           #nSpinnerViewLayoutId:I
    .end local v1           #oInflater:Landroid/view/LayoutInflater;
    :cond_1
    const v5, 0x7f0c0035

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 197
    .local v4, oItemNameView:Landroid/widget/TextView;
    const v5, 0x7f0c0034

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 199
    .local v3, oItemImageView:Landroid/widget/ImageView;
    iget-object v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_strName:Ljava/lang/String;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 200
    iget-object v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_strName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_2
    iget v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_nImageResourceId:I

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 203
    iget v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_nImageResourceId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    :cond_3
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 214
    .local v0, oInflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nItemViewResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 216
    .end local v0           #oInflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    .line 218
    .local v1, oItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;
    iget v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nNormalBg:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nSelectedBg:I

    if-eqz v5, :cond_2

    .line 220
    :cond_1
    iget-boolean v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_bIsSelected:Z

    if-eqz v5, :cond_6

    .line 222
    iget v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nSelectedBg:I

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 230
    :cond_2
    :goto_0
    const v5, 0x7f0c0035

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 231
    .local v4, oItemNameView:Landroid/widget/TextView;
    const v5, 0x7f0c003a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 232
    .local v2, oItemCommentView:Landroid/widget/TextView;
    const v5, 0x7f0c0034

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 234
    .local v3, oItemImageView:Landroid/widget/ImageView;
    iget-object v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_strName:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 235
    iget-object v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_strName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_3
    iget-object v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_strComment:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 238
    iget-object v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_strComment:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_4
    iget v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_nImageResourceId:I

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 241
    iget v5, v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_nImageResourceId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :cond_5
    return-object p2

    .line 226
    .end local v2           #oItemCommentView:Landroid/widget/TextView;
    .end local v3           #oItemImageView:Landroid/widget/ImageView;
    .end local v4           #oItemNameView:Landroid/widget/TextView;
    :cond_6
    iget v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->m_nNormalBg:I

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
