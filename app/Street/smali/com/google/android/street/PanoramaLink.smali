.class public Lcom/google/android/street/PanoramaLink;
.super Ljava/lang/Object;
.source "PanoramaLink.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/street/PanoramaLink;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mDirection:I

.field public mLinkText:Ljava/lang/String;

.field public final mPanoId:Ljava/lang/String;

.field public final mRoadARGB:I

.field public final mYawDeg:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/google/android/street/PanoramaLink$1;

    invoke-direct {v0}, Lcom/google/android/street/PanoramaLink$1;-><init>()V

    sput-object v0, Lcom/google/android/street/PanoramaLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "yawDeg"
    .parameter "panoId"
    .parameter "roadARGB"
    .parameter "linkText"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    .line 47
    invoke-static {p1}, Lcom/google/android/street/StreetMath;->degreesToDirection(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/street/PanoramaLink;->mDirection:I

    .line 48
    iput-object p2, p0, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    .line 50
    iput-object p4, p0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/street/PanoramaLink;->mDirection:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V
    .locals 4
    .parameter "proto"

    .prologue
    .line 66
    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/street/PanoramaConfig;->convertYawE6(I)F

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {p1, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {p1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    const/16 v3, 0x38

    invoke-virtual {p1, v3}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/street/PanoramaLink;-><init>(FLjava/lang/String;ILjava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 114
    :goto_0
    return v2

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/street/PanoramaLink;

    move-object v1, v0

    .line 114
    .local v1, other:Lcom/google/android/street/PanoramaLink;
    iget-object v2, p0, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    iget v3, v1, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget v3, v1, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 129
    iget v0, p0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 130
    iget v0, p0, Lcom/google/android/street/PanoramaLink;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return-void
.end method
