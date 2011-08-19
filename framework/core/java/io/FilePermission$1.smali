.class Ljava/io/FilePermission$1;
.super Ljava/lang/Object;
.source "FilePermission.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/FilePermission;->init(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/FilePermission;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/FilePermission;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Ljava/io/FilePermission$1;->this$0:Ljava/io/FilePermission;

    iput-object p2, p0, Ljava/io/FilePermission$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/io/FilePermission$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .registers 4

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljava/io/FilePermission$1;->val$path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    .line 111
    :goto_b
    return-object v1

    .line 110
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Ljava/io/FilePermission$1;->val$path:Ljava/lang/String;

    goto :goto_b
.end method
