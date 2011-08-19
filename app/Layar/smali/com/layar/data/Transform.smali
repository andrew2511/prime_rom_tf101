.class public Lcom/layar/data/Transform;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/layar/data/Transform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public angle:F

.field public rel:Z

.field public rotAxis:Lcom/layar/core/math/Vector3f;

.field public scale:F

.field public scaleDim:Lcom/layar/core/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/layar/data/Transform$1;

    invoke-direct {v0}, Lcom/layar/data/Transform$1;-><init>()V

    sput-object v0, Lcom/layar/data/Transform;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/layar/data/Transform;->scale:F

    .line 17
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/layar/data/Transform;->scaleDim:Lcom/layar/core/math/Vector3f;

    .line 18
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v2, v2, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/layar/data/Transform;->rotAxis:Lcom/layar/core/math/Vector3f;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/layar/data/Transform;->scale:F

    .line 17
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/layar/data/Transform;->scaleDim:Lcom/layar/core/math/Vector3f;

    .line 18
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v2, v2, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/layar/data/Transform;->rotAxis:Lcom/layar/core/math/Vector3f;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/layar/data/Transform;->scale:F

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/layar/data/Transform;->angle:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/layar/data/Transform;->rel:Z

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/layar/data/Transform;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/layar/data/Transform;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/Transform;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/layar/data/Transform;

    invoke-direct {v0}, Lcom/layar/data/Transform;-><init>()V

    .line 24
    .local v0, result:Lcom/layar/data/Transform;
    const-string v1, "scale"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/layar/data/Transform;->scale:F

    .line 25
    const-string v1, "angle"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/layar/data/Transform;->angle:F

    .line 26
    const-string v1, "rel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/layar/data/Transform;->rel:Z

    .line 27
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 43
    iget v0, p0, Lcom/layar/data/Transform;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    iget v0, p0, Lcom/layar/data/Transform;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 45
    iget-boolean v0, p0, Lcom/layar/data/Transform;->rel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
