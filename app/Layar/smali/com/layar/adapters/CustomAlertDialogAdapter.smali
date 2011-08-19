.class public Lcom/layar/adapters/CustomAlertDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomAlertDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;,
        Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/layar/adapters/CustomAlertDialogAdapter;->mItems:Ljava/util/ArrayList;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/CustomAlertDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/layar/adapters/CustomAlertDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/layar/adapters/CustomAlertDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/CustomAlertDialogAdapter;->getItem(I)Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/layar/adapters/CustomAlertDialogAdapter;->getItem(I)Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    move-result-object v0

    iget v0, v0, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 46
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/layar/adapters/CustomAlertDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v1, Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;-><init>(Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;)V

    .line 49
    .local v1, itemViewHolder:Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;
    const v2, 0x7f070048

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;->itemLabel:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f070047

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;->itemIcon:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/CustomAlertDialogAdapter;->getItem(I)Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;

    move-result-object v0

    .line 57
    .local v0, item:Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;
    iget-object v2, v1, Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;->itemLabel:Landroid/widget/TextView;

    iget v3, v0, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;->nameResId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v2, v1, Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;->itemIcon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;->drawableResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    return-object p2

    .line 53
    .end local v0           #item:Lcom/layar/adapters/CustomAlertDialogAdapter$CustomAlertDialogItem;
    .end local v1           #itemViewHolder:Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;

    .restart local v1       #itemViewHolder:Lcom/layar/adapters/CustomAlertDialogAdapter$ItemViewHolder;
    goto :goto_0
.end method
