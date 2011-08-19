.class public Lcom/google/android/music/utils/PostFroyoUtils$ActivityManagerComp;
.super Ljava/lang/Object;
.source "PostFroyoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/PostFroyoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityManagerComp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRunningInTestHarness()Z
    .locals 6

    .prologue
    .line 74
    const/4 v3, 0x0

    .line 77
    .local v3, result:Z
    :try_start_0
    const-class v4, Landroid/app/ActivityManager;

    const-string v5, "isRunningInTestHarness"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 79
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_0

    .line 80
    const-string v4, "PostFroyoUtils"

    const-string v5, "Unexpected result type of ActivityManager.isRunningInTestHarness"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 82
    .restart local v1       #method:Ljava/lang/reflect/Method;
    :cond_0
    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 83
    .local v2, objectResult:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 88
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #objectResult:Ljava/lang/Boolean;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 89
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PostFroyoUtils"

    const-string v5, "Unexpected exception when invoking ActivityManager.isRunningInTestHarness via reflection"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
