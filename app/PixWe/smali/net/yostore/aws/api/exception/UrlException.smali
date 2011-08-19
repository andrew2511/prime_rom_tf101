.class public Lnet/yostore/aws/api/exception/UrlException;
.super Lnet/yostore/aws/api/exception/APIException;
.source "UrlException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/APIException;-><init>(Ljava/lang/String;)V

    .line 8
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/api/exception/UrlException;->status:I

    .line 9
    return-void
.end method
