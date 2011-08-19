.class Lcom/google/android/apps/books/app/ReaderFragment$12;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 1048
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$12;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 1059
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$12;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2300(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/String;)V

    .line 1053
    const/4 v0, 0x1

    return v0
.end method
