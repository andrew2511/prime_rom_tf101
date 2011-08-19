.class Lnet/yostore/aws/handler/entity/MediaInfoBean$1;
.super Ljava/lang/Object;
.source "MediaInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/handler/entity/MediaInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean$1;->createFromParcel(Landroid/os/Parcel;)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .locals 1
    .parameter "in"

    .prologue
    .line 48
    new-instance v0, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v0, p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean$1;->newArray(I)[Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .locals 1
    .parameter "size"

    .prologue
    .line 52
    new-array v0, p1, [Lnet/yostore/aws/handler/entity/MediaInfoBean;

    return-object v0
.end method
