.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
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
    name = "NetworkProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol; = null

.field public static final enum HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol; = null

.field public static final enum HTTPS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol; = null

.field public static final HTTPS_VALUE:I = 0x2

.field public static final HTTP_VALUE:I = 0x1

.field public static final enum TCP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol; = null

.field public static final TCP_VALUE:I = 0x3

.field public static final enum UNKNOWN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

.field public static final UNKNOWN_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;",
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

    .line 4368
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->UNKNOWN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 4369
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 4370
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    const-string v1, "HTTPS"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTPS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 4371
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->TCP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 4366
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->UNKNOWN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTPS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->TCP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 4397
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4407
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->value:I

    .line 4408
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4394
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    .locals 1
    .parameter

    .prologue
    .line 4383
    packed-switch p0, :pswitch_data_0

    .line 4388
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4384
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->UNKNOWN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    goto :goto_0

    .line 4385
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    goto :goto_0

    .line 4386
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTPS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    goto :goto_0

    .line 4387
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->TCP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    goto :goto_0

    .line 4383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    .locals 1
    .parameter

    .prologue
    .line 4366
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    .locals 1

    .prologue
    .line 4366
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4380
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->value:I

    return v0
.end method
