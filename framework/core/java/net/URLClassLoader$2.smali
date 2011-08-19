.class final Ljava/net/URLClassLoader$2;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
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
        "Ljava/net/URLClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$urls:[Ljava/net/URL;


# direct methods
.method constructor <init>([Ljava/net/URL;)V
    .registers 2
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Ljava/net/URLClassLoader$2;->val$urls:[Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 785
    invoke-virtual {p0}, Ljava/net/URLClassLoader$2;->run()Ljava/net/URLClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/URLClassLoader;
    .registers 3

    .prologue
    .line 787
    new-instance v0, Ljava/net/URLClassLoader$SubURLClassLoader;

    iget-object v1, p0, Ljava/net/URLClassLoader$2;->val$urls:[Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URLClassLoader$SubURLClassLoader;-><init>([Ljava/net/URL;)V

    return-object v0
.end method
