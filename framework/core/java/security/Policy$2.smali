.class final Ljava/security/Policy$2;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Policy;->getDefaultProvider()Ljava/security/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/security/Policy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Ljava/security/Policy$2;->val$defaultClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/security/Policy$2;->run()Ljava/security/Policy;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/Policy;
    .registers 5

    .prologue
    .line 480
    :try_start_0
    iget-object v1, p0, Ljava/security/Policy$2;->val$defaultClass:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/Policy;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-object v1, p0

    .line 488
    :goto_12
    return-object v1

    .line 482
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 488
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/apache/harmony/security/fortress/DefaultPolicy;

    invoke-direct {v1}, Lorg/apache/harmony/security/fortress/DefaultPolicy;-><init>()V

    goto :goto_12
.end method
