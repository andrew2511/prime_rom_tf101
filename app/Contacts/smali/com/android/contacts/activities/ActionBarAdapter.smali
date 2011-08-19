.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mFilterView:Lcom/android/contacts/list/ContactListFilterView;

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private mNavigationBar:Landroid/view/View;

.field private mQueryString:Ljava/lang/String;

.field private mSearchLabel:Landroid/widget/TextView;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 193
    return v0
.end method

.method public onContactListFilterChanged()V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 214
    return-void
.end method

.method public onContactListFilterCustomizationRequest()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onContactListFiltersLoaded()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;Landroid/app/ActionBar;)V
    .locals 5
    .parameter "savedState"
    .parameter "request"
    .parameter "actionBar"

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x10

    const/4 v3, -0x1

    .line 70
    iput-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 71
    if-eqz p1, :cond_2

    .line 72
    const-string v1, "navBar.searchMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 73
    const-string v1, "navBar.query"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 79
    :goto_0
    if-eqz p3, :cond_0

    .line 80
    invoke-virtual {p3, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040031

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationBar:Landroid/view/View;

    .line 85
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 87
    .local v0, layoutParams:Landroid/app/ActionBar$LayoutParams;
    if-eqz p3, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationBar:Landroid/view/View;

    invoke-virtual {p3, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationBar:Landroid/view/View;

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterView;

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterView:Lcom/android/contacts/list/ContactListFilterView;

    .line 92
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationBar:Landroid/view/View;

    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchLabel:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationBar:Landroid/view/View;

    const v2, 0x7f070050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 95
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 97
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 98
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0193

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 101
    return-void

    .line 75
    .end local v0           #layoutParams:Landroid/app/ActionBar$LayoutParams;
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 76
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "queryString"

    .prologue
    const/4 v1, 0x1

    .line 173
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 174
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v0, :cond_1

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 202
    const-string v0, "navBar.searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 203
    const-string v0, "navBar.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 197
    const-string v0, "navBar.searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    const-string v0, "navBar.query"

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 114
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterView:Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setAnchor(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 116
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mEnabled:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 106
    return-void
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 110
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 144
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_0

    .line 124
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 126
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction()V

    .line 135
    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public update()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mEnabled:Z

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterView:Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListFilterController;->setEnabled(Z)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterView:Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListFilterView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListFilterController;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterView:Lcom/android/contacts/list/ContactListFilterView;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 164
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterView:Lcom/android/contacts/list/ContactListFilterView;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getAccountCount()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterView;->setSingleAccount(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFilterView:Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListFilterView;->bindView(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 164
    goto :goto_1
.end method
