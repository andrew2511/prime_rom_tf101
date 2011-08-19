.class public final Landroid/nfc/TransceiveResult;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/TransceiveResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mResponseData:[B

.field private final mSuccess:Z

.field private final mTagLost:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Landroid/nfc/TransceiveResult$1;

    invoke-direct {v0}, Landroid/nfc/TransceiveResult$1;-><init>()V

    sput-object v0, Landroid/nfc/TransceiveResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .registers 4
    .parameter "success"
    .parameter "tagIsLost"
    .parameter "data"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Landroid/nfc/TransceiveResult;->mSuccess:Z

    .line 35
    iput-boolean p2, p0, Landroid/nfc/TransceiveResult;->mTagLost:Z

    .line 36
    iput-object p3, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getResponseData()[B
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    return-object v0
.end method

.method public isSuccessful()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mSuccess:Z

    return v0
.end method

.method public isTagLost()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mTagLost:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mSuccess:Z

    if-eqz v0, :cond_22

    move v0, v2

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mTagLost:Z

    if-eqz v0, :cond_24

    move v0, v2

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mSuccess:Z

    if-eqz v0, :cond_21

    .line 61
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 64
    :cond_21
    return-void

    :cond_22
    move v0, v1

    .line 58
    goto :goto_7

    :cond_24
    move v0, v1

    .line 59
    goto :goto_f
.end method
