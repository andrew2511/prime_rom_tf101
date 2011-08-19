.class public final enum Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;
.super Ljava/lang/Enum;
.source "BatchMutateResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

.field public static final enum CONFLICT:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

.field public static final enum INVALID_REQUEST:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

.field public static final enum OK:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

.field public static final enum TOO_MANY_ITEMS:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->OK:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    .line 25
    new-instance v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    const-string v1, "CONFLICT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->CONFLICT:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    .line 26
    new-instance v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->INVALID_REQUEST:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    .line 27
    new-instance v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    const-string v1, "TOO_MANY_ITEMS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->TOO_MANY_ITEMS:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    sget-object v1, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->OK:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->CONFLICT:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->INVALID_REQUEST:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->TOO_MANY_ITEMS:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->$VALUES:[Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->$VALUES:[Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    return-object v0
.end method
