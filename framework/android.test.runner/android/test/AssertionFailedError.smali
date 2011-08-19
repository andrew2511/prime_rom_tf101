.class public Landroid/test/AssertionFailedError;
.super Ljava/lang/Error;
.source "AssertionFailedError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "errorMessage"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
