.class final Ljavax/xml/xpath/SecuritySupport$5;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/xml/xpath/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Ljavax/xml/xpath/SecuritySupport$5;->val$cl:Ljava/lang/ClassLoader;

    iput-object p2, p0, Ljavax/xml/xpath/SecuritySupport$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$5;->val$cl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_b

    .line 104
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$5;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 109
    .local v0, url:Ljava/net/URL;
    :goto_a
    return-object v0

    .line 107
    .end local v0           #url:Ljava/net/URL;
    :cond_b
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$5;->val$cl:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ljavax/xml/xpath/SecuritySupport$5;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .restart local v0       #url:Ljava/net/URL;
    goto :goto_a
.end method
