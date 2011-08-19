.class public Ljava/lang/UnsatisfiedLinkError;
.super Ljava/lang/LinkageError;
.source "UnsatisfiedLinkError.java"


# static fields
.field private static final serialVersionUID:J = -0x37c7936202f0ef44L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
