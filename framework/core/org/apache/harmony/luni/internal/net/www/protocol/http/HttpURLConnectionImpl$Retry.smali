.class final enum Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;
.super Ljava/lang/Enum;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Retry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

.field public static final enum NEW_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

.field public static final enum NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

.field public static final enum SAME_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1098
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    .line 1099
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    const-string v1, "SAME_CONNECTION"

    invoke-direct {v0, v1, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    .line 1100
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    const-string v1, "NEW_CONNECTION"

    invoke-direct {v0, v1, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NEW_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    .line 1097
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NEW_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->$VALUES:[Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1097
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;
    .registers 2
    .parameter "name"

    .prologue
    .line 1097
    const-class v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    return-object p0
.end method

.method public static values()[Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;
    .registers 1

    .prologue
    .line 1097
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->$VALUES:[Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    invoke-virtual {v0}, [Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    return-object v0
.end method
