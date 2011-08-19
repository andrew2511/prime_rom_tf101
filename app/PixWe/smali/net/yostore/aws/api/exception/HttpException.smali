.class public Lnet/yostore/aws/api/exception/HttpException;
.super Lnet/yostore/aws/api/exception/APIException;
.source "HttpException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/APIException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
