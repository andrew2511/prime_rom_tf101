.class public Ljava/io/InvalidObjectException;
.super Ljava/io/ObjectStreamException;
.source "InvalidObjectException.java"


# static fields
.field private static final serialVersionUID:J = 0x2cde8ae9921ad3dfL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
