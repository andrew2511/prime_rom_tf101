.class public Lcom/asus/reader/ui/BookIndexAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookIndexAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/BookIndexAdapter$1;,
        Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;,
        Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mItems:Ljava/util/List;

    .line 31
    const-string v0, "BookIndexAdapter"

    const-string v1, "===== call constructor ====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mItems:Ljava/util/List;

    .line 34
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "arg0"
    .parameter "indexView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 64
    if-nez p2, :cond_0

    .line 67
    iget-object v1, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000c

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;

    invoke-direct {v0, v5}, Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;-><init>(Lcom/asus/reader/ui/BookIndexAdapter$1;)V

    .line 72
    .local v0, holder:Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;
    const v1, 0x7f0b0033

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f0b0034

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;->pageView:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    iget-object v2, v0, Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, v0, Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;->pageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/asus/reader/ui/BookIndexAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;

    invoke-virtual {p0}, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;->getPageNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-object p2

    .line 79
    .end local v0           #holder:Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/asus/reader/ui/BookIndexAdapter$ViewHolder;
    goto :goto_0
.end method
