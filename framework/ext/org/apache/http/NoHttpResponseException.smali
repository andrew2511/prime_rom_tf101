.class public Lorg/apache/http/NoHttpResponseException;
.super Ljava/io/IOException;
.source "NoHttpResponseException.java"


# static fields
.field private static final serialVersionUID:J = -0x6a4a05b41a0a362eL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
