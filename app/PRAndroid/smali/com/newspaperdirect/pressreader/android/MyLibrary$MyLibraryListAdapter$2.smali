.class Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$2;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->deleteItem(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

.field private final synthetic val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 513
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    goto :goto_0
.end method
