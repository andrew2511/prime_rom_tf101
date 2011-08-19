.class public Lcom/google/android/voicesearch/tcp/StunError;
.super Ljava/lang/Object;
.source "StunError.java"


# static fields
.field public static final STUN_ERROR_BAD_REQUEST:Lcom/google/android/voicesearch/tcp/StunError;

.field public static final STUN_ERROR_GLOBAL_FAILURE:Lcom/google/android/voicesearch/tcp/StunError;

.field public static final STUN_ERROR_INTEGRITY_CHECK_FAILURE:Lcom/google/android/voicesearch/tcp/StunError;

.field public static final STUN_ERROR_MISSING_USERNAME:Lcom/google/android/voicesearch/tcp/StunError;

.field public static final STUN_ERROR_SERVER_ERROR:Lcom/google/android/voicesearch/tcp/StunError;

.field public static final STUN_ERROR_STALE_CREDENTIALS:Lcom/google/android/voicesearch/tcp/StunError;

.field public static final STUN_ERROR_UNAUTHORIZED:Lcom/google/android/voicesearch/tcp/StunError;

.field public static final STUN_ERROR_UNKNOWN_ATTRIBUTE:Lcom/google/android/voicesearch/tcp/StunError;

.field public static final STUN_ERROR_USE_TLS:Lcom/google/android/voicesearch/tcp/StunError;

.field private static errorCodeMappings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/tcp/StunError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode:I

.field private errorReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->errorCodeMappings:Ljava/util/Hashtable;

    .line 45
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x190

    const-string v2, "Bad Request"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_BAD_REQUEST:Lcom/google/android/voicesearch/tcp/StunError;

    .line 47
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_UNAUTHORIZED:Lcom/google/android/voicesearch/tcp/StunError;

    .line 49
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x1a4

    const-string v2, "Unknown Attribute"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_UNKNOWN_ATTRIBUTE:Lcom/google/android/voicesearch/tcp/StunError;

    .line 51
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x1ae

    const-string v2, "Stale Credentials"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_STALE_CREDENTIALS:Lcom/google/android/voicesearch/tcp/StunError;

    .line 53
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x1af

    const-string v2, "Integrity Check Failure"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_INTEGRITY_CHECK_FAILURE:Lcom/google/android/voicesearch/tcp/StunError;

    .line 55
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x1b0

    const-string v2, "Missing Username"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_MISSING_USERNAME:Lcom/google/android/voicesearch/tcp/StunError;

    .line 57
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x1b1

    const-string v2, "Use TLS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_USE_TLS:Lcom/google/android/voicesearch/tcp/StunError;

    .line 59
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x1f4

    const-string v2, "Server Error"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_SERVER_ERROR:Lcom/google/android/voicesearch/tcp/StunError;

    .line 61
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunError;

    const/16 v1, 0x258

    const-string v2, "Global Failure"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunError;->STUN_ERROR_GLOBAL_FAILURE:Lcom/google/android/voicesearch/tcp/StunError;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/voicesearch/tcp/StunError;->errorCode:I

    .line 32
    iput-object p2, p0, Lcom/google/android/voicesearch/tcp/StunError;->errorReason:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/google/android/voicesearch/tcp/StunError;->errorCodeMappings:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static fromErrorCode(I)Lcom/google/android/voicesearch/tcp/StunError;
    .locals 2
    .parameter

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/voicesearch/tcp/StunError;->errorCodeMappings:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/tcp/StunError;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunError;->errorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
