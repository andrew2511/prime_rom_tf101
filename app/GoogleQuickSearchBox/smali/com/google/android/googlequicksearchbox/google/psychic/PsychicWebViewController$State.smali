.class final enum Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;
.super Ljava/lang/Enum;
.source "PsychicWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

.field public static final enum LOADING_PSYCHIC_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

.field public static final enum NO_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

.field public static final enum NO_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

.field public static final enum PSYCHIC_ACTIVE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

.field public static final enum PSYCHIC_ACTIVE_RESULTS:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

.field public static final enum WAIT_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    const-string v1, "NO_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    .line 101
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    const-string v1, "LOADING_PSYCHIC_PAGE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->LOADING_PSYCHIC_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    .line 116
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    const-string v1, "WAIT_PSYCHIC_API"

    invoke-direct {v0, v1, v5}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->WAIT_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    .line 122
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    const-string v1, "NO_PSYCHIC_API"

    invoke-direct {v0, v1, v6}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    .line 133
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    const-string v1, "PSYCHIC_ACTIVE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    .line 146
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    const-string v1, "PSYCHIC_ACTIVE_RESULTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE_RESULTS:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->LOADING_PSYCHIC_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->WAIT_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE_RESULTS:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->$VALUES:[Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;
    .locals 1
    .parameter

    .prologue
    .line 89
    const-class v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->$VALUES:[Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-virtual {v0}, [Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    return-object v0
.end method
