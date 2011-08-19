.class public Lcom/google/android/location/protocol/GwifiMessageTypes;
.super Ljava/lang/Object;
.source "GwifiMessageTypes.java"


# static fields
.field public static final GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/16 v4, 0x215

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/GwifiMessageTypes;->GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 23
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/GwifiMessageTypes;->GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 26
    sget-object v0, Lcom/google/android/location/protocol/GwifiMessageTypes;->GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x119

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 38
    sget-object v0, Lcom/google/android/location/protocol/GwifiMessageTypes;->GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/location/protocol/GwifiMessageTypes;->GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
