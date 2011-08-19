.class public interface abstract Lcom/google/android/apps/books/common/BooksContext;
.super Ljava/lang/Object;
.source "BooksContext.java"


# virtual methods
.method public abstract getHttpClient()Lorg/apache/http/client/HttpClient;
.end method

.method public abstract getImageManager()Lcom/google/android/apps/books/common/ImageManager;
.end method

.method public abstract getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;
.end method

.method public abstract getSyncUi()Lcom/google/android/apps/books/service/SyncService$SyncUi;
.end method

.method public abstract getVolumeCoverFetchDispatcher()Lcom/google/android/apps/books/sync/FetchDispatcher;
.end method
