.class Ljava/net/URLConnection$1;
.super Ljava/lang/Object;
.source "URLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLConnection;

.field final synthetic val$typeString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URLConnection;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Ljava/net/URLConnection$1;->this$0:Ljava/net/URLConnection;

    iput-object p2, p0, Ljava/net/URLConnection$1;->val$typeString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 305
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.apache.harmony.awt.www.content."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URLConnection$1;->val$typeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, className:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1c} :catch_21
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v1

    .line 312
    .end local v0           #className:Ljava/lang/String;
    :goto_1d
    return-object v1

    .line 310
    :catch_1e
    move-exception v1

    .line 312
    :goto_1f
    const/4 v1, 0x0

    goto :goto_1d

    .line 309
    :catch_21
    move-exception v1

    goto :goto_1f

    .line 308
    :catch_23
    move-exception v1

    goto :goto_1f
.end method
