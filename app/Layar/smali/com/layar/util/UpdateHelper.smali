.class public Lcom/layar/util/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/util/UpdateHelper$Version;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.layar.util.UpdateHelper"


# instance fields
.field private packageName:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private shouldCheck:Z

.field protected versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/util/UpdateHelper;->prefs:Landroid/content/SharedPreferences;

    .line 54
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 55
    .local v1, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 56
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/layar/util/UpdateHelper;->packageName:Ljava/lang/String;

    .line 57
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/layar/util/UpdateHelper;->versionCode:I

    .line 58
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/layar/util/UpdateHelper;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    .end local v1           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getLatestVersionInfo()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v4, "dev.layar.com"

    invoke-direct {v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, host:Lorg/apache/http/HttpHost;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 141
    .local v3, uri:Landroid/net/Uri$Builder;
    const-string v4, "/resources/update/android/"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 143
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-static {v1, v0}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 146
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 147
    const-string v4, "com.layar.util.UpdateHelper"

    invoke-static {v4, v2}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 149
    :cond_0
    new-instance v4, Lorg/apache/http/HttpException;

    const-string v5, "Could not get latest version info"

    invoke-direct {v4, v5}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public canStart()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/layar/util/UpdateHelper;->versionCode:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkUpdate()Lcom/layar/util/UpdateHelper$Version;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v5, v9, v11

    .line 91
    .local v5, now:J
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/layar/util/UpdateHelper;->getLatestVersionInfo()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, json:Lorg/json/JSONObject;
    const-string v9, "versionCode"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 95
    .local v8, versionCode:I
    const-string v9, "features"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, features:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "market://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "target"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, target:Ljava/lang/String;
    iget-object v9, p0, Lcom/layar/util/UpdateHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 104
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "version.last.checked"

    invoke-interface {v1, v9, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    iget v9, p0, Lcom/layar/util/UpdateHelper;->versionCode:I

    if-gt v8, v9, :cond_0

    move-object v9, v13

    .line 117
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #features:Ljava/lang/String;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v7           #target:Ljava/lang/String;
    .end local v8           #versionCode:I
    :goto_0
    return-object v9

    .line 111
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #features:Ljava/lang/String;
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v7       #target:Ljava/lang/String;
    .restart local v8       #versionCode:I
    :cond_0
    new-instance v4, Lcom/layar/util/UpdateHelper$Version;

    invoke-direct {v4, v8, v2, v7}, Lcom/layar/util/UpdateHelper$Version;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, newVersion:Lcom/layar/util/UpdateHelper$Version;
    move-object v9, v4

    .line 113
    goto :goto_0

    .line 114
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #features:Ljava/lang/String;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #newVersion:Lcom/layar/util/UpdateHelper$Version;
    .end local v7           #target:Ljava/lang/String;
    .end local v8           #versionCode:I
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 115
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "com.layar.util.UpdateHelper"

    const-string v10, "Problem while fetching/parsing update response"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v9, v13

    .line 117
    goto :goto_0
.end method

.method public shouldCheck()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 66
    iget v6, p0, Lcom/layar/util/UpdateHelper;->versionCode:I

    const/16 v7, 0x20

    if-ge v6, v7, :cond_0

    move v6, v10

    .line 78
    :goto_0
    return v6

    .line 69
    :cond_0
    iget-object v6, p0, Lcom/layar/util/UpdateHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "version.last.checked"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 70
    .local v0, lastChecked:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 71
    .local v2, now:J
    sub-long v4, v2, v0

    .line 73
    .local v4, passed:J
    const-wide/32 v6, 0x15180

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    move v6, v10

    :goto_1
    iput-boolean v6, p0, Lcom/layar/util/UpdateHelper;->shouldCheck:Z

    .line 78
    iget-boolean v6, p0, Lcom/layar/util/UpdateHelper;->shouldCheck:Z

    goto :goto_0

    .line 73
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
