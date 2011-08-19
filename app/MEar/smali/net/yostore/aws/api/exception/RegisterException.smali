.class public Lnet/yostore/aws/api/exception/RegisterException;
.super Lnet/yostore/aws/api/exception/APIException;
.source "RegisterException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/APIException;-><init>(Ljava/lang/String;)V

    .line 8
    const/16 v0, 0x46

    iput v0, p0, Lnet/yostore/aws/api/exception/RegisterException;->status:I

    .line 9
    return-void
.end method
