.class public Ljava/lang/CloneNotSupportedException;
.super Ljava/lang/Exception;
.source "CloneNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x481a29f4778b29fbL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method
