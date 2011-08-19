.class final Ljavax/xml/xpath/SecuritySupport$6;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/xml/xpath/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
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
    .line 119
    iput-object p1, p0, Ljavax/xml/xpath/SecuritySupport$6;->val$cl:Ljava/lang/ClassLoader;

    iput-object p2, p0, Ljavax/xml/xpath/SecuritySupport$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$6;->val$cl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_b

    .line 123
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$6;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 128
    .local v0, enumeration:Ljava/util/Enumeration;
    :goto_a
    return-object v0

    .line 126
    .end local v0           #enumeration:Ljava/util/Enumeration;
    :cond_b
    iget-object v1, p0, Ljavax/xml/xpath/SecuritySupport$6;->val$cl:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ljavax/xml/xpath/SecuritySupport$6;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .restart local v0       #enumeration:Ljava/util/Enumeration;
    goto :goto_a
.end method
