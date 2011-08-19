.class Lcom/newspaperdirect/pressreader/android/MyLibrary$1;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$1;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$1;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$1;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$1;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-static {v2, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$6(Lcom/newspaperdirect/pressreader/android/MyLibrary;Landroid/widget/Button;)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 119
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$1;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->sortList(I)V

    .line 120
    return-void
.end method
