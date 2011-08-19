.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchActivityViewPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinglePaneAdapter"
.end annotation


# instance fields
.field private final mAdapter1:Landroid/widget/ListAdapter;

.field private final mAdapter2:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;Landroid/widget/ListAdapter;Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .parameter "adapter1"
    .parameter "adapter2"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    .line 214
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    .line 215
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)V

    .line 225
    .local v0, observer:Landroid/database/DataSetObserver;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 226
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 227
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 245
    .local v0, count1:I
    if-ge p1, v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 248
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    sub-int v2, p1, v0

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 254
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 255
    .local v0, count1:I
    if-ge p1, v0, :cond_0

    .line 256
    int-to-long v1, p1

    .line 262
    :goto_0
    return-wide v1

    .line 260
    :cond_0
    sub-int/2addr p1, v0

    .line 262
    const/4 v1, -0x1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 278
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 279
    .local v0, count1:I
    if-ge p1, v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 282
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    sub-int v3, p1, v0

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 269
    .local v0, count1:I
    if-ge p1, v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    sub-int v2, p1, v0

    invoke-interface {v1, v2, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 299
    .local v0, count1:I
    if-ge p1, v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    .line 302
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter2:Landroid/widget/ListAdapter;

    sub-int v2, p1, v0

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isItemLastSuggestion(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 234
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemSuggestion(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->mAdapter1:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
