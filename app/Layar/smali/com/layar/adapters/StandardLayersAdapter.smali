.class public Lcom/layar/adapters/StandardLayersAdapter;
.super Lcom/layar/adapters/BaseLayersAdapter;
.source "StandardLayersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;
    }
.end annotation


# instance fields
.field protected showAddButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter;-><init>(Landroid/content/Context;)V

    .line 14
    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    iput-boolean v0, p0, Lcom/layar/adapters/StandardLayersAdapter;->showAddButton:Z

    .line 18
    return-void
.end method


# virtual methods
.method protected implViewStub(Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;Lcom/layar/data/layer/ResultLayer;)V
    .locals 4
    .parameter "holder"
    .parameter "rlayer"

    .prologue
    const/4 v3, 0x0

    .line 23
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->childHolder:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 24
    new-instance v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;-><init>(Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;)V

    .line 25
    .local v0, eHolder:Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;
    iget-object v1, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->editStub:Landroid/view/ViewStub;

    const v2, 0x7f03002a

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 27
    iget-object v1, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->editStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    .line 28
    iget-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    .line 29
    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 28
    iput-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->premium:Landroid/widget/TextView;

    .line 30
    iget-boolean v1, p0, Lcom/layar/adapters/StandardLayersAdapter;->showAddButton:Z

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 34
    iget-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 35
    iget-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    iget-object v2, p0, Lcom/layar/adapters/StandardLayersAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_0
    iput-object v0, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->childHolder:Ljava/lang/Object;

    .line 41
    :goto_0
    iget-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->priceArea:Landroid/view/View;

    iget-object v2, p2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object v1, v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;->premium:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    invoke-static {v1, v2}, Lcom/layar/data/layer/LayerHelper;->setPriceValue(Landroid/widget/TextView;Lcom/layar/data/layer/Layer20;)V

    .line 43
    return-void

    .line 39
    .end local v0           #eHolder:Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;
    :cond_1
    iget-object v0, p1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->childHolder:Ljava/lang/Object;

    check-cast v0, Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;

    .restart local v0       #eHolder:Lcom/layar/adapters/StandardLayersAdapter$EditViewHolder;
    goto :goto_0
.end method
