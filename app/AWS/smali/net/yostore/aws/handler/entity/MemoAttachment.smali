.class public Lnet/yostore/aws/handler/entity/MemoAttachment;
.super Ljava/lang/Object;
.source "MemoAttachment.java"


# instance fields
.field private aid:Ljava/lang/String;

.field private fid:Ljava/lang/String;

.field private media:Ljava/lang/String;

.field private memoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "aid"
    .parameter "memoId"
    .parameter "media"
    .parameter "fid"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->aid:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->memoId:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->media:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->fid:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->media:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->memoId:Ljava/lang/String;

    return-object v0
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 26
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->aid:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0
    .parameter "fid"

    .prologue
    .line 68
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->fid:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setMedia(Ljava/lang/String;)V
    .locals 0
    .parameter "media"

    .prologue
    .line 54
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->media:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setMemoId(Ljava/lang/String;)V
    .locals 0
    .parameter "memoId"

    .prologue
    .line 40
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MemoAttachment;->memoId:Ljava/lang/String;

    .line 41
    return-void
.end method
