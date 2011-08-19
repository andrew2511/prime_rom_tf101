.class public abstract Lcom/google/android/apps/books/app/FetchReadingPositionTask;
.super Landroid/os/AsyncTask;
.source "FetchReadingPositionTask.java"


# annotations
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


# static fields
.field private static final TAG:Ljava/lang/String; = "FetchPositionTask"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mException:Ljava/lang/Exception;

.field private mLastAccess:Ljava/lang/Long;

.field private mPosition:Lcom/google/android/apps/books/common/Position;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 1
    .parameter "responseGetter"
    .parameter "volumeId"
    .parameter "account"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 48
    const-string v0, "missing volume ID"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mVolumeId:Ljava/lang/String;

    .line 49
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mAccount:Landroid/accounts/Account;

    .line 50
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    const-string v12, "FetchPositionTask"

    .line 54
    new-instance v4, Lcom/google/android/apps/books/net/ListKeyValueHandler;

    invoke-direct {v4}, Lcom/google/android/apps/books/net/ListKeyValueHandler;-><init>()V

    .line 55
    .local v4, keyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;,"Lcom/google/android/apps/books/net/KeyValueHandler<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    new-instance v0, Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-direct {v0, v8, v4}, Lcom/google/android/apps/books/net/VolumesContentHandler;-><init>(ZLcom/google/android/apps/books/net/KeyValueHandler;)V

    .line 59
    .local v0, contentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-wide/16 v8, 0x7

    iget-object v10, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mVolumeId:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/google/android/apps/books/util/OceanUris;->getCollectionVolumeUrl(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 63
    .local v3, externalUri:Landroid/net/Uri;
    :try_start_0
    iget-object v8, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mAccount:Landroid/accounts/Account;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 64
    .local v6, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/apps/books/net/HttpUtils;->parseXml(Lorg/apache/http/HttpEntity;Lorg/xml/sax/ContentHandler;)V

    .line 65
    invoke-virtual {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->getContent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 67
    .local v7, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 68
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 69
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v8, "position"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, position:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 71
    new-instance v8, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v8, v5}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mPosition:Lcom/google/android/apps/books/common/Position;

    .line 72
    const-string v8, "last_access"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mLastAccess:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v5           #position:Ljava/lang/String;
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    .end local v7           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 75
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 76
    .local v2, e:Ljava/io/IOException;
    const-string v8, "FetchPositionTask"

    const/4 v8, 0x5

    invoke-static {v12, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 77
    const-string v8, "FetchPositionTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error fetching reading position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    iput-object v2, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mException:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected abstract onFinished(Lcom/google/android/apps/books/common/Position;Ljava/lang/Long;Ljava/lang/Exception;)V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mPosition:Lcom/google/android/apps/books/common/Position;

    iget-object v1, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mLastAccess:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mException:Ljava/lang/Exception;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->onFinished(Lcom/google/android/apps/books/common/Position;Ljava/lang/Long;Ljava/lang/Exception;)V

    .line 87
    return-void
.end method
