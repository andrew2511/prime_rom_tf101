.class Lcom/google/android/apps/books/app/HomeMenuFragment$3;
.super Ljava/lang/Object;
.source "HomeMenuFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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

.field final synthetic val$searchView:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Landroid/widget/SearchView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->val$searchView:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$102(Lcom/google/android/apps/books/app/HomeMenuFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->val$searchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->val$searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$200(Lcom/google/android/apps/books/app/HomeMenuFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startSearch(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$102(Lcom/google/android/apps/books/app/HomeMenuFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    return v2
.end method
