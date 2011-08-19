.class public final enum Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;
.super Ljava/lang/Enum;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final enum CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final CURRENT_LOCATION_VALUE:I = 0x1

.field public static final enum DEFAULT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final DEFAULT_LOCATION_VALUE:I = 0x2

.field public static final enum HISTORICAL_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final HISTORICAL_LOCATION_VALUE:I = 0x6

.field public static final enum HISTORICAL_QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final HISTORICAL_QUERY_VALUE:I = 0x5

.field public static final enum QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final QUERY_VALUE:I = 0x3

.field public static final enum UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final UNKNOWN_ROLE_VALUE:I = 0x0

.field public static final enum USER_SPECIFIED_FOR_REQUEST:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final USER_SPECIFIED_FOR_REQUEST_VALUE:I = 0x4

.field public static final enum VIEWPORT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final VIEWPORT_VALUE:I = 0x7

.field public static final enum WILDCARD_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole; = null

.field public static final WILDCARD_ROLE_VALUE:I = -0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;",
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

    .line 342
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "UNKNOWN_ROLE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 343
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "CURRENT_LOCATION"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 344
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "DEFAULT_LOCATION"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->DEFAULT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 345
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 346
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "USER_SPECIFIED_FOR_REQUEST"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->USER_SPECIFIED_FOR_REQUEST:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 347
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "HISTORICAL_QUERY"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->HISTORICAL_QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 348
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "HISTORICAL_LOCATION"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->HISTORICAL_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 349
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "VIEWPORT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->VIEWPORT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 350
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    const-string v1, "WILDCARD_ROLE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->WILDCARD_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 340
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->DEFAULT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->USER_SPECIFIED_FOR_REQUEST:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->HISTORICAL_QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->HISTORICAL_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->VIEWPORT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->WILDCARD_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    .line 386
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 396
    iput p4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->value:I

    .line 397
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;
    .locals 1
    .parameter

    .prologue
    .line 367
    packed-switch p0, :pswitch_data_0

    .line 377
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 368
    :pswitch_0
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 369
    :pswitch_1
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 370
    :pswitch_2
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->DEFAULT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 371
    :pswitch_3
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 372
    :pswitch_4
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->USER_SPECIFIED_FOR_REQUEST:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 373
    :pswitch_5
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->HISTORICAL_QUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 374
    :pswitch_6
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->HISTORICAL_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 375
    :pswitch_7
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->VIEWPORT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 376
    :pswitch_8
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->WILDCARD_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    goto :goto_0

    .line 367
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;
    .locals 1
    .parameter

    .prologue
    .line 340
    const-class v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    invoke-virtual {v0}, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;->value:I

    return v0
.end method
