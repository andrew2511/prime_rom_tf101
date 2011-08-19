.class public final enum Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
.super Ljava/lang/Enum;
.source "VdmFumoUpdateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum AUTH_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum BAD_URL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum DL_SERVER_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum DL_SERVER_UNAVAILABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum DOWNLOAD_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum NETWORK:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum NOT_ACCEPTABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum NOT_IMPLEMENTED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum OUT_OF_MEMORY_FOR_UPDATE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum PACKAGE_MISMATCH:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum REQUEST_TIMEOUT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum SIGNATURE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum UNDEFINED_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum UPDATE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum USER_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;


# instance fields
.field private mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "SUCCESSFUL"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v4, v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "CLIENT_ERROR"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v5, v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "DOWNLOAD_CANCELED"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v6, v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "USER_CANCELED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->USER_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "FW_UP_CORRUPT"

    const/16 v2, 0x192

    invoke-direct {v0, v1, v8, v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 38
    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "PACKAGE_MISMATCH"

    const/4 v2, 0x5

    const/16 v3, 0x193

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->PACKAGE_MISMATCH:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "SIGNATURE_FAILED"

    const/4 v2, 0x6

    const/16 v3, 0x194

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SIGNATURE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "NOT_ACCEPTABLE"

    const/4 v2, 0x7

    const/16 v3, 0x195

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_ACCEPTABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "AUTH_FAILED"

    const/16 v2, 0x8

    const/16 v3, 0x196

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->AUTH_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 39
    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "REQUEST_TIMEOUT"

    const/16 v2, 0x9

    const/16 v3, 0x197

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->REQUEST_TIMEOUT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0xa

    const/16 v3, 0x198

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_IMPLEMENTED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "UNDEFINED_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0x199

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UNDEFINED_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "UPDATE_FAILED"

    const/16 v2, 0xc

    const/16 v3, 0x19a

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UPDATE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 40
    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "BAD_URL"

    const/16 v2, 0xd

    const/16 v3, 0x19b

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->BAD_URL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "DL_SERVER_UNAVAILABLE"

    const/16 v2, 0xe

    const/16 v3, 0x19c

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_UNAVAILABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "DL_SERVER_ERROR"

    const/16 v2, 0xf

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "OUT_OF_MEMORY_FOR_DOWNLOAD"

    const/16 v2, 0x10

    const/16 v3, 0x1f5

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 41
    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "OUT_OF_MEMORY_FOR_UPDATE"

    const/16 v2, 0x11

    const/16 v3, 0x1f6

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "NETWORK"

    const/16 v2, 0x12

    const/16 v3, 0x1f7

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NETWORK:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->USER_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->PACKAGE_MISMATCH:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SIGNATURE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_ACCEPTABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->AUTH_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->REQUEST_TIMEOUT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_IMPLEMENTED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UNDEFINED_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UPDATE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->BAD_URL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_UNAVAILABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NETWORK:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->$VALUES:[Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->mResultCode:I

    .line 47
    return-void
.end method

.method public static getfumoResult(I)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 7
    .parameter "result"

    .prologue
    .line 54
    invoke-static {}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->values()[Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 55
    .local v3, rc:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->getRsltCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 56
    const-string v4, "VdmFumoUpdateResult"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 60
    .end local v3           #rc:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :goto_1
    return-object v4

    .line 54
    .restart local v3       #rc:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v3           #rc:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->$VALUES:[Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getRsltCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->mResultCode:I

    return v0
.end method
