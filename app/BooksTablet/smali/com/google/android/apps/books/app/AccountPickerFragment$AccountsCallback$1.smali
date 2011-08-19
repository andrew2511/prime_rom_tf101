.class Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;
.super Ljava/lang/Object;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;->this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 178
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;->this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;

    iget-object v0, v0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;->this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;

    iget-object v1, v1, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$300(Lcom/google/android/apps/books/app/AccountPickerFragment;)Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/accounts/Account;

    invoke-static {v0, p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$500(Lcom/google/android/apps/books/app/AccountPickerFragment;Landroid/accounts/Account;)V

    .line 179
    return-void
.end method
