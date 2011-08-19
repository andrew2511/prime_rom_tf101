.class Lcom/google/android/talk/BuddyListCombo$8;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->setupSearchUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOnCancelSearchCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 1
    .parameter

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1251
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$8$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$8$1;-><init>(Lcom/google/android/talk/BuddyListCombo$8;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->mOnCancelSearchCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryString"

    .prologue
    const/4 v2, 0x1

    .line 1258
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->mOnCancelSearchCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setQueryString(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1260
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1261
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/DrawerLayout;->setExpanded(Z)V

    .line 1267
    :cond_0
    :goto_0
    return v2

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->doHistorySearch()V

    .line 1272
    const/4 v0, 0x1

    return v0
.end method
