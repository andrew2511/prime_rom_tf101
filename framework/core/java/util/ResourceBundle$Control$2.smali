.class Ljava/util/ResourceBundle$Control$2;
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
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/ResourceBundle$Control;

.field final synthetic val$clsloader:Ljava/lang/ClassLoader;

.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ResourceBundle$Control;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Ljava/util/ResourceBundle$Control$2;->this$0:Ljava/util/ResourceBundle$Control;

    iput-object p2, p0, Ljava/util/ResourceBundle$Control$2;->val$clsloader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Ljava/util/ResourceBundle$Control$2;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 937
    iget-object v0, p0, Ljava/util/ResourceBundle$Control$2;->val$clsloader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Ljava/util/ResourceBundle$Control$2;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 935
    invoke-virtual {p0}, Ljava/util/ResourceBundle$Control$2;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
