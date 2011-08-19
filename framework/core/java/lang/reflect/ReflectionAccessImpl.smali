.class final Ljava/lang/reflect/ReflectionAccessImpl;
.super Ljava/lang/Object;
.source "ReflectionAccessImpl.java"

# interfaces
.implements Lorg/apache/harmony/kernel/vm/ReflectionAccess;


# static fields
.field static final THE_ONE:Ljava/lang/reflect/ReflectionAccessImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/reflect/ReflectionAccessImpl;

    invoke-direct {v0}, Ljava/lang/reflect/ReflectionAccessImpl;-><init>()V

    sput-object v0, Ljava/lang/reflect/ReflectionAccessImpl;->THE_ONE:Ljava/lang/reflect/ReflectionAccessImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public accessibleClone(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 4
    .parameter "method"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/reflect/Method;

    invoke-direct {v0, p1}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V

    .line 47
    .local v0, result:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessibleNoCheck(Z)V

    .line 48
    return-object v0
.end method

.method public clone(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .registers 3
    .parameter "field"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/reflect/Field;

    invoke-direct {v0, p1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public clone(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 3
    .parameter "method"

    .prologue
    .line 38
    new-instance v0, Ljava/lang/reflect/Method;

    invoke-direct {v0, p1}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public setAccessibleNoCheck(Ljava/lang/reflect/AccessibleObject;Z)V
    .registers 3
    .parameter "ao"
    .parameter "accessible"

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessibleNoCheck(Z)V

    .line 53
    return-void
.end method
