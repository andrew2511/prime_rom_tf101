.class public Ljava/lang/LinkageError;
.super Ljava/lang/Error;
.source "LinkageError.java"


# static fields
.field private static final serialVersionUID:J = 0x31ad4b5534a84abaL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
