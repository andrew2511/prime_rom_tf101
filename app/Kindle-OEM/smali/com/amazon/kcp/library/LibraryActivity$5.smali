.class Lcom/amazon/kcp/library/LibraryActivity$5;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$5;,"Lcom/amazon/kcp/library/LibraryActivity.5;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$5;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 357
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$5;,"Lcom/amazon/kcp/library/LibraryActivity.5;"
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 363
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$5;,"Lcom/amazon/kcp/library/LibraryActivity.5;"
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$5;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryActivity;->access$200(Lcom/amazon/kcp/library/LibraryActivity;)Lcom/amazon/android/widget/SearchViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$5;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryActivity;->access$200(Lcom/amazon/kcp/library/LibraryActivity;)Lcom/amazon/android/widget/SearchViewWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/SearchViewWrapper;->setIconified(Z)V

    .line 368
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
