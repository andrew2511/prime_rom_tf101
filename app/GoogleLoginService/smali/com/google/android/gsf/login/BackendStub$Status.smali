.class public final enum Lcom/google/android/gsf/login/BackendStub$Status;
.super Ljava/lang/Enum;
.source "BackendStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BackendStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/login/BackendStub$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum ACCOUNT_DISABLED:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum ALREADY_HAS_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum BAD_PASSWORD:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum BAD_USERNAME:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum CAPTCHA:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum DELETED_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum LOGIN_FAIL:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum MISSING_APPS:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum NOT_LOGGED_IN:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum NO_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum OAUTH_DENIED_BY_USER:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum REQUEST_DENIED:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum SERVER_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum SOCKET_TIMEOUT:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

.field public static final enum USERNAME_UNAVAILABLE:Lcom/google/android/gsf/login/BackendStub$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 197
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "ACCOUNT_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 198
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "ALREADY_HAS_GMAIL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 199
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "BAD_PASSWORD"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_PASSWORD:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 200
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 201
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "BAD_USERNAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_USERNAME:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 202
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "CAPTCHA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->CAPTCHA:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 203
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "LOGIN_FAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->LOGIN_FAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 204
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "MISSING_APPS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->MISSING_APPS:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 205
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "NOT_LOGGED_IN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->NOT_LOGGED_IN:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 206
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "NO_GMAIL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->NO_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 207
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "REQUEST_DENIED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->REQUEST_DENIED:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 208
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->SERVER_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 209
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "USERNAME_UNAVAILABLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 210
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "DELETED_GMAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->DELETED_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 213
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "SOCKET_TIMEOUT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 214
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 215
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$Status;

    const-string v1, "OAUTH_DENIED_BY_USER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->OAUTH_DENIED_BY_USER:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 194
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/android/gsf/login/BackendStub$Status;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_PASSWORD:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_USERNAME:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->CAPTCHA:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->LOGIN_FAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->MISSING_APPS:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->NOT_LOGGED_IN:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->NO_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->REQUEST_DENIED:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->SERVER_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->DELETED_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Status;->OAUTH_DENIED_BY_USER:Lcom/google/android/gsf/login/BackendStub$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->$VALUES:[Lcom/google/android/gsf/login/BackendStub$Status;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Status;
    .locals 1
    .parameter

    .prologue
    .line 194
    const-class v0, Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/login/BackendStub$Status;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gsf/login/BackendStub$Status;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->$VALUES:[Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v0}, [Lcom/google/android/gsf/login/BackendStub$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/login/BackendStub$Status;

    return-object v0
.end method
