.class public Lcom/amazon/android/system/io/PointerLocationReflect;
.super Ljava/lang/Object;
.source "PointerLocationReflect.java"


# static fields
.field private static getX:Ljava/lang/reflect/Method;

.field private static getY:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/amazon/android/system/io/PointerLocationReflect;->initCompatibility()V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLocation(Ljava/lang/reflect/Method;Landroid/view/MotionEvent;I)F
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, -0x4080

    .line 76
    if-nez p0, :cond_0

    move v0, v3

    .line 106
    :goto_0
    return v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 90
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 92
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 94
    :cond_1
    instance-of v1, p0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 96
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 101
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 55
    sget-object v0, Lcom/amazon/android/system/io/PointerLocationReflect;->getX:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/amazon/android/system/io/PointerLocationReflect;->getLocation(Ljava/lang/reflect/Method;Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 71
    sget-object v0, Lcom/amazon/android/system/io/PointerLocationReflect;->getY:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/amazon/android/system/io/PointerLocationReflect;->getLocation(Ljava/lang/reflect/Method;Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method private static initCompatibility()V
    .locals 5

    .prologue
    .line 32
    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getX"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/system/io/PointerLocationReflect;->getX:Ljava/lang/reflect/Method;

    .line 33
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getY"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/system/io/PointerLocationReflect;->getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
