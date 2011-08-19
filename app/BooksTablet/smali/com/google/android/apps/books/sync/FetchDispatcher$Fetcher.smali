.class interface abstract Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;
.super Ljava/lang/Object;
.source "FetchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/sync/FetchDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Fetcher"
.end annotation


# virtual methods
.method public abstract fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isAlreadyFetched(Landroid/net/Uri;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
