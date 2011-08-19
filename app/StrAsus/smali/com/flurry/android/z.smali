.class final Lcom/flurry/android/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/z;->a:Z

    .line 10
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    sget-boolean v0, Lcom/flurry/android/z;->a:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    sget-boolean v0, Lcom/flurry/android/z;->a:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method static a()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/z;->a:Z

    .line 24
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    sget-boolean v0, Lcom/flurry/android/z;->a:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    sget-boolean v0, Lcom/flurry/android/z;->a:Z

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/z;->a:Z

    .line 31
    return-void
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    sget-boolean v0, Lcom/flurry/android/z;->a:Z

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    sget-boolean v0, Lcom/flurry/android/z;->a:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    sget-boolean v0, Lcom/flurry/android/z;->a:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    sget-boolean v0, Lcom/flurry/android/z;->a:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method
