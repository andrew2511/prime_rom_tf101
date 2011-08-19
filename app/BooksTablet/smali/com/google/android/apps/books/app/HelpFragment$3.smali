.class Lcom/google/android/apps/books/app/HelpFragment$3;
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
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/books/app/HelpFragment$3;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HelpFragment$3;->val$config:Lcom/google/android/apps/books/util/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/books/app/HelpFragment$3;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/HelpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 122
    .local v7, args:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/app/HelpFragment$3;->val$config:Lcom/google/android/apps/books/util/Config;

    invoke-static {v7}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->access$100(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->access$200(Landroid/os/Bundle;)I

    move-result v2

    invoke-static {v7}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->access$300(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->access$400(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->access$500(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->access$600(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/books/util/OceanUris;->buildReportIssueUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 134
    .local v8, uri:Landroid/net/Uri;
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/HelpFragment$3;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/HelpFragment;->access$000(Lcom/google/android/apps/books/app/HelpFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->openAuthenticatedUrl(Ljava/lang/String;)V

    .line 135
    return-void

    .line 131
    .end local v8           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/HelpFragment$3;->val$config:Lcom/google/android/apps/books/util/Config;

    const/4 v2, -0x1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/books/util/OceanUris;->buildReportIssueUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .restart local v8       #uri:Landroid/net/Uri;
    goto :goto_0
.end method
