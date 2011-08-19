.class Lcom/google/android/apps/books/app/ErrorFragment$1;
.super Ljava/lang/Object;
.source "ErrorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ErrorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ErrorFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ErrorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/apps/books/app/ErrorFragment$1;->this$0:Lcom/google/android/apps/books/app/ErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 29
    iget-object v2, p0, Lcom/google/android/apps/books/app/ErrorFragment$1;->this$0:Lcom/google/android/apps/books/app/ErrorFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/ErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->getPositiveIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 32
    iget-object v2, p0, Lcom/google/android/apps/books/app/ErrorFragment$1;->this$0:Lcom/google/android/apps/books/app/ErrorFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/app/ErrorFragment;->startActivity(Landroid/content/Intent;)V

    .line 36
    :cond_0
    return-void
.end method
