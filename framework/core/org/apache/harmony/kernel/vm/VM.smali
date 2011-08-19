.class public final Lorg/apache/harmony/kernel/vm/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field static final CPE_TYPE_DIRECTORY:I = 0x1

.field static final CPE_TYPE_JAR:I = 0x2

.field static final CPE_TYPE_TCP:I = 0x3

.field static final CPE_TYPE_UNKNOWN:I = 0x0

.field static final CPE_TYPE_UNUSABLE:I = 0x5

.field private static final kernelVersion:I = 0x1000100


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShutdownHook(Ljava/lang/Thread;)V
    .registers 1
    .parameter "hook"

    .prologue
    .line 184
    return-void
.end method

.method public static bootCallerClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public static callerClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public static closeJars()V
    .registers 0

    .prologue
    .line 205
    return-void
.end method

.method public static deleteOnExit()V
    .registers 0

    .prologue
    .line 214
    return-void
.end method

.method public static dumpString(Ljava/lang/String;)V
    .registers 1
    .parameter "str"

    .prologue
    .line 155
    return-void
.end method

.method static findClassOrNull(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method static getCPIndexImpl(Ljava/lang/Class;)I
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method static getClassPathCount()I
    .registers 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method static final getClassPathEntryType(Ljava/lang/Object;I)I
    .registers 3
    .parameter "classLoader"
    .parameter "cpIndex"

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public static getKernelVersion()I
    .registers 1

    .prologue
    .line 286
    const v0, 0x1000100

    return v0
.end method

.method public static final getNonBootstrapClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method static getPathFromClassPath(I)[B
    .registers 2
    .parameter "index"

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method static final getStackClassLoader(I)Ljava/lang/ClassLoader;
    .registers 2
    .parameter "depth"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVMArgs()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final initializeClassLoader(Ljava/lang/ClassLoader;Z)V
    .registers 2
    .parameter "loader"
    .parameter "bootLoader"

    .prologue
    .line 85
    return-void
.end method

.method static initializeVM()V
    .registers 0

    .prologue
    .line 175
    return-void
.end method

.method public static final intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "string"

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public static removeShutdownHook(Ljava/lang/Thread;)Z
    .registers 2
    .parameter "hook"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method
