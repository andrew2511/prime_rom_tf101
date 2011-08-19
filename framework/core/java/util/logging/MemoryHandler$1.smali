.class Ljava/util/logging/MemoryHandler$1;
.super Ljava/lang/Object;
.source "MemoryHandler.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/MemoryHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/MemoryHandler;

.field final synthetic val$targetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/logging/MemoryHandler;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Ljava/util/logging/MemoryHandler$1;->this$0:Ljava/util/logging/MemoryHandler;

    iput-object p2, p0, Ljava/util/logging/MemoryHandler$1;->val$targetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 100
    .local v0, loader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_e

    .line 101
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 103
    :cond_e
    iget-object v1, p0, Ljava/util/logging/MemoryHandler$1;->val$targetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler$1;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
