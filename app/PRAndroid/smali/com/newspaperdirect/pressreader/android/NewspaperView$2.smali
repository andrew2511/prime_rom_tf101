.class Lcom/newspaperdirect/pressreader/android/NewspaperView$2;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewspaperView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutLoaded()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/NewspaperView;Landroid/app/AlertDialog;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$4(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->setResult(I)V

    .line 139
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->finish()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$5(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    .line 143
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$4(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$2;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$7(Lcom/newspaperdirect/pressreader/android/NewspaperView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPage(I)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    goto :goto_0
.end method
