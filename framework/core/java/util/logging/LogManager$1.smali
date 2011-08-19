.class final Ljava/util/logging/LogManager$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 164
    const-string v3, "java.util.logging.manager"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 167
    invoke-static {v0}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/logging/LogManager;

    sput-object p0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    .line 169
    :cond_11
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    if-nez v3, :cond_1c

    .line 170
    new-instance v3, Ljava/util/logging/LogManager;

    invoke-direct {v3}, Ljava/util/logging/LogManager;-><init>()V

    sput-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    .line 175
    :cond_1c
    :try_start_1c
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v3}, Ljava/util/logging/LogManager;->readConfiguration()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_3f

    .line 181
    :goto_21
    new-instance v2, Ljava/util/logging/Logger;

    const-string v3, ""

    invoke-direct {v2, v3, v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v2, root:Ljava/util/logging/Logger;
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 183
    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    .line 185
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v3, v2}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 186
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    sget-object v4, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 187
    return-object v5

    .line 176
    .end local v2           #root:Ljava/util/logging/Logger;
    :catch_3f
    move-exception v3

    move-object v1, v3

    .line 177
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
