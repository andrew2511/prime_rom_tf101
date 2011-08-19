.class public Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;
.super Ljava/io/FileNotFoundException;
.source "ExternalStorageUnavailableException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
