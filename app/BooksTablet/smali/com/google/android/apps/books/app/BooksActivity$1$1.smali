.class Lcom/google/android/apps/books/app/BooksActivity$1$1;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity$1;->populateActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

.field final synthetic val$actionBar:Landroid/app/ActionBar;

.field final synthetic val$subtitle:Ljava/lang/CharSequence;

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/app/ActionBar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$actionBar:Landroid/app/ActionBar;

    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$title:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$subtitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 443
    return-void
.end method
