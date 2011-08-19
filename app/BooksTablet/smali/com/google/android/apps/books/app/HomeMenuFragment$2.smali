.class Lcom/google/android/apps/books/app/HomeMenuFragment$2;
.super Ljava/lang/Object;
.source "HomeMenuFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/HomeMenuFragment;->buildSearchView(Landroid/content/Context;)Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

.field final synthetic val$adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

.field final synthetic val$searchView:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;Landroid/widget/SearchView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

    iput-object p3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$searchView:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 113
    iget-object v3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    if-ne p1, v3, :cond_0

    move v1, v5

    .line 116
    .local v1, lastItem:Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$searchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v6, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 117
    iget-object v3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$searchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 119
    if-eqz v1, :cond_1

    .line 120
    iget-object v3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$200(Lcom/google/android/apps/books/app/HomeMenuFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$100(Lcom/google/android/apps/books/app/HomeMenuFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startSearch(Ljava/lang/String;)V

    .line 132
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v3, v6}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$102(Lcom/google/android/apps/books/app/HomeMenuFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    return v5

    .end local v1           #lastItem:Z
    :cond_0
    move v1, v4

    .line 113
    goto :goto_0

    .line 125
    .restart local v1       #lastItem:Z
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 126
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, volumeId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$200(Lcom/google/android/apps/books/app/HomeMenuFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v3

    invoke-interface {v3, v2, v4, v4, v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToReader(Ljava/lang/String;ZZZ)V

    goto :goto_1
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method
