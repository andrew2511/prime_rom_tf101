.class public final enum Lcom/android/vending/model/ResponseProperties$ResultType;
.super Ljava/lang/Enum;
.source "ResponseProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/ResponseProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/ResponseProperties$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/ResponseProperties$ResultType;

.field public static final enum BAD_REQUEST:Lcom/android/vending/model/ResponseProperties$ResultType;

.field public static final enum INTERNAL_SERVICE_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

.field public static final enum NOT_MODIFIED:Lcom/android/vending/model/ResponseProperties$ResultType;

.field public static final enum OK:Lcom/android/vending/model/ResponseProperties$ResultType;

.field public static final enum USER_INPUT_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/android/vending/model/ResponseProperties$ResultType;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/ResponseProperties$ResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->OK:Lcom/android/vending/model/ResponseProperties$ResultType;

    .line 26
    new-instance v0, Lcom/android/vending/model/ResponseProperties$ResultType;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/ResponseProperties$ResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->BAD_REQUEST:Lcom/android/vending/model/ResponseProperties$ResultType;

    .line 27
    new-instance v0, Lcom/android/vending/model/ResponseProperties$ResultType;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/ResponseProperties$ResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->INTERNAL_SERVICE_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    .line 28
    new-instance v0, Lcom/android/vending/model/ResponseProperties$ResultType;

    const-string v1, "NOT_MODIFIED"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/ResponseProperties$ResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->NOT_MODIFIED:Lcom/android/vending/model/ResponseProperties$ResultType;

    .line 29
    new-instance v0, Lcom/android/vending/model/ResponseProperties$ResultType;

    const-string v1, "USER_INPUT_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/vending/model/ResponseProperties$ResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->USER_INPUT_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/vending/model/ResponseProperties$ResultType;

    sget-object v1, Lcom/android/vending/model/ResponseProperties$ResultType;->OK:Lcom/android/vending/model/ResponseProperties$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/ResponseProperties$ResultType;->BAD_REQUEST:Lcom/android/vending/model/ResponseProperties$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/ResponseProperties$ResultType;->INTERNAL_SERVICE_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/ResponseProperties$ResultType;->NOT_MODIFIED:Lcom/android/vending/model/ResponseProperties$ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/ResponseProperties$ResultType;->USER_INPUT_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->$VALUES:[Lcom/android/vending/model/ResponseProperties$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/android/vending/model/ResponseProperties$ResultType;->value:I

    .line 62
    return-void
.end method

.method public static valueOf(I)Lcom/android/vending/model/ResponseProperties$ResultType;
    .locals 2
    .parameter "value"

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown response properties result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->OK:Lcom/android/vending/model/ResponseProperties$ResultType;

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->INTERNAL_SERVICE_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->BAD_REQUEST:Lcom/android/vending/model/ResponseProperties$ResultType;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->OK:Lcom/android/vending/model/ResponseProperties$ResultType;

    goto :goto_0

    .line 48
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->NOT_MODIFIED:Lcom/android/vending/model/ResponseProperties$ResultType;

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->USER_INPUT_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/ResponseProperties$ResultType;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/android/vending/model/ResponseProperties$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/ResponseProperties$ResultType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/ResponseProperties$ResultType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/vending/model/ResponseProperties$ResultType;->$VALUES:[Lcom/android/vending/model/ResponseProperties$ResultType;

    invoke-virtual {v0}, [Lcom/android/vending/model/ResponseProperties$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/ResponseProperties$ResultType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/vending/model/ResponseProperties$ResultType;->value:I

    return v0
.end method
