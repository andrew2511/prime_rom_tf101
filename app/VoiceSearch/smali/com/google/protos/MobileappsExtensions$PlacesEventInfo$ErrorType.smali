.class public final enum Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final enum AUTHENTICATION_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final AUTHENTICATION_ERROR_VALUE:I = 0x6

.field public static final enum GEOCODE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final GEOCODE_ERROR_VALUE:I = 0x2

.field public static final enum LOCATION_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final LOCATION_ERROR_VALUE:I = 0x5

.field public static final enum NETWORK_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final NETWORK_ERROR_VALUE:I = 0x1

.field public static final enum NO_RESULTS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final NO_RESULTS_VALUE:I = 0x0

.field public static final enum PLACE_PAGE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final PLACE_PAGE_ERROR_VALUE:I = 0x3

.field public static final enum RESULT_PARSE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final RESULT_PARSE_ERROR_VALUE:I = 0x4

.field public static final enum UNIMPLEMENTED_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType; = null

.field public static final UNIMPLEMENTED_ERROR_VALUE:I = 0x7

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;",
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

    .line 13564
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    const-string v1, "NO_RESULTS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NO_RESULTS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13565
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NETWORK_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13566
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    const-string v1, "GEOCODE_ERROR"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->GEOCODE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13567
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    const-string v1, "PLACE_PAGE_ERROR"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->PLACE_PAGE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13568
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    const-string v1, "RESULT_PARSE_ERROR"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->RESULT_PARSE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13569
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    const-string v1, "LOCATION_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->LOCATION_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13570
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    const-string v1, "AUTHENTICATION_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->AUTHENTICATION_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13571
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    const-string v1, "UNIMPLEMENTED_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->UNIMPLEMENTED_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13562
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NO_RESULTS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NETWORK_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->GEOCODE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->PLACE_PAGE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->RESULT_PARSE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->LOCATION_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->AUTHENTICATION_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->UNIMPLEMENTED_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13605
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 13614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13615
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->value:I

    .line 13616
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13602
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;
    .locals 1
    .parameter

    .prologue
    .line 13587
    packed-switch p0, :pswitch_data_0

    .line 13596
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13588
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NO_RESULTS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto :goto_0

    .line 13589
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NETWORK_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto :goto_0

    .line 13590
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->GEOCODE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto :goto_0

    .line 13591
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->PLACE_PAGE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto :goto_0

    .line 13592
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->RESULT_PARSE_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto :goto_0

    .line 13593
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->LOCATION_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto :goto_0

    .line 13594
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->AUTHENTICATION_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto :goto_0

    .line 13595
    :pswitch_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->UNIMPLEMENTED_ERROR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto :goto_0

    .line 13587
    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;
    .locals 1
    .parameter

    .prologue
    .line 13562
    const-class v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;
    .locals 1

    .prologue
    .line 13562
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 13584
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->value:I

    return v0
.end method
