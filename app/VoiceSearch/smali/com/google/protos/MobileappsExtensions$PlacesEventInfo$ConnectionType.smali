.class public final enum Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;
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
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType; = null

.field public static final enum EDGE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType; = null

.field public static final EDGE_VALUE:I = 0x1

.field public static final enum GPRS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType; = null

.field public static final GPRS_VALUE:I = 0x0

.field public static final enum THREE_G:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType; = null

.field public static final THREE_G_VALUE:I = 0x2

.field public static final enum WIFI:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType; = null

.field public static final WIFI_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13623
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    const-string v1, "GPRS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->GPRS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 13624
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    const-string v1, "EDGE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->EDGE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 13625
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    const-string v1, "THREE_G"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->THREE_G:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 13626
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->WIFI:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 13621
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->GPRS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->EDGE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->THREE_G:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->WIFI:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 13652
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 13661
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13662
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->value:I

    .line 13663
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13649
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;
    .locals 1
    .parameter

    .prologue
    .line 13638
    packed-switch p0, :pswitch_data_0

    .line 13643
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13639
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->GPRS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    goto :goto_0

    .line 13640
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->EDGE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    goto :goto_0

    .line 13641
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->THREE_G:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    goto :goto_0

    .line 13642
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->WIFI:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    goto :goto_0

    .line 13638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;
    .locals 1
    .parameter

    .prologue
    .line 13621
    const-class v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;
    .locals 1

    .prologue
    .line 13621
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 13635
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->value:I

    return v0
.end method
