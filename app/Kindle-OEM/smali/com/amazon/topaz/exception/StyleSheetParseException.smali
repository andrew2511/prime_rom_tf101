.class public Lcom/amazon/topaz/exception/StyleSheetParseException;
.super Lcom/amazon/topaz/exception/TopazException;
.source "StyleSheetParseException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/amazon/topaz/exception/TopazException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method
