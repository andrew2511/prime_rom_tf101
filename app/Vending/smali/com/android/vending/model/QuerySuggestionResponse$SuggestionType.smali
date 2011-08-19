.class public abstract enum Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
.super Ljava/lang/Enum;
.source "QuerySuggestionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/QuerySuggestionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "SuggestionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

.field public static final enum APP_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

.field public static final enum QUERY_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

.field public static final enum UNKNOWN:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType$1;

    const-string v1, "APP_SUGGESTION"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->APP_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    .line 51
    new-instance v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType$2;

    const-string v1, "QUERY_SUGGESTION"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->QUERY_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    .line 77
    new-instance v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType$3;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->UNKNOWN:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->APP_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->QUERY_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->UNKNOWN:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->$VALUES:[Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/vending/model/QuerySuggestionResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->$VALUES:[Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    invoke-virtual {v0}, [Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    return-object v0
.end method


# virtual methods
.method public abstract getMainText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
.end method

.method public abstract getSecondaryText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
.end method
