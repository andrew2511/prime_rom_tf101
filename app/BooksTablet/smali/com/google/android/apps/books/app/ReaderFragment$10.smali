.class Lcom/google/android/apps/books/app/ReaderFragment$10;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


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
    .line 1018
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$10;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$10;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 1022
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$10;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1800(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 1023
    const/4 v0, 0x0

    return v0
.end method
