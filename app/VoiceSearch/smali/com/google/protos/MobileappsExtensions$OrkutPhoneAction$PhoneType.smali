.class public final enum Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType; = null

.field public static final enum HOME:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType; = null

.field public static final HOME_VALUE:I = 0x2

.field public static final enum MOBILE:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType; = null

.field public static final MOBILE_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType; = null

.field public static final UNKNOWN_VALUE:I = 0x4

.field public static final enum WORK:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType; = null

.field public static final WORK_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
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

    .line 9946
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->MOBILE:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 9947
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->HOME:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 9948
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->WORK:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 9949
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->UNKNOWN:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 9944
    new-array v0, v6, [Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->MOBILE:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->HOME:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->WORK:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->UNKNOWN:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 9975
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 9984
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9985
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->value:I

    .line 9986
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9972
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    .locals 1
    .parameter

    .prologue
    .line 9961
    packed-switch p0, :pswitch_data_0

    .line 9966
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 9962
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->MOBILE:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    goto :goto_0

    .line 9963
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->HOME:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    goto :goto_0

    .line 9964
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->WORK:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    goto :goto_0

    .line 9965
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->UNKNOWN:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    goto :goto_0

    .line 9961
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    .locals 1
    .parameter

    .prologue
    .line 9944
    const-class v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    .locals 1

    .prologue
    .line 9944
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 9958
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->value:I

    return v0
.end method
