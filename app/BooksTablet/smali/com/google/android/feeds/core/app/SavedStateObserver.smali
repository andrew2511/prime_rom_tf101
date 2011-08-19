.class public Lcom/google/android/feeds/core/app/SavedStateObserver;
.super Landroid/database/DataSetObserver;
.source "SavedStateObserver.java"


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mRestored:Z

.field private mState:Landroid/os/Parcelable;

.field private final mView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<+",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Landroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter "cursor"
    .parameter "savedInstanceState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<+Landroid/widget/Adapter;>;"
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AdapterView must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    if-nez p2, :cond_1

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cursor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    iput-object p1, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mView:Landroid/widget/AdapterView;

    .line 121
    iput-object p2, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mCursor:Landroid/database/Cursor;

    .line 122
    invoke-static {p1, p3}, Lcom/google/android/feeds/core/app/SavedStateObserver;->getListViewSavedState(Landroid/widget/AdapterView;Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mState:Landroid/os/Parcelable;

    .line 123
    return-void
.end method

.method private static getListViewSavedState(Landroid/widget/AdapterView;Landroid/os/Bundle;)Landroid/os/Parcelable;
    .locals 4
    .parameter
    .parameter "savedInstanceState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<+Landroid/widget/Adapter;>;"
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    .line 85
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 86
    const-string v3, "android:viewHierarchyState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 88
    .local v1, viewHierarchyState:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 89
    const-string v3, "android:views"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 91
    .local v2, views:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<+Landroid/widget/Adapter;>;"
    check-cast p0, Landroid/os/Parcelable;

    move-object v3, p0

    .line 97
    .end local v0           #id:I
    .end local v1           #viewHierarchyState:Landroid/os/Bundle;
    .end local v2           #views:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :goto_0
    return-object v3

    .restart local p0       #view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<+Landroid/widget/Adapter;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isRestorable(Landroid/widget/AdapterView;Landroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter "savedInstanceState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<+Landroid/widget/Adapter;>;"
    invoke-static {p0, p1}, Lcom/google/android/feeds/core/app/SavedStateObserver;->getListViewSavedState(Landroid/widget/AdapterView;Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static restore(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 6
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<+Landroid/widget/Adapter;>;"
    instance-of v3, p0, Landroid/widget/AbsListView;

    if-eqz v3, :cond_0

    .line 71
    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    move-object v1, v0

    .line 72
    .local v1, listView:Landroid/widget/AbsListView;
    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 79
    .end local v1           #listView:Landroid/widget/AbsListView;
    :goto_0
    return-void

    .line 73
    :cond_0
    instance-of v3, p0, Landroid/widget/AbsSpinner;

    if-eqz v3, :cond_1

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/widget/AbsSpinner;

    move-object v2, v0

    .line 75
    .local v2, spinner:Landroid/widget/AbsSpinner;
    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 77
    .end local v2           #spinner:Landroid/widget/AbsSpinner;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 128
    iget-object v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 129
    iget-boolean v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mRestored:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/Feed;->getStatus(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/google/android/feeds/core/app/SavedStateObserver;->restore(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mRestored:Z

    .line 147
    :cond_0
    return-void
.end method
