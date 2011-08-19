.class final Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;
.super Landroid/os/AsyncTask;
.source "CollectionVolumesEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/CollectionVolumesEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
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

.field private final mCollectionId:J

.field private final mFetchService:Lcom/google/android/apps/books/service/FetchService;

.field private final mVolumeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/model/CollectionVolumesEditor;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/model/CollectionVolumesEditor;Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/service/FetchService;)V
    .locals 0
    .parameter
    .parameter "account"
    .parameter "collectionId"
    .parameter "volumeId"
    .parameter "fetchService"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->this$0:Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mAccount:Landroid/accounts/Account;

    .line 115
    iput-wide p3, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mCollectionId:J

    .line 116
    iput-object p5, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mVolumeId:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mFetchService:Lcom/google/android/apps/books/service/FetchService;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/model/CollectionVolumesEditor;Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/service/FetchService;Lcom/google/android/apps/books/model/CollectionVolumesEditor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;-><init>(Lcom/google/android/apps/books/model/CollectionVolumesEditor;Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/service/FetchService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "voids"

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->this$0:Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    iget-object v1, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mAccount:Landroid/accounts/Account;

    iget-wide v2, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mCollectionId:J

    iget-object v4, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mVolumeId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mFetchService:Lcom/google/android/apps/books/service/FetchService;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->synchronousAdd(Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/service/FetchService;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 125
    .local v6, e:Ljava/io/IOException;
    const-string v0, "CollectionVolumesEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to collection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->mCollectionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
