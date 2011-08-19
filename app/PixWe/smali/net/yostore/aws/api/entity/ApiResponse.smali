.class public abstract Lnet/yostore/aws/api/entity/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# instance fields
.field protected _logmessage:Ljava/lang/String;

.field protected _status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogmessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiResponse;->_logmessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lnet/yostore/aws/api/entity/ApiResponse;->_status:I

    return v0
.end method

.method public setLogmessage(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 10
    iput-object p1, p0, Lnet/yostore/aws/api/entity/ApiResponse;->_logmessage:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 6
    iput p1, p0, Lnet/yostore/aws/api/entity/ApiResponse;->_status:I

    return-void
.end method
