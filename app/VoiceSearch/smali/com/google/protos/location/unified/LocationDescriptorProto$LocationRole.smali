.class public final enum Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
.super Ljava/lang/Enum;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final enum CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final CURRENT_LOCATION_VALUE:I = 0x1

.field public static final enum DEFAULT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final DEFAULT_LOCATION_VALUE:I = 0x2

.field public static final enum HISTORICAL_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final HISTORICAL_LOCATION_VALUE:I = 0x6

.field public static final enum HISTORICAL_QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final HISTORICAL_QUERY_VALUE:I = 0x5

.field public static final enum QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final QUERY_VALUE:I = 0x3

.field public static final enum UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final UNKNOWN_ROLE_VALUE:I = 0x0

.field public static final enum USER_SPECIFIED_FOR_REQUEST:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final USER_SPECIFIED_FOR_REQUEST_VALUE:I = 0x4

.field public static final enum VIEWPORT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final VIEWPORT_VALUE:I = 0x7

.field public static final enum WILDCARD_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole; = null

.field public static final WILDCARD_ROLE_VALUE:I = -0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;",
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

    .line 13
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "UNKNOWN_ROLE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 14
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "CURRENT_LOCATION"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 15
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "DEFAULT_LOCATION"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->DEFAULT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 16
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 17
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "USER_SPECIFIED_FOR_REQUEST"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->USER_SPECIFIED_FOR_REQUEST:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 18
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "HISTORICAL_QUERY"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->HISTORICAL_QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 19
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "HISTORICAL_LOCATION"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->HISTORICAL_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 20
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "VIEWPORT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->VIEWPORT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 21
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    const-string v1, "WILDCARD_ROLE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->WILDCARD_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->DEFAULT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->USER_SPECIFIED_FOR_REQUEST:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->HISTORICAL_QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->HISTORICAL_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->VIEWPORT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->WILDCARD_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 57
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->value:I

    .line 68
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 1
    .parameter

    .prologue
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->DEFAULT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 42
    :pswitch_3
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 43
    :pswitch_4
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->USER_SPECIFIED_FOR_REQUEST:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 44
    :pswitch_5
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->HISTORICAL_QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 45
    :pswitch_6
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->HISTORICAL_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 46
    :pswitch_7
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->VIEWPORT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 47
    :pswitch_8
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->WILDCARD_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v0}, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->value:I

    return v0
.end method
