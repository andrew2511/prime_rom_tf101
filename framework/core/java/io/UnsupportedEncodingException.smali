.class public Ljava/io/UnsupportedEncodingException;
.super Ljava/io/IOException;
.source "UnsupportedEncodingException.java"


# static fields
.field private static final serialVersionUID:J = -0x3b5147a5b199d75eL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
