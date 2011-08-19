.class public Ljava/io/EOFException;
.super Ljava/io/IOException;
.source "EOFException.java"


# static fields
.field private static final serialVersionUID:J = 0x5949a7f76b53ec41L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
