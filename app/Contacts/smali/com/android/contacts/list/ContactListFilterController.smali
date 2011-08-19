.class public Lcom/android/contacts/list/ContactListFilterController;
.super Ljava/lang/Object;
.source "ContactListFilterController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;,
        Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAccountCount:I

.field private mAnchor:Landroid/view/View;

.field private mCachedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFilterListAdapter:Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;

.field private mFilters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mFiltersLoaded:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mNextFilterId:I

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mEnabled:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopupWidth:I

    .line 63
    iput v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    .line 71
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mLoaderManager:Landroid/app/LoaderManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactListFilterController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactListFilterController;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactListFilterController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mAccountCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactListFilterController;)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method private getDefaultFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/list/ContactListFilter;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private notifyContacListFiltersLoaded()V
    .locals 3

    .prologue
    .line 310
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 311
    .local v1, listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFiltersLoaded()V

    goto :goto_0

    .line 313
    .end local v1           #listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    :cond_0
    return-void
.end method

.method private notifyContactListFilterChanged()V
    .locals 3

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 317
    .local v1, listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    .line 319
    .end local v1           #listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    :cond_0
    return-void
.end method

.method private notifyContactListFilterCustomizationRequest()V
    .locals 3

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 323
    .local v1, listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterCustomizationRequest()V

    goto :goto_0

    .line 325
    .end local v1           #listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    :cond_0
    return-void
.end method

.method private setContactListFilter(I)V
    .locals 4
    .parameter "filterId"

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x3

    const/4 v1, -0x4

    .line 232
    if-ne p1, v3, :cond_1

    .line 233
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v0, v3}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 245
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 246
    return-void

    .line 234
    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 235
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v0, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 236
    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_2
    if-ne p1, v1, :cond_3

    .line 237
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 239
    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 240
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;->getDefaultFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public getAccountCount()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mAccountCount:I

    return v0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFiltersLoaded:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 262
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mFiltersLoaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mEnabled:Z

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopupWidth:I

    if-ne v1, v3, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/contacts/R$styleable;->ContactBrowser:[I

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 268
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopupWidth:I

    .line 270
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    iget v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopupWidth:I

    if-ne v1, v3, :cond_2

    .line 273
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopupWidth:I

    .line 277
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_2
    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopup:Landroid/widget/ListPopupWindow;

    .line 278
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopup:Landroid/widget/ListPopupWindow;

    iget v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopupWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 279
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilterListAdapter:Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 281
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactListFilterController;->onCreateLoader(ILandroid/os/Bundle;)Lcom/android/contacts/list/ContactListFilterLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lcom/android/contacts/list/ContactListFilterLoader;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 121
    new-instance v0, Lcom/android/contacts/list/ContactListFilterLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilterLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 289
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;->notifyContactListFilterCustomizationRequest()V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactListFilterController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    .local p2, filters:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 128
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mCachedFilters:Ljava/util/List;

    move-object v12, v0

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mCachedFilters:Ljava/util/List;

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v3, :cond_4

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, changed:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mCachedFilters:Ljava/util/List;

    move-object v12, v0

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/ContactListFilter;

    .line 132
    .local v5, filter1:Lcom/android/contacts/list/ContactListFilter;
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListFilter;

    .line 133
    .local v6, filter2:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 134
    const/4 v2, 0x1

    .line 148
    .end local v5           #filter1:Lcom/android/contacts/list/ContactListFilter;
    .end local v6           #filter2:Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    :goto_1
    if-nez v2, :cond_4

    .line 225
    .end local v2           #changed:Z
    .end local v10           #i:I
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    :cond_1
    :goto_2
    return-void

    .line 141
    .restart local v2       #changed:Z
    .restart local v5       #filter1:Lcom/android/contacts/list/ContactListFilter;
    .restart local v6       #filter2:Lcom/android/contacts/list/ContactListFilter;
    .restart local v10       #i:I
    .restart local p1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    :cond_2
    iget v12, v5, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    iget-object v12, v5, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    iget-object v13, v6, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 143
    const/4 v2, 0x1

    .line 144
    goto :goto_1

    .line 130
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 153
    .end local v2           #changed:Z
    .end local v5           #filter1:Lcom/android/contacts/list/ContactListFilter;
    .end local v6           #filter2:Lcom/android/contacts/list/ContactListFilter;
    .end local v10           #i:I
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mCachedFilters:Ljava/util/List;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    move-object v12, v0

    if-nez v12, :cond_6

    .line 156
    new-instance v12, Landroid/util/SparseArray;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/util/SparseArray;-><init>(I)V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    .line 161
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    move-object v12, v0

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactListFilter;->isValidationRequired()Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x1

    move v8, v12

    .line 163
    .local v8, filterValid:Z
    :goto_4
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mAccountCount:I

    .line 164
    const/4 v11, 0x0

    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    .local v11, index:I
    :goto_5
    if-ge v11, v3, :cond_8

    .line 165
    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    move v12, v0

    if-nez v12, :cond_5

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mAccountCount:I

    move v12, v0

    add-int/lit8 v12, v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mAccountCount:I

    .line 164
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 158
    .end local v8           #filterValid:Z
    .end local v11           #index:I
    .restart local p1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    goto :goto_3

    .line 161
    :cond_7
    const/4 v12, 0x0

    move v8, v12

    goto :goto_4

    .line 170
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    .restart local v8       #filterValid:Z
    .restart local v11       #index:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mAccountCount:I

    move v12, v0

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    move v13, v0

    add-int/lit8 v14, v13, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    new-instance v14, Lcom/android/contacts/list/ContactListFilter;

    const/4 v15, -0x2

    invoke-direct {v14, v15}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    move v13, v0

    add-int/lit8 v14, v13, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    new-instance v14, Lcom/android/contacts/list/ContactListFilter;

    const/4 v15, -0x4

    invoke-direct {v14, v15}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 177
    :cond_9
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v3, :cond_e

    .line 178
    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactListFilter;

    .line 180
    .local v4, filter:Lcom/android/contacts/list/ContactListFilter;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mAccountCount:I

    move v12, v0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    iget v12, v4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v12, :cond_d

    const/4 v12, 0x1

    move v9, v12

    .line 184
    .local v9, firstAndOnly:Z
    :goto_7
    if-eqz v9, :cond_a

    .line 185
    new-instance v4, Lcom/android/contacts/list/ContactListFilter;

    .end local v4           #filter:Lcom/android/contacts/list/ContactListFilter;
    const/4 v12, -0x2

    invoke-direct {v4, v12}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 188
    .restart local v4       #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    move v13, v0

    add-int/lit8 v14, v13, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    invoke-virtual {v12, v13, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    move-object v12, v0

    invoke-virtual {v4, v12}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 192
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 193
    const/4 v8, 0x1

    .line 196
    :cond_b
    if-eqz v9, :cond_c

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    move v13, v0

    add-int/lit8 v14, v13, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    new-instance v14, Lcom/android/contacts/list/ContactListFilter;

    const/4 v15, -0x4

    invoke-direct {v14, v15}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 177
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 180
    .end local v9           #firstAndOnly:Z
    :cond_d
    const/4 v12, 0x0

    move v9, v12

    goto :goto_7

    .line 202
    .end local v4           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mAccountCount:I

    move v12, v0

    if-lez v12, :cond_f

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilters:Landroid/util/SparseArray;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    move v13, v0

    add-int/lit8 v14, v13, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mNextFilterId:I

    new-instance v14, Lcom/android/contacts/list/ContactListFilter;

    const/4 v15, -0x3

    invoke-direct {v14, v15}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 207
    :cond_f
    const/4 v7, 0x0

    .line 208
    .local v7, filterChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    move-object v12, v0

    if-eqz v12, :cond_10

    if-nez v8, :cond_11

    .line 209
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    move-object v12, v0

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    move v7, v12

    .line 210
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/ContactListFilterController;->getDefaultFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 213
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilterListAdapter:Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;

    move-object v12, v0

    if-nez v12, :cond_13

    .line 214
    new-instance v12, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;-><init>(Lcom/android/contacts/list/ContactListFilterController;)V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mFilterListAdapter:Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;

    .line 219
    :goto_9
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/list/ContactListFilterController;->mFiltersLoaded:Z

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/ContactListFilterController;->notifyContacListFiltersLoaded()V

    .line 222
    if-eqz v7, :cond_1

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/ContactListFilterController;->notifyContactListFilterChanged()V

    goto/16 :goto_2

    .line 209
    :cond_12
    const/4 v12, 0x0

    move v7, v12

    goto :goto_8

    .line 216
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilterController;->mFilterListAdapter:Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->notifyDataSetChanged()V

    goto :goto_9
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mLoaderManager:Landroid/app/LoaderManager;

    const v1, 0x7f07001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 109
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mLoaderManager:Landroid/app/LoaderManager;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 113
    return-void
.end method

.method public selectCustomFilter()V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 298
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;->notifyContactListFilterChanged()V

    .line 299
    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterController;->mAnchor:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 2
    .parameter "filter"
    .parameter "persistent"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 251
    if-eqz p2, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;->notifyContactListFilterChanged()V

    .line 258
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListFilterController;->mEnabled:Z

    .line 77
    return-void
.end method
