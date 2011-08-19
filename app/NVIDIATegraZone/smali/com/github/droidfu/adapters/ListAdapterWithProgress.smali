.class public abstract Lcom/github/droidfu/adapters/ListAdapterWithProgress;
.super Landroid/widget/BaseAdapter;
.source "ListAdapterWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected context:Landroid/app/ListActivity;

.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected inflater:Landroid/view/LayoutInflater;

.field private isLoadingData:Z

.field protected listView:Landroid/widget/ListView;

.field private progressView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/ListActivity;I)V
    .locals 3
    .parameter "activity"
    .parameter "progressDrawableResourceId"

    .prologue
    .line 42
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->context:Landroid/app/ListActivity;

    .line 44
    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->listView:Landroid/widget/ListView;

    .line 45
    invoke-virtual {p1}, Landroid/app/ListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->progressView:Landroid/view/View;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->inflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method private isPositionOfProgressElement(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 147
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    iget-boolean v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->isLoadingData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    .local p1, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-virtual {p0}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->notifyDataSetChanged()V

    .line 157
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 160
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    invoke-virtual {p0}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method protected abstract doGetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 58
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    const/4 v0, 0x0

    .line 59
    .local v0, size:I
    iget-object v1, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget-boolean v1, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->isLoadingData:Z

    if-eqz v1, :cond_1

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    :cond_1
    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 99
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 106
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 132
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    invoke-direct {p0, p1}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->isPositionOfProgressElement(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->progressView:Landroid/view/View;

    .line 141
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->progressView:Landroid/view/View;

    if-ne p2, v0, :cond_1

    .line 138
    const/4 p2, 0x0

    .line 141
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->doGetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    invoke-virtual {p0}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    invoke-virtual {p0}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->isLoadingData:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 111
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    invoke-direct {p0, p1}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->isPositionOfProgressElement(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 128
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    iget-boolean v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->isLoadingData:Z

    return v0
.end method

.method public remove(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 165
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    iget-object v0, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 166
    invoke-virtual {p0}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->notifyDataSetChanged()V

    .line 167
    return-void
.end method

.method public setIsLoadingData(Z)V
    .locals 0
    .parameter "isLoadingData"

    .prologue
    .line 123
    .local p0, this:Lcom/github/droidfu/adapters/ListAdapterWithProgress;,"Lcom/github/droidfu/adapters/ListAdapterWithProgress<TT;>;"
    iput-boolean p1, p0, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->isLoadingData:Z

    .line 124
    invoke-virtual {p0}, Lcom/github/droidfu/adapters/ListAdapterWithProgress;->notifyDataSetChanged()V

    .line 125
    return-void
.end method
