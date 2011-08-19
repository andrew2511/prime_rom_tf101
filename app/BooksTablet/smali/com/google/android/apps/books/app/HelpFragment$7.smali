.class Lcom/google/android/apps/books/app/HelpFragment$7;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$adapter:Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HelpFragment;Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/books/app/HelpFragment$7;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HelpFragment$7;->val$adapter:Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/android/apps/books/app/HelpFragment$7;->val$adapter:Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/HelpFragment$Item;

    .line 179
    .local v0, item:Lcom/google/android/apps/books/app/HelpFragment$Item;
    iget-object v1, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->onClick:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->onClick:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 182
    :cond_0
    return-void
.end method
