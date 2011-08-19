.class final Ljava/util/SpecialAccess;
.super Ljava/lang/Object;
.source "SpecialAccess.java"


# static fields
.field static final LANG:Lorg/apache/harmony/kernel/vm/LangAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    :try_start_0
    const-class v1, Ljava/lang/Runnable;

    const-string v2, "run"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_18

    .line 41
    sget-object v1, Ljava/util/EnumSet;->LANG_BOOTSTRAP:Lorg/apache/harmony/kernel/vm/LangAccess;

    sput-object v1, Ljava/util/SpecialAccess;->LANG:Lorg/apache/harmony/kernel/vm/LangAccess;

    .line 43
    sget-object v1, Ljava/util/SpecialAccess;->LANG:Lorg/apache/harmony/kernel/vm/LangAccess;

    if-nez v1, :cond_23

    .line 44
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 35
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 36
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 37
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 46
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    :cond_23
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
