.class Ljava/io/ObjectInputStream$1;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/ObjectInputStream;

.field final synthetic val$implementationClass:Ljava/lang/Class;

.field final synthetic val$thisClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Ljava/io/ObjectInputStream$1;->this$0:Ljava/io/ObjectInputStream;

    iput-object p2, p0, Ljava/io/ObjectInputStream$1;->val$implementationClass:Ljava/lang/Class;

    iput-object p3, p0, Ljava/io/ObjectInputStream$1;->val$thisClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 5

    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$1;->val$implementationClass:Ljava/lang/Class;

    const-string v2, "readFields"

    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 397
    .local v0, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/io/ObjectInputStream$1;->val$thisClass:Ljava/lang/Class;

    if-eq v1, v2, :cond_16

    .line 398
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_14} :catch_15

    .line 410
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_14
    return-object v1

    .line 400
    :catch_15
    move-exception v1

    .line 403
    :cond_16
    :try_start_16
    iget-object v1, p0, Ljava/io/ObjectInputStream$1;->val$implementationClass:Ljava/lang/Class;

    const-string v2, "readUnshared"

    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 405
    .restart local v0       #method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/io/ObjectInputStream$1;->val$thisClass:Ljava/lang/Class;

    if-eq v1, v2, :cond_2c

    .line 406
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_2a} :catch_2b

    goto :goto_14

    .line 408
    .end local v0           #method:Ljava/lang/reflect/Method;
    :catch_2b
    move-exception v1

    .line 410
    :cond_2c
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_14
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 392
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
