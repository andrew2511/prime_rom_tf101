.class public Lcom/layar/adapters/FavoriteLayersAdapter;
.super Lcom/layar/adapters/BaseLayersAdapter;
.source "FavoriteLayersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;
    }
.end annotation


# instance fields
.field private addButton:Landroid/view/View;

.field private mDragItem:Lcom/layar/data/layer/ResultLayer;

.field protected needShowEditBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->needShowEditBar:Z

    .line 25
    invoke-direct {p0, p1}, Lcom/layar/adapters/FavoriteLayersAdapter;->initAddLayerButton(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private initAddLayerButton(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->addButton:Landroid/view/View;

    .line 69
    return-void
.end method


# virtual methods
.method protected childGetView(Landroid/view/ViewGroup;Lcom/layar/data/layer/ResultLayer;)Z
    .locals 5
    .parameter "root"
    .parameter "rlayer"

    .prologue
    const/4 v4, 0x1

    .line 87
    iget-object v1, p2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget v1, v1, Lcom/layar/data/layer/Layer20;->layerType:I

    const/16 v2, -0x6e

    if-eq v1, v2, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->addButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 93
    .local v0, vParent:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    .line 94
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0           #vParent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->addButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 96
    :cond_1
    iget-boolean v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->needShowEditBar:Z

    if-eqz v1, :cond_2

    move v1, v4

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->addButton:Landroid/view/View;

    const/4 v2, -0x1

    .line 100
    iget v3, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mRowHeight:I

    .line 99
    invoke-virtual {p0, v2, v3}, Lcom/layar/adapters/FavoriteLayersAdapter;->getLayoutParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->addButton:Landroid/view/View;

    iget-object v2, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move v1, v4

    .line 106
    goto :goto_0
.end method

.method public drag(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/adapters/FavoriteLayersAdapter;->getCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 37
    monitor-exit p0

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/FavoriteLayersAdapter;->getItem(I)Lcom/layar/data/layer/ResultLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    .line 39
    iget-object v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/layar/adapters/FavoriteLayersAdapter;->notifyDataSetChanged()V

    .line 35
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public drop(II)Z
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/adapters/FavoriteLayersAdapter;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 48
    .local v0, doDrop:Z
    :goto_0
    if-nez v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    .line 53
    invoke-virtual {p0}, Lcom/layar/adapters/FavoriteLayersAdapter;->notifyDataSetChanged()V

    .line 54
    monitor-exit p0

    return v0

    .line 47
    .end local v0           #doDrop:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDragable()Lcom/layar/data/layer/Layer20;
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    iget-object v0, v0, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    monitor-exit p0

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected implViewStub(Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;Lcom/layar/data/layer/ResultLayer;)V
    .locals 5
    .parameter "holder"
    .parameter "rlayer"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 112
    iget-object v1, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->childHolder:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 113
    new-instance v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;-><init>(Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;)V

    .line 114
    .local v0, eHolder:Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;
    iget-object v1, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->editStub:Landroid/view/ViewStub;

    const v2, 0x7f030019

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 115
    iget-object v1, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->editStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->holder:Landroid/view/View;

    .line 116
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->holder:Landroid/view/View;

    const v2, 0x7f070074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    .line 117
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->holder:Landroid/view/View;

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->premium:Landroid/widget/TextView;

    .line 119
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->holder:Landroid/view/View;

    const v2, 0x7f07004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->editBar:Landroid/view/View;

    .line 120
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->holder:Landroid/view/View;

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->deleteButton:Landroid/view/View;

    .line 121
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->deleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v0, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->childHolder:Ljava/lang/Object;

    .line 127
    :goto_0
    iget-boolean v1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->needShowEditBar:Z

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->editBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->deleteButton:Landroid/view/View;

    iget-object v2, p2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    :goto_1
    return-void

    .line 124
    .end local v0           #eHolder:Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;
    :cond_0
    iget-object v0, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->childHolder:Ljava/lang/Object;

    check-cast v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;

    .restart local v0       #eHolder:Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;
    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-boolean v1, v1, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    if-nez v1, :cond_2

    .line 132
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->premium:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    invoke-static {v1, v2}, Lcom/layar/data/layer/LayerHelper;->setPriceValue(Landroid/widget/TextView;Lcom/layar/data/layer/Layer20;)V

    .line 133
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->editBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->editBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v1, v0, Lcom/layar/adapters/FavoriteLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public removeAddItem()V
    .locals 5

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/layar/adapters/FavoriteLayersAdapter;->getCount()I

    move-result v0

    .line 73
    .local v0, count:I
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 83
    :goto_1
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Lcom/layar/adapters/FavoriteLayersAdapter;->getItem(I)Lcom/layar/data/layer/ResultLayer;

    move-result-object v2

    .line 75
    .local v2, rlayer:Lcom/layar/data/layer/ResultLayer;
    iget-object v3, v2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    if-nez v3, :cond_2

    .line 73
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 77
    :cond_2
    iget-object v3, v2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget v3, v3, Lcom/layar/data/layer/Layer20;->layerType:I

    const/16 v4, -0x6e

    if-ne v3, v4, :cond_1

    .line 78
    iget-object v3, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/layar/adapters/FavoriteLayersAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public showEditBar(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->needShowEditBar:Z

    if-ne v0, p1, :cond_0

    .line 61
    monitor-exit p0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->needShowEditBar:Z

    .line 63
    invoke-virtual {p0}, Lcom/layar/adapters/FavoriteLayersAdapter;->notifyDataSetChanged()V

    .line 59
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected showItem(Lcom/layar/data/layer/ResultLayer;Landroid/view/View;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)Z
    .locals 1
    .parameter "rlayer"
    .parameter "convertView"
    .parameter "holder"

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/layar/adapters/FavoriteLayersAdapter;->mDragItem:Lcom/layar/data/layer/ResultLayer;

    if-ne p1, v0, :cond_0

    .line 145
    monitor-exit p0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/layar/adapters/BaseLayersAdapter;->showItem(Lcom/layar/data/layer/ResultLayer;Landroid/view/View;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
