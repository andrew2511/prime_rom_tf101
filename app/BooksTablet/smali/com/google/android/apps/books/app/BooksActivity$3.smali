.class Lcom/google/android/apps/books/app/BooksActivity$3;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZI)V
    .locals 4
    .parameter "isOffline"
    .parameter "numFailed"

    .prologue
    const v3, 0x104000a

    .line 1334
    if-eqz p1, :cond_1

    .line 1335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1336
    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1339
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$600(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 1349
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    if-lez p2, :cond_0

    .line 1342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1343
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1346
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$600(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    goto :goto_0
.end method
