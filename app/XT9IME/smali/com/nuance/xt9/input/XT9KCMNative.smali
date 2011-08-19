.class public abstract Lcom/nuance/xt9/input/XT9KCMNative;
.super Ljava/lang/Object;
.source "XT9KCMNative.java"


# static fields
.field private static mNativeLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const/4 v1, 0x0

    sput-boolean v1, Lcom/nuance/xt9/input/XT9KCMNative;->mNativeLibLoaded:Z

    .line 9
    sget-boolean v1, Lcom/nuance/xt9/input/XT9KCMNative;->mNativeLibLoaded:Z

    if-nez v1, :cond_0

    .line 11
    :try_start_0
    const-string v1, "jni_xt9kcm"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nuance/xt9/input/XT9KCMNative;->mNativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :cond_0
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 14
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "com.nuance.xt9.XT9KCMNative"

    const-string v2, "Could not load native library jni_xt9kcm"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
