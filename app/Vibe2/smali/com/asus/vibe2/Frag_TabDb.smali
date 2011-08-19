.class public Lcom/asus/vibe2/Frag_TabDb;
.super Lcom/asus/vibe2/Frag_TabContent;
.source "Frag_TabDb.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningTask:Lcom/asus/vibe/api/VibeApiTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/asus/vibe2/Frag_TabContent;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 32
    new-instance v0, Lcom/asus/vibe2/Frag_TabDb$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabDb$1;-><init>(Lcom/asus/vibe2/Frag_TabDb;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance v0, Lcom/asus/vibe2/Frag_TabDb$2;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabDb$2;-><init>(Lcom/asus/vibe2/Frag_TabDb;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/asus/vibe2/Frag_TabDb$3;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabDb$3;-><init>(Lcom/asus/vibe2/Frag_TabDb;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 76
    return-void
.end method

.method public constructor <init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V
    .locals 1
    .parameter "tabType"
    .parameter "param"
    .parameter "parent"
    .parameter "selector"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/asus/vibe2/Frag_TabContent;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 32
    new-instance v0, Lcom/asus/vibe2/Frag_TabDb$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabDb$1;-><init>(Lcom/asus/vibe2/Frag_TabDb;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance v0, Lcom/asus/vibe2/Frag_TabDb$2;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabDb$2;-><init>(Lcom/asus/vibe2/Frag_TabDb;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/asus/vibe2/Frag_TabDb$3;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Frag_TabDb$3;-><init>(Lcom/asus/vibe2/Frag_TabDb;)V

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/asus/vibe2/Frag_TabDb;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/asus/vibe2/Frag_TabDb;->updateFavorites()V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Frag_TabDb;)Lcom/asus/vibe/api/VibeApiTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/asus/vibe2/Frag_TabDb;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/asus/vibe2/Frag_TabDb;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    return-object p1
.end method

.method private updateFavorites()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 125
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabDb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabDb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 143
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f040018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeApiTask;->stop()V

    .line 142
    :cond_4
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabDb;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    goto :goto_0

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/asus/vibe2/Frag_TabContent;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRootView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/asus/vibe2/Frag_TabContent;->onPause()V

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabDb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Lcom/asus/vibe2/Frag_TabContent;->onResume()V

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabDb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.asus.vibe.action.FAVORITE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/asus/vibe2/Frag_TabDb;->updateFavorites()V

    .line 114
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onTabSelected(Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "ft"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/asus/vibe2/Frag_TabContent;->onTabSelected(Landroid/app/FragmentTransaction;)V

    .line 94
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mTabTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabDb;->onResume()V

    goto :goto_0
.end method

.method protected onTabUnselected(Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "ft"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/asus/vibe2/Frag_TabContent;->onTabUnselected(Landroid/app/FragmentTransaction;)V

    .line 104
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabDb;->onPause()V

    .line 105
    return-void
.end method
