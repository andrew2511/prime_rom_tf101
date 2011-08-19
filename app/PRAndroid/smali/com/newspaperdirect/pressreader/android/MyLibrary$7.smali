.class Lcom/newspaperdirect/pressreader/android/MyLibrary$7;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;->showConsistencyCheckFailedDialog(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

.field private final synthetic val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$7;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$7;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$7;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$7;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$7;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->deleteItem(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 360
    :cond_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    goto :goto_0
.end method
