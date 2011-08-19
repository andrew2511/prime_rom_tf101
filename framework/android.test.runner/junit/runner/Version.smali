.class public Ljunit/runner/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static id()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    const-string v0, "3.8.1"

    return-object v0
.end method
