.class Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<[B>;"
    }
.end annotation


# instance fields
.field private next:Ljavax/net/ssl/SSLSession;

.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

.field final synthetic val$i:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    if-eqz v1, :cond_7

    move v1, v2

    .line 97
    :goto_6
    return v1

    .line 89
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 90
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    .line 91
    .local v0, session:Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    move v1, v2

    .line 93
    goto :goto_6

    .line 96
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    :cond_21
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    .line 97
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->nextElement()[B

    move-result-object v0

    return-object v0
.end method

.method public nextElement()[B
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 101
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 102
    .local v0, id:[B
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    .line 103
    return-object v0

    .line 105
    .end local v0           #id:[B
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
