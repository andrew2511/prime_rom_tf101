.class public Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "GetChangeSeqResponse.java"


# instance fields
.field private _changeseq:Ljava/lang/String;

.field private _scrip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->_changeseq:Ljava/lang/String;

    return-object v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public setChangeSeq(Ljava/lang/String;)V
    .locals 0
    .parameter "changeseq"

    .prologue
    .line 11
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->_changeseq:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 7
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->_scrip:Ljava/lang/String;

    return-void
.end method
