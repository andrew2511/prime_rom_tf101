.class Lcom/google/android/apps/books/app/ReaderFragment$11;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1030
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFocusChange() with hasFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1900(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2000(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 1039
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1040
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2200(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2200(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1042
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2202(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 1045
    .end local v0           #listView:Landroid/widget/ListView;
    :cond_0
    return-void
.end method
