.class public Lorg/apache/harmony/security/asn1/ASN1Exception;
.super Ljava/io/IOException;
.source "ASN1Exception.java"


# static fields
.field private static final serialVersionUID:J = -0x316eb31660ab2b93L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
