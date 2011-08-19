.class public Ljava/io/StreamCorruptedException;
.super Ljava/io/ObjectStreamException;
.source "StreamCorruptedException.java"


# static fields
.field private static final serialVersionUID:J = 0x7cac02968639f3c2L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
