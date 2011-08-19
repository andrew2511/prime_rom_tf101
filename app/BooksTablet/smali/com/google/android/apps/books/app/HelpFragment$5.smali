.class Lcom/google/android/apps/books/app/HelpFragment$5;
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
    .line 149
    iput-object p1, p0, Lcom/google/android/apps/books/app/HelpFragment$5;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HelpFragment$5;->val$config:Lcom/google/android/apps/books/util/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 151
    iget-object v2, p0, Lcom/google/android/apps/books/app/HelpFragment$5;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 152
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/google/android/apps/books/app/HelpFragment$5;->val$config:Lcom/google/android/apps/books/util/Config;

    invoke-static {v3}, Lcom/google/android/apps/books/util/OceanUris;->getPrivacyUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->markExternalIntent(Landroid/content/Intent;)V

    .line 155
    iget-object v2, p0, Lcom/google/android/apps/books/app/HelpFragment$5;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/app/HelpFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
