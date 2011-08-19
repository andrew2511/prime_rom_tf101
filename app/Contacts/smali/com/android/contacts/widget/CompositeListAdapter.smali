.class public Lcom/android/contacts/widget/CompositeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeListAdapter.java"


# instance fields
.field private mAdapters:[Landroid/widget/ListAdapter;

.field private mAllItemsEnabled:Z

.field private mCacheValid:Z

.field private mCount:I

.field private mCounts:[I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mSize:I

.field private mViewTypeCount:I

.field private mViewTypeCounts:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/CompositeListAdapter;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "initialCapacity"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    .line 37
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 38
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 39
    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 40
    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    .line 42
    new-instance v0, Lcom/android/contacts/widget/CompositeListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/CompositeListAdapter$1;-><init>(Lcom/android/contacts/widget/CompositeListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 62
    new-array v0, v1, [Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    .line 63
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    .line 64
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    .line 65
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 204
    iget-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    return v0
.end method

.method protected ensureCacheValid()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    iget-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    if-eqz v3, :cond_0

    .line 129
    :goto_0
    return-void

    .line 116
    :cond_0
    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 117
    iput-boolean v5, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 118
    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 119
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    if-ge v1, v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 121
    .local v0, count:I
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 122
    .local v2, viewTypeCount:I
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aput v0, v3, v1

    .line 123
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 124
    iget-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v4

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 125
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v0           #count:I
    .end local v2           #viewTypeCount:I
    :cond_1
    iput-boolean v5, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 133
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 141
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 144
    :cond_0
    move v2, v0

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 155
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    return-wide v3

    .line 158
    :cond_0
    move v2, v0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, start:I
    const/4 v3, 0x0

    .line 175
    .local v3, viewTypeOffset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 176
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v4, v4, v1

    add-int v0, v2, v4

    .line 177
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v1

    sub-int v5, p1, v2

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    return v4

    .line 180
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    .line 181
    move v2, v0

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0           #end:I
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 192
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 195
    :cond_0
    move v2, v0

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 167
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    .line 109
    return-void
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 213
    .local v0, end:I
    if-lt p1, v2, :cond_2

    if-ge p1, v0, :cond_2

    .line 214
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 217
    :cond_2
    move v2, v0

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0           #end:I
    :cond_3
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method protected notifyDataChanged()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataSetChanged()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
