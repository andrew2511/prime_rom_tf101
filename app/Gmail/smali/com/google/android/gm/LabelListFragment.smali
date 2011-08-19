.class public Lcom/google/android/gm/LabelListFragment;
.super Landroid/app/ListFragment;
.source "LabelListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelListFragment$1;,
        Lcom/google/android/gm/LabelListFragment$ViewHolder;,
        Lcom/google/android/gm/LabelListFragment$LabelsAdapter;,
        Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/LabelList;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field protected mCreateShortcut:Z

.field private mDefaultLabel:Ljava/lang/String;

.field private mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

.field private mInitialized:Z

.field private mSelectedLabelPos:I

.field private mSelectionHandler:Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    .line 329
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/LabelListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/LabelListFragment;)Lcom/google/android/gm/LabelItemView$DropHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/LabelListFragment;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelListFragment;->putEmptyIfZero(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private putEmptyIfZero(I)Ljava/lang/String;
    .locals 1
    .parameter "numConversations"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string v0, ""

    .line 171
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindActivityInfo(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;Lcom/google/android/gm/LabelItemView$DropHandler;Ljava/lang/String;Z)V
    .locals 9
    .parameter "gmail"
    .parameter "account"
    .parameter "handler"
    .parameter "dropHandler"
    .parameter "defaultLabel"
    .parameter "createShortcut"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v0, v8

    .line 88
    .local v0, changed:Z
    :goto_0
    iput-object p2, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/google/android/gm/LabelListFragment;->mSelectionHandler:Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;

    .line 90
    iput-object p4, p0, Lcom/google/android/gm/LabelListFragment;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    .line 91
    iput-object p5, p0, Lcom/google/android/gm/LabelListFragment;->mDefaultLabel:Ljava/lang/String;

    .line 92
    iput-boolean p6, p0, Lcom/google/android/gm/LabelListFragment;->mCreateShortcut:Z

    .line 94
    iget-boolean v5, p0, Lcom/google/android/gm/LabelListFragment;->mInitialized:Z

    if-eqz v5, :cond_1

    .line 95
    if-eqz v0, :cond_3

    .line 98
    const/4 v5, -0x1

    iput v5, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v5, v7, v6, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 115
    :cond_1
    :goto_1
    return-void

    .end local v0           #changed:Z
    :cond_2
    move v0, v7

    .line 86
    goto :goto_0

    .line 103
    .restart local v0       #changed:Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 104
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 105
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_1

    .line 106
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/Label;

    .line 107
    .local v4, toMatch:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/LabelListFragment;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    iput v2, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget v6, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    invoke-virtual {v5, v6, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 105
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public bindActivityInfo(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;Lcom/google/android/gm/LabelItemView$DropHandler;Z)V
    .locals 7
    .parameter "gmail"
    .parameter "account"
    .parameter "handler"
    .parameter "dropHandler"
    .parameter "createShortcut"

    .prologue
    .line 77
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/LabelListFragment;->bindActivityInfo(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;Lcom/google/android/gm/LabelItemView$DropHandler;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method getItem(I)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "position"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gm/provider/Label;

    return-object p0
.end method

.method protected getSystemLabelAt(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelListFragment;->getItem(I)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    .line 176
    .local v0, item:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/LabelListFragment;->mInitialized:Z

    .line 121
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 124
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/LabelList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lcom/google/android/gm/provider/LabelLoader;

    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/provider/LabelLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 130
    const v2, 0x7f04001e

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, root:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 137
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 138
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 140
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 145
    iput p3, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    .line 146
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mSelectionHandler:Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;

    invoke-virtual {p0, p3}, Lcom/google/android/gm/LabelListFragment;->getSystemLabelAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;->onLabelSelected(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/LabelList;)V
    .locals 7
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/LabelList;",
            ">;",
            "Lcom/google/android/gm/provider/LabelList;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/LabelList;>;"
    const/4 v6, -0x1

    .line 302
    new-instance v0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04001d

    invoke-direct {v0, p0, v3, p2, v4}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;-><init>(Lcom/google/android/gm/LabelListFragment;Landroid/content/Context;Lcom/google/android/gm/provider/LabelList;I)V

    .line 303
    .local v0, adapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0036

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 306
    iget v3, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment;->mDefaultLabel:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 310
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget v3, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    if-ne v3, v6, :cond_2

    .line 313
    invoke-virtual {p2, v1}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v2

    .line 314
    .local v2, toMatch:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    :cond_0
    iput v1, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    .line 310
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v1           #i:I
    .end local v2           #toMatch:Lcom/google/android/gm/provider/Label;
    :cond_2
    iget v3, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    if-eq v3, v6, :cond_3

    .line 321
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gm/LabelListFragment;->mSelectedLabelPos:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 324
    :cond_3
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    check-cast p2, Lcom/google/android/gm/provider/LabelList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/LabelListFragment;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/LabelList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/LabelList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/LabelList;>;"
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 152
    return-void
.end method
