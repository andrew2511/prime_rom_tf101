.class Ljava/security/Provider$Service$1;
.super Ljava/lang/Object;
.source "Provider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/security/NoSuchAlgorithmException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/security/Provider$Service;


# direct methods
.method constructor <init>(Ljava/security/Provider$Service;)V
    .registers 2
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Ljava/security/Provider$Service$1;->run()Ljava/security/NoSuchAlgorithmException;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/NoSuchAlgorithmException;
    .registers 6

    .prologue
    .line 1083
    iget-object v2, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    #getter for: Ljava/security/Provider$Service;->provider:Ljava/security/Provider;
    invoke-static {v2}, Ljava/security/Provider$Service;->access$500(Ljava/security/Provider$Service;)Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1085
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_14

    .line 1086
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1089
    :cond_14
    :try_start_14
    iget-object v2, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    iget-object v3, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    #getter for: Ljava/security/Provider$Service;->className:Ljava/lang/String;
    invoke-static {v3}, Ljava/security/Provider$Service;->access$300(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    #setter for: Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;
    invoke-static {v2, v3}, Ljava/security/Provider$Service;->access$602(Ljava/security/Provider$Service;Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_31

    .line 1096
    iget-object v2, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    iget-object v3, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    #getter for: Ljava/security/Provider$Service;->className:Ljava/lang/String;
    invoke-static {v3}, Ljava/security/Provider$Service;->access$300(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    #setter for: Ljava/security/Provider$Service;->lastClassName:Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/security/Provider$Service;->access$702(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    const/4 v2, 0x0

    :goto_30
    return-object v2

    .line 1091
    :catch_31
    move-exception v2

    move-object v1, v2

    .line 1092
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {v4}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    #getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {v4}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " implementation not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    goto :goto_30
.end method
