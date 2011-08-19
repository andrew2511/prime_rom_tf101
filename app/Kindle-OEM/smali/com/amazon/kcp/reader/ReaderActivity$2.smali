.class Lcom/amazon/kcp/reader/ReaderActivity$2;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 154
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ReaderActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-virtual {v1}, Lcom/amazon/android/widget/SearchViewWrapper;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setTitleVisibility(Z)V

    .line 158
    :cond_0
    return-void

    .line 156
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
