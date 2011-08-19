.class public final enum Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

.field public static final enum BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1796
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    const-string v1, "BAD_TOKEN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 1797
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->SERVER_ERROR:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 1794
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    sget-object v1, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->SERVER_ERROR:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->$VALUES:[Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 1816
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode$1;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode$1;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 1825
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1826
    iput p3, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->index:I

    .line 1827
    iput p4, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->value:I

    .line 1828
    return-void
.end method

.method public static valueOf(I)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 1804
    packed-switch p0, :pswitch_data_0

    .line 1807
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1805
    :pswitch_0
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    goto :goto_0

    .line 1806
    :pswitch_1
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->SERVER_ERROR:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    goto :goto_0

    .line 1804
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 1794
    const-class v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .locals 1

    .prologue
    .line 1794
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->$VALUES:[Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1801
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->value:I

    return v0
.end method
