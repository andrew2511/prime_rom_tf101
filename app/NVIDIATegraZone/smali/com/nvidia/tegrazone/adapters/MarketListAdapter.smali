.class public Lcom/nvidia/tegrazone/adapters/MarketListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketListAdapter.java"


# instance fields
.field public context:Landroid/content/Context;

.field public items:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/MarketListAdapter;->items:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/MarketListAdapter;->items:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 31
    move-object v3, p2

    .line 32
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 33
    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/MarketListAdapter;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 34
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030022

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 36
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/MarketListAdapter;->items:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    aget-object v1, v5, p1

    .line 37
    .local v1, item:Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    if-eqz v1, :cond_2

    .line 38
    const v5, 0x7f0a0091

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 39
    .local v2, tt:Landroid/widget/TextView;
    const v5, 0x7f0a0090

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .local v0, img:Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->getIntentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .end local v0           #img:Landroid/widget/ImageView;
    .end local v2           #tt:Landroid/widget/TextView;
    :cond_2
    return-object v3
.end method
