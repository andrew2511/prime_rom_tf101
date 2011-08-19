.class public final enum Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BearerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType; = null

.field public static final enum MOBILE_NETWORK:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType; = null

.field public static final MOBILE_NETWORK_VALUE:I = 0x1

.field public static final enum WIFI:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType; = null

.field public static final WIFI_VALUE:I = 0x2

.field public static final enum WIMAX:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType; = null

.field public static final WIMAX_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;",
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

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 852
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    const-string v1, "MOBILE_NETWORK"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->MOBILE_NETWORK:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 853
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->WIFI:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 854
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    const-string v1, "WIMAX"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->WIMAX:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 850
    new-array v0, v5, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->MOBILE_NETWORK:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->WIFI:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->WIMAX:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 878
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 887
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 888
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->value:I

    .line 889
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
    .locals 1
    .parameter

    .prologue
    .line 865
    packed-switch p0, :pswitch_data_0

    .line 869
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 866
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->MOBILE_NETWORK:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    goto :goto_0

    .line 867
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->WIFI:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    goto :goto_0

    .line 868
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->WIMAX:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    goto :goto_0

    .line 865
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
    .locals 1
    .parameter

    .prologue
    .line 850
    const-class v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
    .locals 1

    .prologue
    .line 850
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->value:I

    return v0
.end method
