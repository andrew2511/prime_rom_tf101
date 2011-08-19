.class public Lcom/google/android/apps/books/common/NullImageFuture;
.super Ljava/lang/Object;
.source "NullImageFuture.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageFuture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
