.class final Lcom/google/android/finsky/utils/ParcelableProto$1;
.super Ljava/lang/Object;
.source "ParcelableProto.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/ParcelableProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/finsky/utils/ParcelableProto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/utils/ParcelableProto;
    .locals 9
    .parameter "source"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 68
    .local v5, size:I
    new-array v3, v5, [B

    .line 69
    .local v3, payload:[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, className:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 74
    .local v1, clazz:Ljava/lang/Class;
    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/micro/MessageMicro;

    .line 77
    .local v4, proto:Lcom/google/protobuf/micro/MessageMicro;
    invoke-virtual {v4, v3}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    .line 78
    new-instance v6, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-direct {v6, v4}, Lcom/google/android/finsky/utils/ParcelableProto;-><init>(Lcom/google/protobuf/micro/MessageMicro;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 79
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v4           #proto:Lcom/google/protobuf/micro/MessageMicro;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 81
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Could not properly unmarshal %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when unmarshalling: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/ParcelableProto$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/utils/ParcelableProto;
    .locals 1
    .parameter "size"

    .prologue
    .line 89
    new-array v0, p1, [Lcom/google/android/finsky/utils/ParcelableProto;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/ParcelableProto$1;->newArray(I)[Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    return-object v0
.end method
