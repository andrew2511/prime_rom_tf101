.class public final enum Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionTargetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType; = null

.field public static final enum FRIEND:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType; = null

.field public static final FRIEND_VALUE:I = 0x2

.field public static final enum OTHER_ORKUT_USER:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType; = null

.field public static final OTHER_ORKUT_USER_VALUE:I = 0x4

.field public static final enum PROXY_CONTACT:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType; = null

.field public static final PROXY_CONTACT_VALUE:I = 0x3

.field public static final enum SELF:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType; = null

.field public static final SELF_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10736
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    const-string v1, "SELF"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->SELF:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 10737
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    const-string v1, "FRIEND"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->FRIEND:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 10738
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    const-string v1, "PROXY_CONTACT"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->PROXY_CONTACT:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 10739
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    const-string v1, "OTHER_ORKUT_USER"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->OTHER_ORKUT_USER:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 10734
    new-array v0, v6, [Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->SELF:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->FRIEND:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->PROXY_CONTACT:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->OTHER_ORKUT_USER:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 10765
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 10774
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10775
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->value:I

    .line 10776
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10762
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;
    .locals 1
    .parameter

    .prologue
    .line 10751
    packed-switch p0, :pswitch_data_0

    .line 10756
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 10752
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->SELF:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    goto :goto_0

    .line 10753
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->FRIEND:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    goto :goto_0

    .line 10754
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->PROXY_CONTACT:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    goto :goto_0

    .line 10755
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->OTHER_ORKUT_USER:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    goto :goto_0

    .line 10751
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;
    .locals 1
    .parameter

    .prologue
    .line 10734
    const-class v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;
    .locals 1

    .prologue
    .line 10734
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 10748
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->value:I

    return v0
.end method
