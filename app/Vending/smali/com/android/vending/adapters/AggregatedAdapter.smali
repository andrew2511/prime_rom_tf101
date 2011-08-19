.class public Lcom/android/vending/adapters/AggregatedAdapter;
.super Landroid/widget/BaseAdapter;
.source "AggregatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/BaseAdapter;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mAdapters:[Landroid/widget/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mCachedAllItemsEnabled:Z

.field private mCachedCount:I

.field private mCachedHasStableIds:Z

.field private mCachedTranslations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;",
            ">;"
        }
    .end annotation
.end field

.field private mChildObserver:Landroid/database/DataSetObserver;

.field private mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDirty:Z


# direct methods
.method public constructor <init>([Landroid/widget/BaseAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    .local p1, adapters:[Landroid/widget/BaseAdapter;,"[TT;"
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedCount:I

    .line 38
    iput-boolean v1, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mDirty:Z

    .line 43
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 44
    new-instance v0, Lcom/android/vending/adapters/AggregatedAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/vending/adapters/AggregatedAdapter$1;-><init>(Lcom/android/vending/adapters/AggregatedAdapter;)V

    iput-object v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mChildObserver:Landroid/database/DataSetObserver;

    .line 69
    iput-object p1, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .line 70
    invoke-direct {p0}, Lcom/android/vending/adapters/AggregatedAdapter;->registerAsListener()V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/android/vending/adapters/AggregatedAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/vending/adapters/AggregatedAdapter;)Landroid/database/DataSetObservable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method private declared-synchronized refreshCachedData()V
    .locals 11

    .prologue
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 145
    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    array-length v3, v7

    .line 149
    .local v3, numAdapters:I
    const/4 v5, 0x0

    .line 150
    .local v5, sum:I
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    .line 151
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    mul-int/lit8 v8, v3, 0x3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedTranslations:Ljava/util/ArrayList;

    .line 156
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 157
    iget-object v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    aget-object v0, v7, v2

    .line 158
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 160
    .local v1, adapterItems:I
    add-int/2addr v5, v1

    .line 161
    iget-boolean v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    if-eqz v7, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v9

    :goto_2
    iput-boolean v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    .line 162
    iget-boolean v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    if-eqz v7, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    :goto_3
    iput-boolean v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    .line 164
    const/4 v4, 0x0

    .local v4, offset:I
    :goto_4
    if-ge v4, v1, :cond_3

    .line 165
    new-instance v6, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v4, v7}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;-><init>(Landroid/widget/ListAdapter;ILcom/android/vending/adapters/AggregatedAdapter$1;)V

    .line 166
    .local v6, translation:Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    iget-object v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedTranslations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v4           #offset:I
    .end local v6           #translation:Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    :cond_1
    move v7, v10

    .line 161
    goto :goto_2

    :cond_2
    move v7, v10

    .line 162
    goto :goto_3

    .line 156
    .restart local v4       #offset:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #adapterItems:I
    .end local v4           #offset:I
    :cond_4
    iput v5, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedCount:I

    .line 170
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    .end local v2           #i:I
    .end local v3           #numAdapters:I
    .end local v5           #sum:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private registerAsListener()V
    .locals 3

    .prologue
    .line 78
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mChildObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private translate(I)Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0}, Lcom/android/vending/adapters/AggregatedAdapter;->refreshCachedData()V

    .line 140
    iget-object v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedTranslations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    check-cast p0, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;

    return-object p0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 84
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0}, Lcom/android/vending/adapters/AggregatedAdapter;->refreshCachedData()V

    .line 85
    iget-boolean v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    return v0
.end method

.method public getAdapters()[Landroid/widget/BaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0}, Lcom/android/vending/adapters/AggregatedAdapter;->refreshCachedData()V

    .line 95
    iget v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 99
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/AggregatedAdapter;->translate(I)Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    .line 100
    .local v0, translation:Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$300(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$200(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 104
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/AggregatedAdapter;->translate(I)Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    .line 105
    .local v0, translation:Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$300(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$200(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 116
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/AggregatedAdapter;->translate(I)Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    .line 117
    .local v0, translation:Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$300(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$200(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 109
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/AggregatedAdapter;->translate(I)Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    .line 110
    .local v0, translation:Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$300(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$200(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 121
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0}, Lcom/android/vending/adapters/AggregatedAdapter;->refreshCachedData()V

    .line 122
    iget-boolean v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 126
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0}, Lcom/android/vending/adapters/AggregatedAdapter;->refreshCachedData()V

    .line 127
    iget v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mCachedCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 89
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/AggregatedAdapter;->translate(I)Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    .line 90
    .local v0, translation:Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;
    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$300(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-static {v0}, Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;->access$200(Lcom/android/vending/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    return v1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 131
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 135
    .local p0, this:Lcom/android/vending/adapters/AggregatedAdapter;,"Lcom/android/vending/adapters/AggregatedAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/vending/adapters/AggregatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
