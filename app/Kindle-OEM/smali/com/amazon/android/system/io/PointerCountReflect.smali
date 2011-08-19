.class public Lcom/amazon/android/system/io/PointerCountReflect;
.super Ljava/lang/Object;
.source "PointerCountReflect.java"


# static fields
.field private static getPointerCount:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/amazon/android/system/io/PointerCountReflect;->initCompatibility()V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 52
    sget-object v0, Lcom/amazon/android/system/io/PointerCountReflect;->getPointerCount:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    move v0, v2

    .line 82
    :goto_0
    return v0

    .line 59
    :cond_0
    :try_start_0
    sget-object v0, Lcom/amazon/android/system/io/PointerCountReflect;->getPointerCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 66
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 68
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 70
    :cond_1
    instance-of v1, p0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 72
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 77
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getPointerCount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/system/io/PointerCountReflect;->getPointerCount:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
