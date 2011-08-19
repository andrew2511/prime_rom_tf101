.class final enum Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$3;
.super Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1377
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;-><init>(Ljava/lang/String;ILcom/google/android/apps/books/provider/BooksContract$1;)V

    return-void
.end method


# virtual methods
.method public shouldHonorTransition(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;)Z
    .locals 1
    .parameter "newAccess"

    .prologue
    .line 1388
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$3;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
