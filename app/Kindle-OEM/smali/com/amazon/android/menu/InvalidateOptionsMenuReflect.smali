.class public Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;
.super Ljava/lang/Object;
.source "InvalidateOptionsMenuReflect.java"


# static fields
.field private static invalidateOptionsMenu:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->initCompatibility()V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initCompatibility()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "invalidateOptionsMenu"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->invalidateOptionsMenu:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    sget-object v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->invalidateOptionsMenu:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    sget-object v0, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->invalidateOptionsMenu:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 61
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 63
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 65
    :cond_1
    instance-of v1, p0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 67
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
