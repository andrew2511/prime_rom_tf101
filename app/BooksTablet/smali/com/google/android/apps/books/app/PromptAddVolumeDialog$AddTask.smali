.class Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;
.super Landroid/os/AsyncTask;
.source "PromptAddVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/PromptAddVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddTask"
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
.field private final mAccount:Landroid/accounts/Account;

.field private mFetchServiceFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Future;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, fetchService:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/android/apps/books/service/ContentFetchService;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->mResolver:Landroid/content/ContentResolver;

    .line 85
    iput-object p2, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->mFetchServiceFuture:Ljava/util/concurrent/Future;

    .line 86
    iput-object p3, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->mAccount:Landroid/accounts/Account;

    .line 87
    iput-object p4, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->mVolumeId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private static handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    const-string v2, "AddVolumeDialog"

    .line 107
    const-string v0, "AddVolumeDialog"

    const/4 v0, 0x6

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "AddVolumeDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred adding volume to collection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    iget-object v1, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;-><init>(Landroid/content/ContentResolver;)V

    .line 94
    .local v0, adder:Lcom/google/android/apps/books/model/CollectionVolumesEditor;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->mAccount:Landroid/accounts/Account;

    const-wide/16 v2, 0x7

    iget-object v4, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->mVolumeId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->mFetchServiceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/books/service/FetchService;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->synchronousAdd(Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/service/FetchService;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 96
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 97
    .local v6, e:Ljava/io/IOException;
    invoke-static {v6}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 98
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 99
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-static {v6}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 100
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    move-object v6, v1

    .line 101
    .local v6, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {v6}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
