.class Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;
.super Landroid/os/AsyncTask;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetStorageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/common/FileStorageManager;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 1356
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1357
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 1358
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1352
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const-string v3, "BooksActivity"

    .line 1363
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v1}, Lcom/google/android/apps/books/common/FileStorageManager;->resetFileStorageLocation()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1364
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1365
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BooksActivity"

    const/4 v1, 0x6

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    const-string v1, "BooksActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred resetting file storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
