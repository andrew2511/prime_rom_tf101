.class public Lorg/apache/http/MalformedChunkCodingException;
.super Ljava/io/IOException;
.source "MalformedChunkCodingException.java"


# static fields
.field private static final serialVersionUID:J = 0x1df4bf1ba9ac9ddcL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
