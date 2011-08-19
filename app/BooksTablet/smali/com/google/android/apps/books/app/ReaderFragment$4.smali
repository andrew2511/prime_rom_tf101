.class Lcom/google/android/apps/books/app/ReaderFragment$4;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


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
    .line 406
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 410
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSystemUiVisibilityChange() with visibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-nez p1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 418
    .local v0, visible:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$400(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 419
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$500(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 420
    return-void

    .line 417
    .end local v0           #visible:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
