.class public Lcom/google/android/talk/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/SearchActivity$SearchResultsFragment;
    }
.end annotation


# static fields
.field private static CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

.field private static RESULTS_FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private mConversationId:J

.field private mSearchResultView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSinglePane:Z

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "results_fragment"

    sput-object v0, Lcom/google/android/talk/SearchActivity;->RESULTS_FRAGMENT_TAG:Ljava/lang/String;

    .line 63
    const-string v0, "chat_result_fragment"

    sput-object v0, Lcom/google/android/talk/SearchActivity;->CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/SearchActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/SearchActivity;->setConversationId(J)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/talk/SearchActivity;->CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearChatResult()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 175
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    sget-object v2, Lcom/google/android/talk/SearchActivity;->CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .line 177
    .local v1, resultFrag:Lcom/google/android/talk/fragments/SearchChatResultFragment;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->clear()V

    .line 180
    :cond_0
    return-void
.end method

.method private setConversationId(J)V
    .locals 0
    .parameter "conversationId"

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/google/android/talk/SearchActivity;->mConversationId:J

    .line 171
    return-void
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x1

    .line 90
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040027

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 94
    .local v1, v:Landroid/view/ViewGroup;
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 99
    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 101
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 103
    const v2, 0x7f10007a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 104
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 105
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 106
    return-void
.end method


# virtual methods
.method public getConversationId()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/google/android/talk/SearchActivity;->mConversationId:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchActivity;->mUsername:Ljava/lang/String;

    .line 77
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/talk/SearchActivity;->mSinglePane:Z

    .line 81
    const v0, 0x7f100079

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchActivity;->mSearchResultView:Landroid/view/View;

    .line 82
    iget-boolean v0, p0, Lcom/google/android/talk/SearchActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity;->mSearchResultView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/SearchActivity;->setupActionBar()V

    .line 87
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 135
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 136
    const/4 v1, 0x1

    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 186
    invoke-direct {p0}, Lcom/google/android/talk/SearchActivity;->clearChatResult()V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 189
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    sget-object v2, Lcom/google/android/talk/SearchActivity;->RESULTS_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    .line 191
    .local v1, searchFrag:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;
    if-eqz v1, :cond_0

    .line 192
    const-string v2, "onNewIntent"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 112
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->finish()V

    move v0, v6

    .line 113
    goto :goto_0

    .line 116
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/talk/GTalkPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    const-string v2, "accountId"

    const-string v3, "accountId"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 120
    const-string v1, "username"

    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 123
    goto :goto_0

    .line 126
    :sswitch_2
    const-string v0, "talk_search"

    invoke-static {p0, v0}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v6

    .line 127
    goto :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000a8 -> :sswitch_1
        0x7f1000a9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 148
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    sget-object v3, Lcom/google/android/talk/SearchActivity;->RESULTS_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    .line 150
    .local v1, searchFrag:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;
    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/google/android/talk/SearchActivity;->clearChatResult()V

    .line 153
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v2, searchIntent:Landroid/content/Intent;
    const-string v3, "query"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v3, "SearchActivity"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 158
    .end local v2           #searchIntent:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
