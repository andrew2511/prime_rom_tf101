.class public Lcom/google/android/youtube/core/ErrorHelper;
.super Ljava/lang/Object;
.source "ErrorHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 1
    .parameter "t"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :goto_0
    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 105
    :goto_1
    return v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .parameter "c"
    .parameter "t"

    .prologue
    .line 47
    const-class v1, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/ErrorHelper;->causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const v1, 0x7f0c0071

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .end local p1
    :goto_0
    return-object v1

    .line 50
    .restart local p1
    :cond_0
    instance-of v1, p1, Landroid/accounts/AuthenticatorException;

    if-eqz v1, :cond_1

    .line 52
    const v1, 0x7f0c0072

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_1
    instance-of v1, p1, Ljava/net/SocketException;

    if-eqz v1, :cond_2

    .line 55
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_2
    const/16 v1, 0x193

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/ErrorHelper;->isHttpException(Ljava/lang/Throwable;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    const v1, 0x7f0c0074

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_3
    instance-of v1, p1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v1, :cond_4

    .line 59
    const v1, 0x7f0c006f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lorg/apache/http/client/HttpResponseException;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    .restart local p1
    :cond_4
    instance-of v1, p1, Lcom/google/android/youtube/core/converter/ConverterException;

    if-eqz v1, :cond_5

    .line 62
    const v1, 0x7f0c0070

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 63
    :cond_5
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_6

    .line 65
    const v1, 0x7f0c006d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_6
    instance-of v1, p1, Lcom/google/android/youtube/core/async/UserAuthorizer$NoLinkedYouTubeAccountException;

    if-eqz v1, :cond_7

    .line 67
    const v1, 0x7f0c0073

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 71
    .local v0, cause:Ljava/lang/Throwable;
    if-nez v0, :cond_8

    .line 72
    const v1, 0x7f0c0078

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_8
    invoke-static {p0, v0}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isHttpException(Ljava/lang/Throwable;I)Z
    .locals 1
    .parameter "t"
    .parameter "statusCode"

    .prologue
    .line 33
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/client/HttpResponseException;

    .end local p0
    invoke-virtual {p0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .parameter "c"
    .parameter "stringId"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "string"

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "c"
    .parameter "t"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method
