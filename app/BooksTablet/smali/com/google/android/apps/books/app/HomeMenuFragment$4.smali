.class Lcom/google/android/apps/books/app/HomeMenuFragment$4;
.super Ljava/lang/Object;
.source "HomeMenuFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/HomeMenuFragment;->buildSearchView(Landroid/content/Context;)Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HomeMenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$4;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$4;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$300(Lcom/google/android/apps/books/app/HomeMenuFragment;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$4;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$500(Lcom/google/android/apps/books/app/HomeMenuFragment;)Landroid/widget/SearchView;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/books/app/HomeMenuFragment$4$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/HomeMenuFragment$4$1;-><init>(Lcom/google/android/apps/books/app/HomeMenuFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 171
    const/4 v0, 0x0

    return v0
.end method
