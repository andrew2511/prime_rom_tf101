.class public final Lcom/zinio/mobile/android/b/g;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Map;


# instance fields
.field private a:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f08009c

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    sput-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "APP_VERSION_NOT_SUPPORTED"

    const v2, 0x7f080091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "AUTH_FAILURE"

    const v2, 0x7f080092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "DEVICE_NOT_AUTHORIZED"

    const v2, 0x7f080093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "INVALID_LOGIN"

    const v2, 0x7f080094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "INVALID_NEW_PASSWORD"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "INVALID_NEWSSTAND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "ISSUE_NOT_SUPPORTED_FOR_DEVICE"

    const v2, 0x7f080096

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "LOGIN_EXISTS"

    const v2, 0x7f080099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "MAX_USER_DEVICES_REACHED"

    const v2, 0x7f080097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "PACKING_LIST_NOT_FOUND"

    const v2, 0x7f080098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "NO_ITEMS_IN_LIBRARY"

    const v2, 0x7f08009d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "SYSTEM_NOT_AVAILABLE"

    const v2, 0x7f0800a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "USER_NOT_ENTITLED"

    const v2, 0x7f08009e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "SYSTEM_ERROR"

    const v2, 0x7f08009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "UNKNOWN_HOST"

    const v2, 0x7f08008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "SSL_ERROR"

    const v2, 0x7f08008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    const-string v1, "XML_PARSING_ERROR"

    const v2, 0x7f080090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/b/g;->a:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/b/g;->a:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/zinio/mobile/android/b/g;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/b/g;->a:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/b/g;->a:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/zinio/mobile/android/b/g;->a:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 141
    sget-object v0, Lcom/zinio/mobile/android/b/g;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/zinio/mobile/android/b/g;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lcom/zinio/mobile/android/b/g;->c:I

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/zinio/mobile/android/b/g;->a:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zinio/mobile/android/b/g;->a:Ljava/lang/String;

    return-object v0
.end method
