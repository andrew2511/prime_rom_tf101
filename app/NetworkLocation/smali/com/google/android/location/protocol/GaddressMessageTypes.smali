.class public Lcom/google/android/location/protocol/GaddressMessageTypes;
.super Ljava/lang/Object;
.source "GaddressMessageTypes.java"


# static fields
.field public static final GADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GADDRESS_COMPONENT:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/GaddressMessageTypes;->GADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 23
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/GaddressMessageTypes;->GADDRESS_COMPONENT:Lcom/google/common/io/protocol/ProtoBufType;

    .line 26
    sget-object v0, Lcom/google/android/location/protocol/GaddressMessageTypes;->GADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x419

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/location/protocol/GaddressMessageTypes;->GADDRESS_COMPONENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 32
    sget-object v0, Lcom/google/android/location/protocol/GaddressMessageTypes;->GADDRESS_COMPONENT:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x119

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

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
