.class public Ljava/io/UTFDataFormatException;
.super Ljava/io/IOException;
.source "UTFDataFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x5d6c7f018d30324L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method
