.class public final enum Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailureReasonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType; = null

.field public static final enum FAILED_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType; = null

.field public static final FAILED_AUTHENTICATION_VALUE:I = 0x4

.field public static final enum FAILED_FILE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType; = null

.field public static final FAILED_FILE_VALUE:I = 0x1

.field public static final enum FAILED_NETWORK:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType; = null

.field public static final FAILED_NETWORK_VALUE:I = 0x3

.field public static final enum FAILED_RESPONSE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType; = null

.field public static final FAILED_RESPONSE_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;",
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

    .line 1959
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    const-string v1, "FAILED_FILE"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_FILE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 1960
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    const-string v1, "FAILED_RESPONSE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_RESPONSE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 1961
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    const-string v1, "FAILED_NETWORK"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_NETWORK:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 1962
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    const-string v1, "FAILED_AUTHENTICATION"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 1957
    new-array v0, v6, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_FILE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_RESPONSE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_NETWORK:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    .line 1988
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1997
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1998
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->value:I

    .line 1999
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1985
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;
    .locals 1
    .parameter

    .prologue
    .line 1974
    packed-switch p0, :pswitch_data_0

    .line 1979
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1975
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_FILE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    goto :goto_0

    .line 1976
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_RESPONSE:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    goto :goto_0

    .line 1977
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_NETWORK:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    goto :goto_0

    .line 1978
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->FAILED_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    goto :goto_0

    .line 1974
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;
    .locals 1
    .parameter

    .prologue
    .line 1957
    const-class v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;
    .locals 1

    .prologue
    .line 1957
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1971
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$FailureReasonType;->value:I

    return v0
.end method