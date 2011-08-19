.class public Lcom/asus/vibe2/Frag_TabApi;
.super Lcom/asus/vibe2/Frag_TabContent;
.source "Frag_TabApi.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/asus/vibe2/Frag_TabContent;-><init>()V

    .line 34
    new-instance v0, Lcom/asus/vibe2/Frag_TabApi$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabApi$1;-><init>(Lcom/asus/vibe2/Frag_TabApi;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/asus/vibe2/Frag_TabApi$2;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabApi$2;-><init>(Lcom/asus/vibe2/Frag_TabApi;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 98
    new-instance v0, Lcom/asus/vibe2/Frag_TabApi$3;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabApi$3;-><init>(Lcom/asus/vibe2/Frag_TabApi;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 110
    return-void
.end method

.method public constructor <init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V
    .locals 1
    .parameter "tabType"
    .parameter "param"
    .parameter "parent"
    .parameter "selector"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/asus/vibe2/Frag_TabContent;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V

    .line 34
    new-instance v0, Lcom/asus/vibe2/Frag_TabApi$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabApi$1;-><init>(Lcom/asus/vibe2/Frag_TabApi;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/asus/vibe2/Frag_TabApi$2;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabApi$2;-><init>(Lcom/asus/vibe2/Frag_TabApi;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 98
    new-instance v0, Lcom/asus/vibe2/Frag_TabApi$3;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabApi$3;-><init>(Lcom/asus/vibe2/Frag_TabApi;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/asus/vibe2/Frag_TabApi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/vibe2/Frag_TabApi;->updateContents()V

    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabApi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    invoke-direct {p0}, Lcom/asus/vibe2/Frag_TabApi;->updateContents()V

    goto :goto_0
.end method

.method private updateContents()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v3, 0x7f040018

    const/16 v2, 0x8

    .line 189
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabApi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v0, v0, Lcom/asus/vibe/item/VibeParam;->tabType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->loggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 195
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeApiTask;->stop()V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeApiTask;->stop()V

    .line 208
    :cond_3
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 209
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-ge v0, v6, :cond_5

    .line 212
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-eqz v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeApiTask;->stop()V

    .line 220
    :cond_6
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 221
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-ge v0, v6, :cond_8

    .line 224
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 227
    :cond_8
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lcom/asus/vibe2/Frag_TabContent;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 166
    const v0, 0x7f070001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/asus/vibe2/Frag_TabContent;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRootView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabApi;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabApi;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 125
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Frag_TabApi;->setHasOptionsMenu(Z)V

    .line 126
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080021

    if-ne v0, v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/asus/vibe2/Frag_TabApi;->refresh()V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/asus/vibe2/Frag_TabContent;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/asus/vibe2/Frag_TabContent;->onPause()V

    .line 160
    invoke-static {}, Lcom/asus/vibe/api/IconCacheMgr;->clearCacher()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/asus/vibe2/Frag_TabContent;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/asus/vibe2/Frag_TabApi;->updateContents()V

    .line 155
    return-void
.end method

.method protected onTabSelected(Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "ft"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/asus/vibe2/Frag_TabContent;->onTabSelected(Landroid/app/FragmentTransaction;)V

    .line 132
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v0, v0, Lcom/asus/vibe/item/VibeParam;->tabType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->loggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParent:Landroid/app/Activity;

    invoke-static {v0}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->requestGetAccInfo(Landroid/app/Activity;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mTabTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v0, :cond_2

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabApi;->onResume()V

    goto :goto_0
.end method

.method protected onTabUnselected(Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "ft"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/asus/vibe2/Frag_TabContent;->onTabUnselected(Landroid/app/FragmentTransaction;)V

    .line 148
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabApi;->onPause()V

    .line 149
    return-void
.end method
