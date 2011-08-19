.class Lcom/newspaperdirect/pressreader/android/MyLibrary$6;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$6;)Lcom/newspaperdirect/pressreader/android/MyLibrary;
    .locals 1
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-direct {v0, p0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$6;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 347
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    :cond_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method
