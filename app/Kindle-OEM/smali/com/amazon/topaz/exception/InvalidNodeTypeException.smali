.class public Lcom/amazon/topaz/exception/InvalidNodeTypeException;
.super Lcom/amazon/topaz/exception/TopazException;
.source "InvalidNodeTypeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/amazon/topaz/exception/TopazException;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method
