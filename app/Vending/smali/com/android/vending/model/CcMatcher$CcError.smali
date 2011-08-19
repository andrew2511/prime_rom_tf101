.class public final enum Lcom/android/vending/model/CcMatcher$CcError;
.super Ljava/lang/Enum;
.source "CcMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/CcMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CcError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/CcMatcher$CcError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum DATE_CANNOT_BE_IN_FUTURE:Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum DATE_CANNOT_BE_IN_PAST:Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum INVALID_DATA:Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum INVALID_MONTH:Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum INVALID_NUMBER_FORMAT:Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum INVALID_YEAR:Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum OUT_OF_LOWER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum OUT_OF_UPPER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

.field public static final enum REQUIRED:Lcom/android/vending/model/CcMatcher$CcError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "REQUIRED"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->REQUIRED:Lcom/android/vending/model/CcMatcher$CcError;

    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "DATE_CANNOT_BE_IN_FUTURE"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->DATE_CANNOT_BE_IN_FUTURE:Lcom/android/vending/model/CcMatcher$CcError;

    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "DATE_CANNOT_BE_IN_PAST"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->DATE_CANNOT_BE_IN_PAST:Lcom/android/vending/model/CcMatcher$CcError;

    .line 49
    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "OUT_OF_LOWER_RANGE"

    invoke-direct {v0, v1, v6}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_LOWER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "OUT_OF_UPPER_RANGE"

    invoke-direct {v0, v1, v7}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_UPPER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "INVALID_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_DATA:Lcom/android/vending/model/CcMatcher$CcError;

    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "INVALID_NUMBER_FORMAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_NUMBER_FORMAT:Lcom/android/vending/model/CcMatcher$CcError;

    .line 50
    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "INVALID_MONTH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_MONTH:Lcom/android/vending/model/CcMatcher$CcError;

    new-instance v0, Lcom/android/vending/model/CcMatcher$CcError;

    const-string v1, "INVALID_YEAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/CcMatcher$CcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_YEAR:Lcom/android/vending/model/CcMatcher$CcError;

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/vending/model/CcMatcher$CcError;

    sget-object v1, Lcom/android/vending/model/CcMatcher$CcError;->REQUIRED:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/CcMatcher$CcError;->DATE_CANNOT_BE_IN_FUTURE:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/CcMatcher$CcError;->DATE_CANNOT_BE_IN_PAST:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_LOWER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_UPPER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_DATA:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_NUMBER_FORMAT:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_MONTH:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_YEAR:Lcom/android/vending/model/CcMatcher$CcError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/model/CcMatcher$CcError;->$VALUES:[Lcom/android/vending/model/CcMatcher$CcError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/CcMatcher$CcError;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/android/vending/model/CcMatcher$CcError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/CcMatcher$CcError;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/CcMatcher$CcError;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->$VALUES:[Lcom/android/vending/model/CcMatcher$CcError;

    invoke-virtual {v0}, [Lcom/android/vending/model/CcMatcher$CcError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/CcMatcher$CcError;

    return-object v0
.end method
