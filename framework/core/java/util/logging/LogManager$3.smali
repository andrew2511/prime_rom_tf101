.class Ljava/util/logging/LogManager$3;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V
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
.field final synthetic this$0:Ljava/util/logging/LogManager;

.field final synthetic val$child:Ljava/util/logging/Logger;

.field final synthetic val$thisLogger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Ljava/util/logging/LogManager$3;->this$0:Ljava/util/logging/LogManager;

    iput-object p2, p0, Ljava/util/logging/LogManager$3;->val$child:Ljava/util/logging/Logger;

    iput-object p3, p0, Ljava/util/logging/LogManager$3;->val$thisLogger:Ljava/util/logging/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Ljava/util/logging/LogManager$3;->val$child:Ljava/util/logging/Logger;

    iget-object v1, p0, Ljava/util/logging/LogManager$3;->val$thisLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    .line 305
    const/4 v0, 0x0

    return-object v0
.end method
