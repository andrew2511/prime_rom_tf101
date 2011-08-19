.class final Ljava/util/logging/Logger$4;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Ljava/util/logging/Logger$4;->run()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/util/logging/Logger$PrivateSecurityManager;

    invoke-direct {v0}, Ljava/util/logging/Logger$PrivateSecurityManager;-><init>()V

    invoke-virtual {v0}, Ljava/util/logging/Logger$PrivateSecurityManager;->privateGetClassContext()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
