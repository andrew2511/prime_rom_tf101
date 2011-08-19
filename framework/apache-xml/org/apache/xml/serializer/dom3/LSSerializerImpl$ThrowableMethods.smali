.class Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;
.super Ljava/lang/Object;
.source "LSSerializerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/dom3/LSSerializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThrowableMethods"
.end annotation


# static fields
.field private static fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

.field private static fgThrowableMethodsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1516
    sput-object v7, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    .line 1519
    sput-boolean v6, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    .line 1526
    :try_start_6
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    .line 1527
    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 1535
    :goto_1b
    return-void

    .line 1531
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 1532
    .local v0, exc:Ljava/lang/Exception;
    sput-object v7, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    .line 1533
    sput-boolean v6, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    goto :goto_1b
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 1513
    sget-boolean v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    .prologue
    .line 1513
    sget-object v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
