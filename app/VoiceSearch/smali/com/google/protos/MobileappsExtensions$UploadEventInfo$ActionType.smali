.class public final enum Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
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
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType; = null

.field public static final enum UPLOAD_CANCELED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType; = null

.field public static final UPLOAD_CANCELED_VALUE:I = 0x3

.field public static final enum UPLOAD_COMPLETED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType; = null

.field public static final UPLOAD_COMPLETED_VALUE:I = 0x4

.field public static final enum UPLOAD_FAILED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType; = null

.field public static final UPLOAD_FAILED_VALUE:I = 0x5

.field public static final enum UPLOAD_QUEUED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType; = null

.field public static final UPLOAD_QUEUED_VALUE:I = 0x1

.field public static final enum UPLOAD_STARTED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType; = null

.field public static final UPLOAD_STARTED_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1865
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    const-string v1, "UPLOAD_QUEUED"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_QUEUED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 1866
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    const-string v1, "UPLOAD_STARTED"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_STARTED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 1867
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    const-string v1, "UPLOAD_CANCELED"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_CANCELED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 1868
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    const-string v1, "UPLOAD_COMPLETED"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_COMPLETED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 1869
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    const-string v1, "UPLOAD_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_FAILED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 1863
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_QUEUED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_STARTED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_CANCELED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_COMPLETED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_FAILED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    .line 1897
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1906
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1907
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->value:I

    .line 1908
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1894
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
    .locals 1
    .parameter

    .prologue
    .line 1882
    packed-switch p0, :pswitch_data_0

    .line 1888
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1883
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_QUEUED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    goto :goto_0

    .line 1884
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_STARTED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    goto :goto_0

    .line 1885
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_CANCELED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    goto :goto_0

    .line 1886
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_COMPLETED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    goto :goto_0

    .line 1887
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->UPLOAD_FAILED:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    goto :goto_0

    .line 1882
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
    .locals 1
    .parameter

    .prologue
    .line 1863
    const-class v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;
    .locals 1

    .prologue
    .line 1863
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1879
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$ActionType;->value:I

    return v0
.end method
