.class final Ljava/util/logging/Logger$5;
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
        "<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$classes:[Ljava/lang/Class;

.field final synthetic val$index:I


# direct methods
.method constructor <init>([Ljava/lang/Class;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Ljava/util/logging/Logger$5;->val$classes:[Ljava/lang/Class;

    iput p2, p0, Ljava/util/logging/Logger$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Ljava/util/logging/Logger$5;->val$classes:[Ljava/lang/Class;

    iget v1, p0, Ljava/util/logging/Logger$5;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/util/logging/Logger$5;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
