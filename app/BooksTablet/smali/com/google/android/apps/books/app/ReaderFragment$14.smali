.class Lcom/google/android/apps/books/app/ReaderFragment$14;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1076
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 1080
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 1081
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1098
    :goto_0
    return-void

    .line 1083
    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1087
    .local v7, pageId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2400(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2402(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;)Lcom/google/android/apps/books/common/Position;

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1600(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1093
    .local v4, query:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    new-instance v1, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v1, v7}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    const-string v3, "SearchWithinBook"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1096
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1097
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1600(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method
