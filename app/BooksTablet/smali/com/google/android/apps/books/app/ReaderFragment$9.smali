.class Lcom/google/android/apps/books/app/ReaderFragment$9;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1010
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$9;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$9;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1600(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1015
    return-void
.end method
