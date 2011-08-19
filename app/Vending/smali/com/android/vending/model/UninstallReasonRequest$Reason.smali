.class public final enum Lcom/android/vending/model/UninstallReasonRequest$Reason;
.super Ljava/lang/Enum;
.source "UninstallReasonRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/UninstallReasonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/UninstallReasonRequest$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/UninstallReasonRequest$Reason;

.field public static final enum DEFECTIVE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

.field public static final enum DONT_USE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

.field public static final enum MALICIOUS:Lcom/android/vending/model/UninstallReasonRequest$Reason;

.field public static final enum NEED_STORAGE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

.field public static final enum NOT_SAY:Lcom/android/vending/model/UninstallReasonRequest$Reason;

.field private static RADIO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/vending/model/UninstallReasonRequest$Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRadioId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 20
    new-instance v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;

    const-string v5, "DONT_USE"

    const v6, 0x7f080126

    invoke-direct {v4, v5, v7, v7, v6}, Lcom/android/vending/model/UninstallReasonRequest$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;->DONT_USE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    .line 22
    new-instance v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;

    const-string v5, "NEED_STORAGE"

    const v6, 0x7f080127

    invoke-direct {v4, v5, v8, v8, v6}, Lcom/android/vending/model/UninstallReasonRequest$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;->NEED_STORAGE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    .line 24
    new-instance v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;

    const-string v5, "DEFECTIVE"

    const v6, 0x7f080128

    invoke-direct {v4, v5, v9, v9, v6}, Lcom/android/vending/model/UninstallReasonRequest$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;->DEFECTIVE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    .line 26
    new-instance v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;

    const-string v5, "NOT_SAY"

    const v6, 0x7f08012a

    invoke-direct {v4, v5, v10, v10, v6}, Lcom/android/vending/model/UninstallReasonRequest$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;->NOT_SAY:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    .line 28
    new-instance v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;

    const-string v5, "MALICIOUS"

    const v6, 0x7f080129

    invoke-direct {v4, v5, v11, v11, v6}, Lcom/android/vending/model/UninstallReasonRequest$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;->MALICIOUS:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    .line 19
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/android/vending/model/UninstallReasonRequest$Reason;

    sget-object v5, Lcom/android/vending/model/UninstallReasonRequest$Reason;->DONT_USE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/vending/model/UninstallReasonRequest$Reason;->NEED_STORAGE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    aput-object v5, v4, v8

    sget-object v5, Lcom/android/vending/model/UninstallReasonRequest$Reason;->DEFECTIVE:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    aput-object v5, v4, v9

    sget-object v5, Lcom/android/vending/model/UninstallReasonRequest$Reason;->NOT_SAY:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/vending/model/UninstallReasonRequest$Reason;->MALICIOUS:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    aput-object v5, v4, v11

    sput-object v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;->$VALUES:[Lcom/android/vending/model/UninstallReasonRequest$Reason;

    .line 31
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;->RADIO_MAP:Ljava/util/Map;

    .line 50
    invoke-static {}, Lcom/android/vending/model/UninstallReasonRequest$Reason;->values()[Lcom/android/vending/model/UninstallReasonRequest$Reason;

    move-result-object v0

    .local v0, arr$:[Lcom/android/vending/model/UninstallReasonRequest$Reason;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 51
    .local v3, reason:Lcom/android/vending/model/UninstallReasonRequest$Reason;
    sget-object v4, Lcom/android/vending/model/UninstallReasonRequest$Reason;->RADIO_MAP:Ljava/util/Map;

    iget v5, v3, Lcom/android/vending/model/UninstallReasonRequest$Reason;->mRadioId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v3           #reason:Lcom/android/vending/model/UninstallReasonRequest$Reason;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .parameter "flagStringResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/android/vending/model/UninstallReasonRequest$Reason;->mValue:I

    .line 46
    iput p4, p0, Lcom/android/vending/model/UninstallReasonRequest$Reason;->mRadioId:I

    .line 47
    return-void
.end method

.method public static forRadioId(I)Lcom/android/vending/model/UninstallReasonRequest$Reason;
    .locals 2
    .parameter "radioButtonId"

    .prologue
    .line 37
    sget-object v0, Lcom/android/vending/model/UninstallReasonRequest$Reason;->RADIO_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/UninstallReasonRequest$Reason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/UninstallReasonRequest$Reason;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/android/vending/model/UninstallReasonRequest$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/UninstallReasonRequest$Reason;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/UninstallReasonRequest$Reason;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/vending/model/UninstallReasonRequest$Reason;->$VALUES:[Lcom/android/vending/model/UninstallReasonRequest$Reason;

    invoke-virtual {v0}, [Lcom/android/vending/model/UninstallReasonRequest$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/UninstallReasonRequest$Reason;

    return-object v0
.end method


# virtual methods
.method public getRpcId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/vending/model/UninstallReasonRequest$Reason;->mValue:I

    return v0
.end method
