.class Lcom/google/android/apps/books/app/HelpFragment$6;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/HelpFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/HelpFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HelpFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/apps/books/app/HelpFragment$6;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/google/android/apps/books/app/HelpFragment$6;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    const v3, 0x7f0b004a

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/HelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, title:Ljava/lang/String;
    const-string v1, "file:///android_asset/licenses.html"

    .line 163
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/app/HelpFragment$6;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/HelpFragment;->access$000(Lcom/google/android/apps/books/app/HelpFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    const-string v3, "file:///android_asset/licenses.html"

    invoke-interface {v2, v0, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->openInternalUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
