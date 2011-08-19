.class public abstract Lcom/google/android/talk/fragments/RosterListFragment;
.super Landroid/app/Fragment;
.source "RosterListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static sDivider:Landroid/graphics/drawable/Drawable;


# instance fields
.field protected mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field protected mApp:Lcom/google/android/talk/TalkApp;

.field protected mCreated:Z

.field protected mDontRestoreListViewState:Z

.field protected final mHandler:Landroid/os/Handler;

.field protected mImSession:Lcom/google/android/gtalkservice/IImSession;

.field protected mList:Landroid/widget/ListView;

.field private mListState:Landroid/os/Parcelable;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field protected mLogLevel:I

.field protected mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

.field protected mTabletMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLogLevel:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    .line 85
    return-void
.end method

.method private addRemoteListenersIfReady()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mCreated:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->addRemoteListeners()V

    .line 76
    :cond_0
    return-void
.end method

.method public static getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/google/android/talk/fragments/RosterListFragment;->sDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 271
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterListFragment] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method


# virtual methods
.method protected abstract addRemoteListeners()V
.end method

.method public forceLoad()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLogLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const-string v0, "defer requery cursor"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/RosterListFragment;->log(Ljava/lang/String;)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, v2}, Lcom/google/android/talk/IRosterListAdapter;->setNeedForceLoad(Z)V

    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/talk/fragments/RosterListFragment;->startLoading(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method protected getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected getLoader(I)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    invoke-static {p1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedStates"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 94
    if-eqz p1, :cond_0

    .line 96
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mTabletMode:Z

    .line 100
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 109
    const v1, 0x7f040023

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, root:Landroid/view/View;
    const v1, 0x7f100072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    .line 111
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/talk/fragments/RosterListFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/RosterListFragment$1;-><init>(Lcom/google/android/talk/fragments/RosterListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/talk/fragments/RosterListFragment;->sDivider:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 173
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_0
    return-void
.end method

.method protected abstract onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 144
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 145
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mDontRestoreListViewState:Z

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->restoreListViewState()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->forceLoad()V

    .line 150
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    iget-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    .line 188
    const-string v3, "liststate"

    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    iget-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v3, :cond_0

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v0

    .line 196
    .local v0, accountId:J
    const-string v3, "accountId"

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0           #accountId:J
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 198
    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "talk"

    const-string v4, "onSaveInstanceState: caught "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 66
    invoke-direct {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->addRemoteListenersIfReady()V

    .line 67
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mCreated:Z

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 135
    invoke-direct {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->addRemoteListenersIfReady()V

    .line 136
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLogLevel:I

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 158
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 160
    const/4 v0, 0x0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->removeRemoteListeners()V

    .line 164
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mCreated:Z

    .line 166
    return-void
.end method

.method protected abstract removeRemoteListeners()V
.end method

.method protected restoreListViewState()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    .line 213
    iget v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreListViewState: pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/RosterListFragment;->log(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    return-void
.end method

.method protected startLoading(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v1, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 259
    .local v0, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v1, p1, p2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method
