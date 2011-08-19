.class public Lorg/apache/james/mime4j/field/ParseException;
.super Lorg/apache/james/mime4j/MimeException;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method
