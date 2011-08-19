.class public Lcom/google/android/apps/books/app/HomeMenuFragment;
.super Landroid/app/Fragment;
.source "HomeMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/HomeMenuFragment$CollectionVolumesQuery;,
        Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mLastQuery:Ljava/lang/String;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/HomeMenuFragment;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/app/HomeMenuFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mLastQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/books/app/HomeMenuFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mLastQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/HomeMenuFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/HomeMenuFragment;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/HomeMenuFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment;->showCustomActionView(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/HomeMenuFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private buildSearchView(Landroid/content/Context;)Landroid/widget/SearchView;
    .locals 5
    .parameter "context"

    .prologue
    .line 83
    new-instance v2, Landroid/widget/SearchView;

    invoke-direct {v2, p1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v2, searchView:Landroid/widget/SearchView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 92
    new-instance v0, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

    invoke-direct {v0, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;
    new-instance v3, Lcom/google/android/apps/books/app/HomeMenuFragment$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment$1;-><init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 104
    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 105
    new-instance v3, Lcom/google/android/apps/books/app/HomeMenuFragment$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/apps/books/app/HomeMenuFragment$2;-><init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;Landroid/widget/SearchView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 137
    new-instance v3, Lcom/google/android/apps/books/app/HomeMenuFragment$3;

    invoke-direct {v3, p0, v2}, Lcom/google/android/apps/books/app/HomeMenuFragment$3;-><init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Landroid/widget/SearchView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 161
    new-instance v3, Lcom/google/android/apps/books/app/HomeMenuFragment$4;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/app/HomeMenuFragment$4;-><init>(Lcom/google/android/apps/books/app/HomeMenuFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 175
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v1, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 176
    .local v1, params:Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/app/ActionBar$LayoutParams;->width:I

    .line 177
    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-object v2
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1

    .prologue
    .line 307
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private showCustomActionView(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v2, 0x10

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 56
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/HomeMenuFragment;->buildSearchView(Landroid/content/Context;)Landroid/widget/SearchView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mAccount:Landroid/accounts/Account;

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->setHasOptionsMenu(Z)V

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 66
    const v0, 0x7f120004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    const v0, 0x7f0e0053

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 69
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 78
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->showCustomActionView(Z)V

    .line 79
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 216
    :goto_0
    return v0

    .line 193
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startShop()V

    move v0, v2

    .line 194
    goto :goto_0

    .line 197
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/HomeMenuFragment;->showCustomActionView(Z)V

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    move v0, v2

    .line 200
    goto :goto_0

    .line 203
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->pickAccount()V

    move v0, v2

    .line 204
    goto :goto_0

    .line 208
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startForcedSync()V

    move v0, v2

    .line 209
    goto :goto_0

    .line 212
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showHelp(ZLandroid/os/Bundle;)V

    move v0, v2

    .line 213
    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0053
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
