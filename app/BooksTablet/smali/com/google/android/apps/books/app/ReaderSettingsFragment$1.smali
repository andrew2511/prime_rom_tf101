.class Lcom/google/android/apps/books/app/ReaderSettingsFragment$1;
.super Ljava/lang/Object;
.source "ReaderSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$1;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$1;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$000(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showSettings(Z)V

    .line 83
    return-void
.end method
