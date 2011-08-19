.class Lcom/google/android/apps/books/app/HelpFragment$1;
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

.field final synthetic val$config:Lcom/google/android/apps/books/util/Config;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HelpFragment;Lcom/google/android/apps/books/util/Config;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/books/app/HelpFragment$1;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HelpFragment$1;->val$config:Lcom/google/android/apps/books/util/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/books/app/HelpFragment$1;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/HelpFragment;->access$000(Lcom/google/android/apps/books/app/HelpFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/HelpFragment$1;->val$config:Lcom/google/android/apps/books/util/Config;

    invoke-static {v1}, Lcom/google/android/apps/books/util/OceanUris;->getHelpCenterUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->openAuthenticatedUrl(Ljava/lang/String;)V

    .line 107
    return-void
.end method
