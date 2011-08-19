.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "UiUnit_ListControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
        ">;"
    }
.end annotation


# instance fields
.field m_nItemViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
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
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 213
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;->m_nItemViewResourceId:I

    .line 214
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    .line 220
    .local v2, oItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;
    if-nez p2, :cond_1

    .line 221
    const v0, 0x7f030053

    .line 223
    .local v0, nSpinnerViewLayoutId:I
    iget v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nImageResourceId:I

    if-eqz v5, :cond_0

    .line 224
    const v0, 0x7f030052

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 229
    .local v1, oInflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    invoke-virtual {v1, v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 233
    .end local v0           #nSpinnerViewLayoutId:I
    .end local v1           #oInflater:Landroid/view/LayoutInflater;
    :cond_1
    const v5, 0x7f0c0035

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 234
    .local v4, oItemNameView:Landroid/widget/TextView;
    const v5, 0x7f0c0034

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 236
    .local v3, oItemImageView:Landroid/widget/ImageView;
    iget-boolean v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    if-eqz v4, :cond_2

    .line 239
    iget-object v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-boolean v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 243
    :cond_2
    if-eqz v3, :cond_3

    .line 244
    iget v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nImageResourceId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-boolean v5, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 249
    :cond_3
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f0c0035

    const/4 v9, 0x0

    .line 254
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    .line 256
    .local v2, oItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;
    if-nez p2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 259
    .local v1, oInflater:Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;->m_nItemViewResourceId:I

    invoke-virtual {v1, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 261
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 262
    .local v6, oNameView:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 263
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iput v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nOriginColor:I

    .line 267
    .end local v1           #oInflater:Landroid/view/LayoutInflater;
    .end local v6           #oNameView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 268
    .local v5, oItemNameView:Landroid/widget/TextView;
    const v7, 0x7f0c003a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 269
    .local v3, oItemCommentView:Landroid/widget/TextView;
    const v7, 0x7f0c0034

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 271
    .local v4, oItemImageView:Landroid/widget/ImageView;
    iget-boolean v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    if-eqz v5, :cond_1

    .line 274
    iget-object v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-boolean v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    :cond_1
    if-eqz v3, :cond_2

    .line 279
    iget-object v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strComment:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 280
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    :goto_0
    iget-object v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strComment:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-boolean v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    :cond_2
    if-eqz v4, :cond_3

    .line 287
    iget v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nImageResourceId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-boolean v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 292
    :cond_3
    iget-boolean v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsChecked:Z

    if-eqz v7, :cond_6

    .line 294
    iget v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nCheckedResourceId:I

    if-eqz v7, :cond_4

    .line 296
    const v0, -0x733801

    .line 297
    .local v0, SelectColor:I
    iget v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nCheckedResourceId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-boolean v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 299
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    .end local v0           #SelectColor:I
    :cond_4
    :goto_1
    return-object p2

    .line 282
    :cond_5
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 304
    :cond_6
    iget v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nOriginColor:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 305
    iget v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nOriginColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
