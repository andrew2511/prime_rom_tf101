.class public Lcom/google/android/finsky/utils/ParcelableProto;
.super Ljava/lang/Object;
.source "ParcelableProto.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/utils/ParcelableProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPayload:Lcom/google/protobuf/micro/MessageMicro;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSerialized:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/finsky/utils/ParcelableProto$1;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/ParcelableProto$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/ParcelableProto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/micro/MessageMicro;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<TT;>;"
    .local p1, payload:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    .line 21
    iput-object p1, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mPayload:Lcom/google/protobuf/micro/MessageMicro;

    .line 22
    return-void
.end method

.method public static forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ">(TT;)",
            "Lcom/google/android/finsky/utils/ParcelableProto",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, payload:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    new-instance v0, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/ParcelableProto;-><init>(Lcom/google/protobuf/micro/MessageMicro;)V

    return-object v0
.end method

.method public static getProtoFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 2
    .parameter "source"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 36
    .local v0, wrapper:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<TT;>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v1

    return-object v1
.end method

.method private serializePayload()V
    .locals 1

    .prologue
    .line 44
    .local p0, this:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mPayload:Lcom/google/protobuf/micro/MessageMicro;

    invoke-virtual {v0}, Lcom/google/protobuf/micro/MessageMicro;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mPayload:Lcom/google/protobuf/micro/MessageMicro;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/google/android/finsky/utils/ParcelableProto;->serializePayload()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mPayload:Lcom/google/protobuf/micro/MessageMicro;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
