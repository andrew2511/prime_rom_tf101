.class public Lcom/amazon/android/widget/SearchViewWrapper;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;,
        Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;,
        Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;,
        Lcom/amazon/android/widget/SearchViewWrapper$Availability;
    }
.end annotation


# instance fields
.field private searchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "menuItem"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, searchView:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Landroid/widget/SearchView;

    .end local v0           #searchView:Landroid/view/View;
    iput-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isLayoutRequested()Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconified(Z)V
    .locals 1
    .parameter "iconify"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 200
    :cond_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .parameter "iconified"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 173
    if-eqz p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/widget/SearchViewWrapper$3;-><init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    goto :goto_0
.end method

.method public setOnQueryTextFocusChangeListener(Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 144
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/widget/SearchViewWrapper$2;-><init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 112
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/widget/SearchViewWrapper$1;-><init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchManager;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "searchManager"
    .parameter "componentName"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1, p2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 227
    :cond_0
    return-void
.end method
