.class Ljava/util/ResourceBundle$Control$1;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
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
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/ResourceBundle$Control;

.field final synthetic val$bundleName:Ljava/lang/String;

.field final synthetic val$clsloader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/util/ResourceBundle$Control;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Ljava/util/ResourceBundle$Control$1;->this$0:Ljava/util/ResourceBundle$Control;

    iput-object p2, p0, Ljava/util/ResourceBundle$Control$1;->val$clsloader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Ljava/util/ResourceBundle$Control$1;->val$bundleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 898
    :try_start_1
    iget-object v1, p0, Ljava/util/ResourceBundle$Control$1;->val$clsloader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ljava/util/ResourceBundle$Control$1;->val$bundleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 902
    :goto_9
    return-object v1

    .line 899
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    move-object v1, v3

    .line 900
    goto :goto_9

    .line 901
    .end local v0           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NoClassDefFoundError;
    move-object v1, v3

    .line 902
    goto :goto_9
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 895
    invoke-virtual {p0}, Ljava/util/ResourceBundle$Control$1;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
