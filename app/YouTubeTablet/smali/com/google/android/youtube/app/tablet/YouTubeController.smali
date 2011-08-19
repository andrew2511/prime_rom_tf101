.class public abstract Lcom/google/android/youtube/app/tablet/YouTubeController;
.super Lcom/google/android/youtube/core/tablet/Controller;
.source "YouTubeController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;
    }
.end annotation


# instance fields
.field protected actionBarLayout:Landroid/view/ViewGroup;

.field protected final application:Lcom/google/android/youtube/app/YouTubeApplication;

.field private final menuHelper:Lcom/google/android/youtube/app/ui/MenuHelper;

.field protected final navigation:Lcom/google/android/youtube/app/Navigation;

.field private final preferences:Landroid/content/SharedPreferences;

.field private searchMode:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

.field protected searchView:Landroid/widget/SearchView;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V
    .locals 2
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "arguments"

    .prologue
    .line 62
    invoke-direct {p0, p1, p1, p2, p4}, Lcom/google/android/youtube/core/tablet/Controller;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 63
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 64
    iput-object p3, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->navigation:Lcom/google/android/youtube/app/Navigation;

    .line 65
    new-instance v0, Lcom/google/android/youtube/app/ui/MenuHelper;

    invoke-direct {v0, p2, p3}, Lcom/google/android/youtube/app/ui/MenuHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->menuHelper:Lcom/google/android/youtube/app/ui/MenuHelper;

    .line 66
    const-string v0, "youtube"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->preferences:Landroid/content/SharedPreferences;

    .line 67
    sget-object v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchMode:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    .line 68
    return-void
.end method

.method private isSearchIconifiable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSearchBox()V
    .locals 4

    .prologue
    .line 146
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->actionBarLayout:Landroid/view/ViewGroup;

    const v3, 0x7f080040

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    .line 147
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    const v3, 0x7f0d00a4

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/tablet/YouTubeController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 150
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 152
    .local v0, info:Landroid/app/SearchableInfo;
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 155
    .end local v0           #info:Landroid/app/SearchableInfo;
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 157
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 158
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 159
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    return-void
.end method


# virtual methods
.method protected createSearchBox()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "user_account"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, p3, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->isSearchIconifiable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->setSearchMode(Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;)V

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/tablet/Controller;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->createSearchBox()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->actionBarLayout:Landroid/view/ViewGroup;

    .line 74
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->registerSearchBox()V

    .line 75
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/tablet/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->menuHelper:Lcom/google/android/youtube/app/ui/MenuHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/MenuHelper;->onCreateMenu(Landroid/view/Menu;)Z

    .line 102
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 221
    return-void
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->menuHelper:Lcom/google/android/youtube/app/ui/MenuHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/MenuHelper;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/Controller;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 107
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchMode:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    sget-object v3, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    if-eq v2, v3, :cond_0

    .line 108
    const v2, 0x7f080087

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 112
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 113
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const v3, 0x7f080082

    if-ne v2, v3, :cond_1

    .line 116
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_2
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/Navigation;->toSearch(Ljava/lang/String;)V

    .line 207
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onSearchRequested()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchMode:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    sget-object v1, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    if-ne v0, v1, :cond_0

    .line 134
    sget-object v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->setSearchMode(Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onStart()V

    .line 81
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, actionBar:Landroid/app/ActionBar;
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 84
    .local v1, layoutParams:Landroid/app/ActionBar$LayoutParams;
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->actionBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchMode:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    sget-object v3, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->isSearchIconifiable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    sget-object v2, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    iput-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchMode:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchMode:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->setSearchMode(Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;)V

    .line 89
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onStop()V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 96
    return-void
.end method

.method public onSuggestionClick(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 192
    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 193
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const-string v3, "suggest_intent_query"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, col:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v3, v2}, Lcom/google/android/youtube/app/Navigation;->toSearch(Ljava/lang/String;)V

    .line 197
    const/4 v3, 0x1

    .line 199
    .end local v1           #col:I
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method protected setSearchMode(Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;)V
    .locals 3
    .parameter "searchMode"

    .prologue
    const/4 v2, 0x0

    .line 167
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchMode:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->isSearchIconifiable()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    sget-object v1, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 176
    return-void

    .line 171
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 174
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method protected setSearchQuery(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/YouTubeController;->searchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 164
    return-void
.end method
