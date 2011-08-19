.class public Lorg/apache/james/mime4j/MimeException;
.super Ljava/lang/Exception;
.source "MimeException.java"


# static fields
.field private static final serialVersionUID:J = 0x73eb2eb2a61552feL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/MimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method
