.class public final enum Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;
.super Ljava/lang/Enum;
.source "SafeSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/utils/SafeSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SafeSearchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

.field public static final enum MODERATE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

.field public static final enum NONE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

.field public static final enum STRICT:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->NONE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    const-string v1, "MODERATE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->MODERATE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    .line 29
    new-instance v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->STRICT:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    sget-object v1, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->NONE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->MODERATE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->STRICT:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->$VALUES:[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->$VALUES:[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    return-object v0
.end method
