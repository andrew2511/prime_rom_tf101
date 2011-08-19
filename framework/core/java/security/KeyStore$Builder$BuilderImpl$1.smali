.class Ljava/security/KeyStore$Builder$BuilderImpl$1;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder$BuilderImpl;->getKeyStore()Ljava/security/KeyStore;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/security/KeyStore$Builder$BuilderImpl;

.field final synthetic val$ks:Ljava/security/KeyStore;

.field final synthetic val$passwd:[C


# direct methods
.method constructor <init>(Ljava/security/KeyStore$Builder$BuilderImpl;Ljava/security/KeyStore;[C)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1034
    iput-object p1, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->this$0:Ljava/security/KeyStore$Builder$BuilderImpl;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->val$ks:Ljava/security/KeyStore;

    iput-object p3, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->val$passwd:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v2, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->this$0:Ljava/security/KeyStore$Builder$BuilderImpl;

    #getter for: Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;
    invoke-static {v2}, Ljava/security/KeyStore$Builder$BuilderImpl;->access$100(Ljava/security/KeyStore$Builder$BuilderImpl;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1037
    const/4 v0, 0x0

    .line 1039
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->this$0:Ljava/security/KeyStore$Builder$BuilderImpl;

    #getter for: Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;
    invoke-static {v2}, Ljava/security/KeyStore$Builder$BuilderImpl;->access$100(Ljava/security/KeyStore$Builder$BuilderImpl;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_20

    .line 1040
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_14
    iget-object v2, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->val$ks:Ljava/security/KeyStore;

    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->val$passwd:[C

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1042
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1048
    .end local v1           #fis:Ljava/io/FileInputStream;
    :goto_1e
    const/4 v2, 0x0

    return-object v2

    .line 1042
    .restart local v0       #fis:Ljava/io/FileInputStream;
    :catchall_20
    move-exception v2

    :goto_21
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 1045
    .end local v0           #fis:Ljava/io/FileInputStream;
    :cond_25
    iget-object v2, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->val$ks:Ljava/security/KeyStore;

    new-instance v3, Ljava/security/KeyStore$Builder$TmpLSParameter;

    iget-object v4, p0, Ljava/security/KeyStore$Builder$BuilderImpl$1;->this$0:Ljava/security/KeyStore$Builder$BuilderImpl;

    #getter for: Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;
    invoke-static {v4}, Ljava/security/KeyStore$Builder$BuilderImpl;->access$200(Ljava/security/KeyStore$Builder$BuilderImpl;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStore$Builder$TmpLSParameter;-><init>(Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    goto :goto_1e

    .line 1042
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catchall_36
    move-exception v2

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_21
.end method
