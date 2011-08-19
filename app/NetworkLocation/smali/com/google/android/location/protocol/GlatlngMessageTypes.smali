.class public Lcom/google/android/location/protocol/GlatlngMessageTypes;
.super Ljava/lang/Object;
.source "GlatlngMessageTypes.java"


# static fields
.field public static final GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x117

    .line 22
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    .line 25
    sget-object v0, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
