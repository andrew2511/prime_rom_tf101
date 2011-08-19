.class Ljava/net/URLClassLoader$5;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;
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
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Ljava/net/URLClassLoader$5;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 929
    invoke-virtual {p0}, Ljava/net/URLClassLoader$5;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/URL;
    .registers 3

    .prologue
    .line 931
    iget-object v0, p0, Ljava/net/URLClassLoader$5;->this$0:Ljava/net/URLClassLoader;

    iget-object v1, p0, Ljava/net/URLClassLoader$5;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/URLClassLoader;->findResourceImpl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
