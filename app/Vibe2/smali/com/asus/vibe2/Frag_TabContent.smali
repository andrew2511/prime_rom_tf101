.class public abstract Lcom/asus/vibe2/Frag_TabContent;
.super Landroid/app/Fragment;
.source "Frag_TabContent.java"


# instance fields
.field public mAdded:Z

.field protected mEmptyText:Landroid/widget/TextView;

.field protected mEmptyView:Landroid/view/View;

.field protected mList:Landroid/widget/AbsListView;

.field protected mParam:Lcom/asus/vibe/item/VibeParam;

.field protected mParent:Landroid/app/Activity;

.field protected mProgress:Landroid/widget/ProgressBar;

.field protected mRootView:Landroid/view/View;

.field protected mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

.field public mSelected:Z

.field protected mSpinner:Landroid/widget/Spinner;

.field protected mTabTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mAdded:Z

    .line 28
    iput-boolean v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mSelected:Z

    .line 29
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mParent:Landroid/app/Activity;

    .line 30
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    .line 33
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mSpinner:Landroid/widget/Spinner;

    .line 34
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyView:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mProgress:Landroid/widget/ProgressBar;

    .line 36
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyText:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 38
    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 42
    return-void
.end method

.method public constructor <init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V
    .locals 4
    .parameter "tabType"
    .parameter "param"
    .parameter "parent"
    .parameter "selector"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mAdded:Z

    .line 28
    iput-boolean v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mSelected:Z

    .line 29
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mParent:Landroid/app/Activity;

    .line 30
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    .line 32
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    .line 33
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mSpinner:Landroid/widget/Spinner;

    .line 34
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyView:Landroid/view/View;

    .line 35
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mProgress:Landroid/widget/ProgressBar;

    .line 36
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyText:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 38
    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 45
    iput-object p3, p0, Lcom/asus/vibe2/Frag_TabContent;->mParent:Landroid/app/Activity;

    .line 46
    new-instance v1, Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v1, p2}, Lcom/asus/vibe/item/VibeParam;-><init>(Lcom/asus/vibe/item/VibeParam;)V

    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 47
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    iput p1, v1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    .line 49
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v1, v1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_1
    invoke-virtual {p3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v2, v2, Lcom/asus/vibe/item/VibeParam;->tabType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 57
    sget-boolean v1, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v1, "ASUS@Vibe_Mem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabContent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v0           #bar:Landroid/app/ActionBar;
    :pswitch_0
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    goto :goto_1

    .line 51
    :pswitch_1
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    goto :goto_1

    .line 52
    :pswitch_2
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    goto :goto_1

    .line 53
    :pswitch_3
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 204
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 206
    return-void
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 134
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onActivityCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 83
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onAttach "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/16 v7, 0x19

    const/16 v6, 0x16

    const/16 v5, 0xf

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    .line 120
    .local v0, grid:Landroid/widget/GridView;
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 121
    invoke-virtual {v0, v5, v3, v5, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 122
    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 130
    .end local v0           #grid:Landroid/widget/GridView;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v0       #grid:Landroid/widget/GridView;
    :cond_1
    invoke-virtual {v0, v7, v3, v7, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 126
    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 127
    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 89
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabContent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-nez v0, :cond_1

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabContent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 102
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onCreateView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    .line 105
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mSpinner:Landroid/widget/Spinner;

    .line 106
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mProgress:Landroid/widget/ProgressBar;

    .line 108
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyText:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/asus/vibe2/Frag_TabContent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Frag_TabContent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-virtual {v0}, Lcom/asus/vibe2/Adapter_Cont_List;->clearBitmap()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeApiTask;->stop()V

    .line 182
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 184
    :cond_4
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mParent:Landroid/app/Activity;

    .line 185
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    .line 186
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mRootView:Landroid/view/View;

    .line 187
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mList:Landroid/widget/AbsListView;

    .line 188
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mSpinner:Landroid/widget/Spinner;

    .line 189
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyView:Landroid/view/View;

    .line 190
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mProgress:Landroid/widget/ProgressBar;

    .line 191
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mEmptyText:Landroid/widget/TextView;

    .line 192
    iput-object v3, p0, Lcom/asus/vibe2/Frag_TabContent;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 194
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 164
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onDestroyView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 166
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 198
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onDetach "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 152
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 146
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 148
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 140
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 142
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 158
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 160
    return-void
.end method

.method protected onTabSelected(Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "ft"

    .prologue
    const/4 v2, 0x1

    .line 61
    iget-boolean v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mSelected:Z

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mSelected:Z

    .line 63
    iget-boolean v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mAdded:Z

    if-nez v0, :cond_1

    .line 64
    const v0, 0x7f08000a

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabContent;->mTabTag:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 65
    iput-boolean v2, p0, Lcom/asus/vibe2/Frag_TabContent;->mAdded:Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method protected onTabUnselected(Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "ft"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mSelected:Z

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/vibe2/Frag_TabContent;->mSelected:Z

    .line 74
    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method
