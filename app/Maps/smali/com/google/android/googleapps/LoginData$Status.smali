.class public final enum Lcom/google/android/googleapps/LoginData$Status;
.super Ljava/lang/Enum;
.source "LoginData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googleapps/LoginData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/googleapps/LoginData$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum ACCOUNT_DISABLED:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum BAD_REQUEST:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum BAD_USERNAME:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum CANCELLED:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum CAPTCHA:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum DELETED_GMAIL:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum LOGIN_FAIL:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum MISSING_APPS:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum NETWORK_ERROR:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum NO_GMAIL:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum SERVER_ERROR:Lcom/google/android/googleapps/LoginData$Status;

.field public static final enum SUCCESS:Lcom/google/android/googleapps/LoginData$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->SUCCESS:Lcom/google/android/googleapps/LoginData$Status;

    .line 31
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "ACCOUNT_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->ACCOUNT_DISABLED:Lcom/google/android/googleapps/LoginData$Status;

    .line 32
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "BAD_USERNAME"

    invoke-direct {v0, v1, v5}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->BAD_USERNAME:Lcom/google/android/googleapps/LoginData$Status;

    .line 33
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->BAD_REQUEST:Lcom/google/android/googleapps/LoginData$Status;

    .line 34
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "LOGIN_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/googleapps/LoginData$Status;

    .line 35
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->SERVER_ERROR:Lcom/google/android/googleapps/LoginData$Status;

    .line 36
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "MISSING_APPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->MISSING_APPS:Lcom/google/android/googleapps/LoginData$Status;

    .line 37
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "NO_GMAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->NO_GMAIL:Lcom/google/android/googleapps/LoginData$Status;

    .line 38
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/googleapps/LoginData$Status;

    .line 39
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "CAPTCHA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->CAPTCHA:Lcom/google/android/googleapps/LoginData$Status;

    .line 40
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "CANCELLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->CANCELLED:Lcom/google/android/googleapps/LoginData$Status;

    .line 41
    new-instance v0, Lcom/google/android/googleapps/LoginData$Status;

    const-string v1, "DELETED_GMAIL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/googleapps/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->DELETED_GMAIL:Lcom/google/android/googleapps/LoginData$Status;

    .line 29
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/googleapps/LoginData$Status;

    sget-object v1, Lcom/google/android/googleapps/LoginData$Status;->SUCCESS:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googleapps/LoginData$Status;->ACCOUNT_DISABLED:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/googleapps/LoginData$Status;->BAD_USERNAME:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/googleapps/LoginData$Status;->BAD_REQUEST:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/googleapps/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/googleapps/LoginData$Status;->SERVER_ERROR:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/googleapps/LoginData$Status;->MISSING_APPS:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/googleapps/LoginData$Status;->NO_GMAIL:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/googleapps/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/googleapps/LoginData$Status;->CAPTCHA:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/googleapps/LoginData$Status;->CANCELLED:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/googleapps/LoginData$Status;->DELETED_GMAIL:Lcom/google/android/googleapps/LoginData$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googleapps/LoginData$Status;->$VALUES:[Lcom/google/android/googleapps/LoginData$Status;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/googleapps/LoginData$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/google/android/googleapps/LoginData$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/googleapps/LoginData$Status;

    return-object p0
.end method

.method public static final values()[Lcom/google/android/googleapps/LoginData$Status;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/googleapps/LoginData$Status;->$VALUES:[Lcom/google/android/googleapps/LoginData$Status;

    invoke-virtual {v0}, [Lcom/google/android/googleapps/LoginData$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/googleapps/LoginData$Status;

    return-object v0
.end method
