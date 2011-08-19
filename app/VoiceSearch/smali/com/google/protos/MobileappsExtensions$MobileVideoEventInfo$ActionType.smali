.class public final enum Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;
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
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final enum HEAT_MAP:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final HEAT_MAP_VALUE:I = 0x14

.field public static final enum INVOCATION_ERROR:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final INVOCATION_ERROR_VALUE:I = 0x11

.field public static final enum INVOCATION_REGISTRATION_ERROR:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final INVOCATION_REGISTRATION_ERROR_VALUE:I = 0x13

.field public static final enum INVOCATION_REGISTRATION_SUCCESS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final INVOCATION_REGISTRATION_SUCCESS_VALUE:I = 0x12

.field public static final enum INVOCATION_SUCCESS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final INVOCATION_SUCCESS_VALUE:I = 0x10

.field public static final enum PLAY_ENDED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final enum PLAY_ENDED_EXCEPTION:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final PLAY_ENDED_EXCEPTION_VALUE:I = 0xd

.field public static final PLAY_ENDED_VALUE:I = 0x3

.field public static final enum PLAY_RESTARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final PLAY_RESTARTED_VALUE:I = 0xc

.field public static final enum PLAY_SELECTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final PLAY_SELECTED_VALUE:I = 0x1

.field public static final enum PLAY_STARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final PLAY_STARTED_VALUE:I = 0x2

.field public static final enum PLAY_STARTUP_CANCELLED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final PLAY_STARTUP_CANCELLED_VALUE:I = 0xa

.field public static final enum PLAY_STARTUP_EXCEPTION:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final PLAY_STARTUP_EXCEPTION_VALUE:I = 0xb

.field public static final enum SHARE_TO_YT_CONTACT:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final SHARE_TO_YT_CONTACT_VALUE:I = 0xf

.field public static final enum SHARE_VIA_EMAIL:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final SHARE_VIA_EMAIL_VALUE:I = 0xe

.field public static final enum STARTUP:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final STARTUP_VALUE:I = 0x4

.field public static final enum UPLOAD_CANCELLED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final UPLOAD_CANCELLED_VALUE:I = 0x7

.field public static final enum UPLOAD_COMPLETED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final UPLOAD_COMPLETED_VALUE:I = 0x9

.field public static final enum UPLOAD_FAILED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final UPLOAD_FAILED_VALUE:I = 0x8

.field public static final enum UPLOAD_STARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final UPLOAD_STARTED_VALUE:I = 0x6

.field public static final enum USER_REQUEST_LATENCY:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType; = null

.field public static final USER_REQUEST_LATENCY_VALUE:I = 0x5

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;",
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
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 582
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "PLAY_SELECTED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_SELECTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 583
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "PLAY_STARTED"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 584
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "PLAY_ENDED"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_ENDED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 585
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "STARTUP"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->STARTUP:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 586
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "USER_REQUEST_LATENCY"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->USER_REQUEST_LATENCY:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 587
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "UPLOAD_STARTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_STARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 588
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "UPLOAD_CANCELLED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_CANCELLED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 589
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "UPLOAD_FAILED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_FAILED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 590
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "UPLOAD_COMPLETED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_COMPLETED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 591
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "PLAY_STARTUP_CANCELLED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTUP_CANCELLED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 592
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "PLAY_STARTUP_EXCEPTION"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTUP_EXCEPTION:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 593
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "PLAY_RESTARTED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_RESTARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 594
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "PLAY_ENDED_EXCEPTION"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_ENDED_EXCEPTION:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 595
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "SHARE_VIA_EMAIL"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->SHARE_VIA_EMAIL:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 596
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "SHARE_TO_YT_CONTACT"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->SHARE_TO_YT_CONTACT:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 597
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "INVOCATION_SUCCESS"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_SUCCESS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 598
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "INVOCATION_ERROR"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_ERROR:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 599
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "INVOCATION_REGISTRATION_SUCCESS"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_REGISTRATION_SUCCESS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 600
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "INVOCATION_REGISTRATION_ERROR"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_REGISTRATION_ERROR:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 601
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const-string v1, "HEAT_MAP"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->HEAT_MAP:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 580
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_SELECTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_ENDED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->STARTUP:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->USER_REQUEST_LATENCY:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_STARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_CANCELLED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_FAILED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_COMPLETED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTUP_CANCELLED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTUP_EXCEPTION:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_RESTARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_ENDED_EXCEPTION:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->SHARE_VIA_EMAIL:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->SHARE_TO_YT_CONTACT:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_SUCCESS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_ERROR:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_REGISTRATION_SUCCESS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_REGISTRATION_ERROR:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->HEAT_MAP:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 659
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 669
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->value:I

    .line 670
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;
    .locals 1
    .parameter

    .prologue
    .line 629
    packed-switch p0, :pswitch_data_0

    .line 650
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 630
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_SELECTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 631
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 632
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_ENDED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 633
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->STARTUP:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 634
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->USER_REQUEST_LATENCY:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 635
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_STARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 636
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_CANCELLED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 637
    :pswitch_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_FAILED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 638
    :pswitch_8
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->UPLOAD_COMPLETED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 639
    :pswitch_9
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTUP_CANCELLED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 640
    :pswitch_a
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_STARTUP_EXCEPTION:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 641
    :pswitch_b
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_RESTARTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 642
    :pswitch_c
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_ENDED_EXCEPTION:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 643
    :pswitch_d
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->SHARE_VIA_EMAIL:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 644
    :pswitch_e
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->SHARE_TO_YT_CONTACT:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 645
    :pswitch_f
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_SUCCESS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 646
    :pswitch_10
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_ERROR:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 647
    :pswitch_11
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_REGISTRATION_SUCCESS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 648
    :pswitch_12
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->INVOCATION_REGISTRATION_ERROR:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 649
    :pswitch_13
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->HEAT_MAP:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;
    .locals 1
    .parameter

    .prologue
    .line 580
    const-class v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->value:I

    return v0
.end method
