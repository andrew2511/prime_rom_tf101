.class Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1318
    .local p0, this:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;,"Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1318
    .local p0, this:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;,"Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 1321
    .local p0, this:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;,"Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "throwable"

    .prologue
    .line 1326
    .local p0, this:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;,"Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture<TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
