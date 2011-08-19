.class Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

.field private final synthetic val$cacheDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->val$cacheDir:Ljava/io/File;

    .line 1810
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->doInBackground([Ljava/lang/Void;)[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x4

    .line 1813
    new-array v1, v5, [Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    .line 1814
    .local v1, result:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 1818
    return-object v1

    .line 1815
    :cond_0
    new-instance v2, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->access$4(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->val$cacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/io/File;)V

    aput-object v2, v1, v0

    .line 1816
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->start()V

    .line 1814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->onPostExecute([Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;)V

    return-void
.end method

.method protected onPostExecute([Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;Z)V

    .line 1823
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1825
    :goto_0
    return-void

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;)V

    goto :goto_0
.end method
