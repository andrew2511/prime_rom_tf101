.class public final enum Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;
.super Ljava/lang/Enum;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationProvenance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance; = null

.field public static final enum GWS_MOBILE_CLIENT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance; = null

.field public static final GWS_MOBILE_CLIENT_VALUE:I = 0x6

.field public static final enum LEGACY_MOBILE_FRONTEND_GLL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance; = null

.field public static final LEGACY_MOBILE_FRONTEND_GLL_PARAM_VALUE:I = 0x3

.field public static final enum LEGACY_MOBILE_FRONTEND_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance; = null

.field public static final LEGACY_MOBILE_FRONTEND_NEAR_PARAM_VALUE:I = 0x5

.field public static final enum MAPS_FRONTEND_IL_DEBUG_IP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance; = null

.field public static final MAPS_FRONTEND_IL_DEBUG_IP_VALUE:I = 0x4

.field public static final enum MOBILE_FE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance; = null

.field public static final MOBILE_FE_VALUE:I = 0x2

.field public static final enum TOOLBAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance; = null

.field public static final TOOLBAR_VALUE:I = 0x1

.field public static final enum UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

.field public static final UNREMARKABLE_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1025
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    const-string v1, "UNREMARKABLE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    .line 1026
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    const-string v1, "TOOLBAR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->TOOLBAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    .line 1027
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    const-string v1, "MOBILE_FE"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->MOBILE_FE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    .line 1028
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    const-string v1, "LEGACY_MOBILE_FRONTEND_GLL_PARAM"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_GLL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    .line 1029
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    const-string v1, "MAPS_FRONTEND_IL_DEBUG_IP"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->MAPS_FRONTEND_IL_DEBUG_IP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    .line 1030
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    const-string v1, "LEGACY_MOBILE_FRONTEND_NEAR_PARAM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    .line 1031
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    const-string v1, "GWS_MOBILE_CLIENT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->GWS_MOBILE_CLIENT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    .line 1023
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->TOOLBAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->MOBILE_FE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_GLL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->MAPS_FRONTEND_IL_DEBUG_IP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->GWS_MOBILE_CLIENT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    .line 1063
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 1072
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1073
    iput p4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->value:I

    .line 1074
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1060
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;
    .locals 1
    .parameter

    .prologue
    .line 1046
    packed-switch p0, :pswitch_data_0

    .line 1054
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1047
    :pswitch_0
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    goto :goto_0

    .line 1048
    :pswitch_1
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->TOOLBAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    goto :goto_0

    .line 1049
    :pswitch_2
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->MOBILE_FE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    goto :goto_0

    .line 1050
    :pswitch_3
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_GLL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    goto :goto_0

    .line 1051
    :pswitch_4
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->MAPS_FRONTEND_IL_DEBUG_IP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    goto :goto_0

    .line 1052
    :pswitch_5
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    goto :goto_0

    .line 1053
    :pswitch_6
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->GWS_MOBILE_CLIENT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    goto :goto_0

    .line 1046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;
    .locals 1
    .parameter

    .prologue
    .line 1023
    const-class v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;
    .locals 1

    .prologue
    .line 1023
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    invoke-virtual {v0}, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;->value:I

    return v0
.end method
