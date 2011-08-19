.class public Lorg/apache/xml/dtm/DTMDOMException;
.super Lorg/w3c/dom/DOMException;
.source "DTMDOMException.java"


# static fields
.field static final serialVersionUID:J = 0x1a4eb7830a6ed6deL


# direct methods
.method public constructor <init>(S)V
    .registers 3
    .parameter "code"

    .prologue
    .line 52
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .registers 3
    .parameter "code"
    .parameter "message"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    .line 42
    return-void
.end method
