.class Lcom/google/android/apps/books/app/ReaderFragment$13;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 1063
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1068
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2202(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 1073
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2202(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    goto :goto_0
.end method
