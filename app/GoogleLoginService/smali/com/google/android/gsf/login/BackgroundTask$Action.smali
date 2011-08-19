.class public final enum Lcom/google/android/gsf/login/BackgroundTask$Action;
.super Ljava/lang/Enum;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/login/BackgroundTask$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/login/BackgroundTask$Action;

.field public static final enum CHECK_AVAIL:Lcom/google/android/gsf/login/BackgroundTask$Action;

.field public static final enum CHECK_DOMAIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

.field public static final enum CREATE_ACCOUNT:Lcom/google/android/gsf/login/BackgroundTask$Action;

.field public static final enum GET_OAUTH_REQUEST_TOKEN:Lcom/google/android/gsf/login/BackgroundTask$Action;

.field public static final enum IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

.field public static final enum LOGIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

.field public static final enum RATE_PASSWORD:Lcom/google/android/gsf/login/BackgroundTask$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/login/BackgroundTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 67
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/login/BackgroundTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->LOGIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 68
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    const-string v1, "CREATE_ACCOUNT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gsf/login/BackgroundTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->CREATE_ACCOUNT:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 69
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    const-string v1, "RATE_PASSWORD"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gsf/login/BackgroundTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->RATE_PASSWORD:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 70
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    const-string v1, "CHECK_AVAIL"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gsf/login/BackgroundTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->CHECK_AVAIL:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 71
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    const-string v1, "CHECK_DOMAIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackgroundTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->CHECK_DOMAIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 72
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    const-string v1, "GET_OAUTH_REQUEST_TOKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackgroundTask$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->GET_OAUTH_REQUEST_TOKEN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 65
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gsf/login/BackgroundTask$Action;

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->LOGIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->CREATE_ACCOUNT:Lcom/google/android/gsf/login/BackgroundTask$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->RATE_PASSWORD:Lcom/google/android/gsf/login/BackgroundTask$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->CHECK_AVAIL:Lcom/google/android/gsf/login/BackgroundTask$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask$Action;->CHECK_DOMAIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask$Action;->GET_OAUTH_REQUEST_TOKEN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->$VALUES:[Lcom/google/android/gsf/login/BackgroundTask$Action;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackgroundTask$Action;
    .locals 1
    .parameter

    .prologue
    .line 65
    const-class v0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/login/BackgroundTask$Action;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gsf/login/BackgroundTask$Action;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->$VALUES:[Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v0}, [Lcom/google/android/gsf/login/BackgroundTask$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/login/BackgroundTask$Action;

    return-object v0
.end method
