.class final enum Lcom/google/android/youtube/core/L$Type;
.super Ljava/lang/Enum;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/L$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/L$Type;

.field public static final enum DEBUG:Lcom/google/android/youtube/core/L$Type;

.field public static final enum ERROR:Lcom/google/android/youtube/core/L$Type;

.field public static final enum INFO:Lcom/google/android/youtube/core/L$Type;

.field public static final enum VERBOSE:Lcom/google/android/youtube/core/L$Type;

.field public static final enum WARNING:Lcom/google/android/youtube/core/L$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/google/android/youtube/core/L$Type;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/L$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    .line 52
    new-instance v0, Lcom/google/android/youtube/core/L$Type;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/L$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    .line 53
    new-instance v0, Lcom/google/android/youtube/core/L$Type;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/L$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/L$Type;->INFO:Lcom/google/android/youtube/core/L$Type;

    .line 54
    new-instance v0, Lcom/google/android/youtube/core/L$Type;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/L$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/L$Type;->DEBUG:Lcom/google/android/youtube/core/L$Type;

    .line 55
    new-instance v0, Lcom/google/android/youtube/core/L$Type;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/L$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/L$Type;->VERBOSE:Lcom/google/android/youtube/core/L$Type;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/core/L$Type;

    sget-object v1, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/L$Type;->INFO:Lcom/google/android/youtube/core/L$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/L$Type;->DEBUG:Lcom/google/android/youtube/core/L$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/L$Type;->VERBOSE:Lcom/google/android/youtube/core/L$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/L$Type;->$VALUES:[Lcom/google/android/youtube/core/L$Type;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/L$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/L$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/L$Type;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->$VALUES:[Lcom/google/android/youtube/core/L$Type;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/L$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/L$Type;

    return-object v0
.end method
