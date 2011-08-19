.class public Ljava/io/CharConversionException;
.super Ljava/io/IOException;
.source "CharConversionException.java"


# static fields
.field private static final serialVersionUID:J = -0x78759ce22aa3ec97L


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
