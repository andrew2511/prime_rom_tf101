.class public Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
.super Ljava/io/FileNotFoundException;
.source "ExternalStorageInconsistentException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method
