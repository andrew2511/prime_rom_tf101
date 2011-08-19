.class public Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;
.super Ljava/lang/Object;
.source "PolicyUtils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/PolicyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private expectedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;,"Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader<TT;>;"
    .local p2, expected:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->key:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->expectedType:Ljava/lang/Class;

    .line 176
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, this:Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;,"Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader<TT;>;"
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->key:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, klassName:Ljava/lang/String;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2f

    .line 189
    :cond_e
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider implementation should be specified via \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' security property"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_2f
    const/4 v4, 0x1

    :try_start_30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 196
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->expectedType:Ljava/lang/Class;

    if-eqz v4, :cond_74

    iget-object v4, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->expectedType:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 197
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not implement "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;->expectedType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_71
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_71} :catch_71
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_71} :catch_79

    .line 203
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_71
    move-exception v4

    move-object v3, v4

    .line 204
    .local v3, se:Ljava/lang/SecurityException;
    throw v3

    .line 201
    .end local v3           #se:Ljava/lang/SecurityException;
    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_74
    :try_start_74
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_77} :catch_71
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_79

    move-result-object v4

    return-object v4

    .line 206
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_79
    move-exception v4

    move-object v0, v4

    .line 208
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v3       #se:Ljava/lang/SecurityException;
    invoke-virtual {v3, v0}, Ljava/lang/SecurityException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v3
.end method
