.class public Lcom/google/android/location/protocol/GfeatureMessageTypes;
.super Ljava/lang/Object;
.source "GfeatureMessageTypes.java"


# static fields
.field public static final GFEATURE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GFEATURE_TYPE:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21b

    .line 22
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/GfeatureMessageTypes;->GFEATURE_TYPE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 23
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/GfeatureMessageTypes;->GFEATURE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 26
    sget-object v0, Lcom/google/android/location/protocol/GfeatureMessageTypes;->GFEATURE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x119

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/location/protocol/GaddressMessageTypes;->GADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/location/protocol/GrectangleMessageTypes;->GRECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
