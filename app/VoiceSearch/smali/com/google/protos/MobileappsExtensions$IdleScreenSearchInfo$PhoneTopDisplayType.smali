.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneTopDisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType; = null

.field public static final enum SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType; = null

.field public static final SEARCH_VALUE:I = 0x2

.field public static final enum SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType; = null

.field public static final SUGGESTION_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4095
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    const-string v1, "SUGGESTION"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 4096
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 4093
    new-array v0, v4, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 4118
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4128
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->value:I

    .line 4129
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4115
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    .locals 1
    .parameter

    .prologue
    .line 4106
    packed-switch p0, :pswitch_data_0

    .line 4109
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4107
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    goto :goto_0

    .line 4108
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    goto :goto_0

    .line 4106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    .locals 1
    .parameter

    .prologue
    .line 4093
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    .locals 1

    .prologue
    .line 4093
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4103
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->value:I

    return v0
.end method
