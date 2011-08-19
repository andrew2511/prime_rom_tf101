.class public final Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field private static final THE_ONE:Lsun/misc/Unsafe;


# instance fields
.field private final lang:Lorg/apache/harmony/kernel/vm/LangAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lsun/misc/Unsafe;

    invoke-direct {v0}, Lsun/misc/Unsafe;-><init>()V

    sput-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lorg/apache/harmony/kernel/vm/LangAccess;->getInstance()Lorg/apache/harmony/kernel/vm/LangAccess;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Unsafe;->lang:Lorg/apache/harmony/kernel/vm/LangAccess;

    .line 42
    return-void
.end method

.method private static native arrayBaseOffset0(Ljava/lang/Class;)I
.end method

.method private static native arrayIndexScale0(Ljava/lang/Class;)I
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 54
    .local v0, calling:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_16

    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 55
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unsafe access denied"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_16
    sget-object v1, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    return-object v1
.end method

.method private static native objectFieldOffset0(Ljava/lang/reflect/Field;)J
.end method


# virtual methods
.method public arrayBaseOffset(Ljava/lang/Class;)I
    .registers 4
    .parameter "clazz"

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_e

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for array classes only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_e
    invoke-static {p1}, Lsun/misc/Unsafe;->arrayBaseOffset0(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .registers 4
    .parameter "clazz"

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_e

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for array classes only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_e
    invoke-static {p1}, Lsun/misc/Unsafe;->arrayIndexScale0(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public native compareAndSwapInt(Ljava/lang/Object;JII)Z
.end method

.method public native compareAndSwapLong(Ljava/lang/Object;JJJ)Z
.end method

.method public native compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native getInt(Ljava/lang/Object;J)I
.end method

.method public native getIntVolatile(Ljava/lang/Object;J)I
.end method

.method public native getLong(Ljava/lang/Object;J)J
.end method

.method public native getLongVolatile(Ljava/lang/Object;J)J
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4
    .parameter "field"

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for instance fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_12
    invoke-static {p1}, Lsun/misc/Unsafe;->objectFieldOffset0(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public park(ZJ)V
    .registers 5
    .parameter "absolute"
    .parameter "time"

    .prologue
    .line 326
    if-eqz p1, :cond_8

    .line 327
    iget-object v0, p0, Lsun/misc/Unsafe;->lang:Lorg/apache/harmony/kernel/vm/LangAccess;

    invoke-virtual {v0, p2, p3}, Lorg/apache/harmony/kernel/vm/LangAccess;->parkUntil(J)V

    .line 331
    :goto_7
    return-void

    .line 329
    :cond_8
    iget-object v0, p0, Lsun/misc/Unsafe;->lang:Lorg/apache/harmony/kernel/vm/LangAccess;

    invoke-virtual {v0, p2, p3}, Lorg/apache/harmony/kernel/vm/LangAccess;->parkFor(J)V

    goto :goto_7
.end method

.method public native putInt(Ljava/lang/Object;JI)V
.end method

.method public native putIntVolatile(Ljava/lang/Object;JI)V
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
.end method

.method public native putLongVolatile(Ljava/lang/Object;JJ)V
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putOrderedInt(Ljava/lang/Object;JI)V
.end method

.method public native putOrderedLong(Ljava/lang/Object;JJ)V
.end method

.method public native putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public unpark(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    .line 342
    instance-of v0, p1, Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 343
    iget-object v0, p0, Lsun/misc/Unsafe;->lang:Lorg/apache/harmony/kernel/vm/LangAccess;

    check-cast p1, Ljava/lang/Thread;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/apache/harmony/kernel/vm/LangAccess;->unpark(Ljava/lang/Thread;)V

    .line 347
    return-void

    .line 345
    .restart local p1
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for Threads only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
