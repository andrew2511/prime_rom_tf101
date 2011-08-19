.class public Lcom/google/android/location/protocol/LocserverMessageTypes;
.super Ljava/lang/Object;
.source "LocserverMessageTypes.java"


# static fields
.field public static final GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOC_REPLY_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_CODES:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x41b

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x21b

    .line 23
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->RESPONSE_CODES:Lcom/google/common/io/protocol/ProtoBufType;

    .line 24
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    .line 25
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 26
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 27
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    .line 28
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 31
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    sget-object v1, Lcom/google/android/location/protocol/GcellularMessageTypes;->GCELLULAR_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v6, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/protocol/GwifiMessageTypes;->GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v7, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/protocol/GlocationMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v8, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x63

    sget-object v2, Lcom/google/android/location/protocol/GdebugprofileMessageTypes;->GDEBUG_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 43
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/location/protocol/GlocationMessageTypes;->GPLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/protocol/GlocationMessageTypes;->GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v9, v7, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/protocol/GlocationMessageTypes;->GUSER_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v8, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x101

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 55
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x217

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    sget-object v2, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/protocol/GrectangleMessageTypes;->GRECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v8, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 63
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/protocol/GlocationMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v7, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/protocol/GlocationMessageTypes;->GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v9, v8, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 71
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v9, v7, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
