.class public Lorg/apache/http/MethodNotSupportedException;
.super Lorg/apache/http/HttpException;
.source "MethodNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2eb42836ac8256c1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
