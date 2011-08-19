.class public Lnet/yostore/aws/api/entity/GetShareCodeResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "GetShareCodeResponse.java"


# instance fields
.field private _ispasswordneeded:Ljava/lang/String;

.field private _scrip:Ljava/lang/String;

.field private _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getIspasswordneeded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->_ispasswordneeded:Ljava/lang/String;

    return-object v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method public setIspasswordneeded(Ljava/lang/String;)V
    .locals 0
    .parameter "_ispasswordneeded"

    .prologue
    .line 17
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->_ispasswordneeded:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 7
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "_uri"

    .prologue
    .line 10
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->_uri:Ljava/lang/String;

    .line 11
    return-void
.end method
