.class public Lnet/yostore/aws/sqlite/entity/UploadConfirm;
.super Ljava/lang/Object;
.source "UploadConfirm.java"


# instance fields
.field private up_aud_cnt:I

.field private up_cam_cnt:I

.field private up_fil_cnt:I

.field private up_not_cnt:I

.field private up_vdo_cnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_cam_cnt:I

    .line 6
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_aud_cnt:I

    .line 7
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_not_cnt:I

    .line 8
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_fil_cnt:I

    .line 9
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_vdo_cnt:I

    .line 11
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "cam"
    .parameter "aud"
    .parameter "not"
    .parameter "fil"
    .parameter "vdo"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_cam_cnt:I

    .line 6
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_aud_cnt:I

    .line 7
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_not_cnt:I

    .line 8
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_fil_cnt:I

    .line 9
    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_vdo_cnt:I

    .line 13
    iput p2, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_aud_cnt:I

    .line 14
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_cam_cnt:I

    .line 15
    iput p3, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_not_cnt:I

    .line 16
    iput p4, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_fil_cnt:I

    .line 17
    iput p5, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_vdo_cnt:I

    .line 18
    return-void
.end method


# virtual methods
.method public getUp_aud_cnt()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_aud_cnt:I

    return v0
.end method

.method public getUp_cam_cnt()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_cam_cnt:I

    return v0
.end method

.method public getUp_fil_cnt()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_fil_cnt:I

    return v0
.end method

.method public getUp_not_cnt()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_not_cnt:I

    return v0
.end method

.method public getUp_vdo_cnt()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_vdo_cnt:I

    return v0
.end method

.method public setUp_aud_cnt(I)V
    .locals 0
    .parameter "up_aud_cnt"

    .prologue
    .line 27
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_aud_cnt:I

    .line 28
    return-void
.end method

.method public setUp_cam_cnt(I)V
    .locals 0
    .parameter "up_cam_cnt"

    .prologue
    .line 21
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_cam_cnt:I

    .line 22
    return-void
.end method

.method public setUp_fil_cnt(I)V
    .locals 0
    .parameter "up_fil_cnt"

    .prologue
    .line 39
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_fil_cnt:I

    .line 40
    return-void
.end method

.method public setUp_not_cnt(I)V
    .locals 0
    .parameter "up_not_cnt"

    .prologue
    .line 33
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_not_cnt:I

    .line 34
    return-void
.end method

.method public setUp_vdo_cnt(I)V
    .locals 0
    .parameter "up_vdo_cnt"

    .prologue
    .line 45
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->up_vdo_cnt:I

    .line 46
    return-void
.end method
