.class Lcom/google/android/apps/books/widget/ScrubBar$1;
.super Ljava/lang/Object;
.source "ScrubBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/ScrubBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/ScrubBar;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/ScrubBar;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->access$000(Lcom/google/android/apps/books/widget/ScrubBar;)Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->access$000(Lcom/google/android/apps/books/widget/ScrubBar;)Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;->onScrubUndo(Lcom/google/android/apps/books/widget/ScrubBar;)V

    .line 390
    :cond_0
    return-void
.end method
