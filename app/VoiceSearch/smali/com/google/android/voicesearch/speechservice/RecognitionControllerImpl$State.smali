.class final enum Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
.super Ljava/lang/Enum;
.source "RecognitionControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

.field public static final enum CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

.field public static final enum ERROR:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

.field public static final enum PAUSED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

.field public static final enum RECOGNIZED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

.field public static final enum RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

.field public static final enum STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const-string v1, "RECOGNIZING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const-string v1, "RECOGNIZED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->PAUSED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->ERROR:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->PAUSED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->ERROR:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->$VALUES:[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    .locals 1
    .parameter

    .prologue
    .line 121
    const-class v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->$VALUES:[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-virtual {v0}, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    return-object v0
.end method
