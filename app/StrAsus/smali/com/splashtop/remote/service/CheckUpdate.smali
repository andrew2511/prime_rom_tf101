.class public Lcom/splashtop/remote/service/CheckUpdate;
.super Ljava/lang/Object;
.source "CheckUpdate.java"


# instance fields
.field private context:Landroid/content/Context;

.field private info:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private rversion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/splashtop/remote/service/CheckUpdate;->context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private checkApk()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 44
    iget-object v4, p0, Lcom/splashtop/remote/service/CheckUpdate;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, p0, Lcom/splashtop/remote/service/CheckUpdate;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v8

    .line 45
    .local v3, status:Z
    :goto_0
    const/4 v1, -0x1

    .line 47
    .local v1, persistVersionCode:I
    :try_start_0
    iget-object v4, p0, Lcom/splashtop/remote/service/CheckUpdate;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/splashtop/remote/service/CheckUpdate;->packageName:Ljava/lang/String;

    const/16 v6, 0x2000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 48
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    iget-object v4, p0, Lcom/splashtop/remote/service/CheckUpdate;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    .local v2, settings:Landroid/content/SharedPreferences;
    iget v4, p0, Lcom/splashtop/remote/service/CheckUpdate;->rversion:I

    const-string v5, "rversion"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-le v4, v5, :cond_1

    move v3, v8

    .line 53
    :goto_2
    return v3

    .end local v1           #persistVersionCode:I
    .end local v2           #settings:Landroid/content/SharedPreferences;
    .end local v3           #status:Z
    :cond_0
    move v3, v7

    .line 44
    goto :goto_0

    .restart local v1       #persistVersionCode:I
    .restart local v2       #settings:Landroid/content/SharedPreferences;
    .restart local v3       #status:Z
    :cond_1
    move v3, v7

    .line 52
    goto :goto_2

    .line 49
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private getUpdateServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "lang"

    .prologue
    .line 40
    const-string v0, "http://sdrs.splashtop.com/ASUSRD04/notification/{lang}/ASUSRD04.xml"

    const-string v1, "{lang}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/splashtop/remote/service/CheckUpdate;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/splashtop/remote/service/CheckUpdate;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Lcom/splashtop/remote/bean/Project;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/splashtop/remote/xml/DomParser;

    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/splashtop/remote/service/CheckUpdate;->getUpdateServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en-US"

    invoke-direct {p0, v2}, Lcom/splashtop/remote/service/CheckUpdate;->getUpdateServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/xml/DomParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/splashtop/remote/xml/DomParser;->parse()Lcom/splashtop/remote/bean/Project;

    move-result-object v0

    return-object v0
.end method

.method public getRversion()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/splashtop/remote/service/CheckUpdate;->rversion:I

    return v0
.end method

.method public start(Lcom/splashtop/remote/bean/Project;)Z
    .locals 7
    .parameter "project"

    .prologue
    const/4 v6, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, result:Z
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/splashtop/remote/bean/Project;->getPlatform()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/bean/Platform;

    .line 60
    .local v1, platform:Lcom/splashtop/remote/bean/Platform;
    const-string v4, "android"

    invoke-virtual {v1}, Lcom/splashtop/remote/bean/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/splashtop/remote/bean/Platform;->getVersion()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/splashtop/remote/bean/Version;

    .line 62
    .local v3, version:Lcom/splashtop/remote/bean/Version;
    invoke-virtual {v3}, Lcom/splashtop/remote/bean/Version;->getContent()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/bean/Content;

    .line 63
    .local v0, content:Lcom/splashtop/remote/bean/Content;
    invoke-virtual {v0}, Lcom/splashtop/remote/bean/Content;->getUpgrade_url()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/splashtop/remote/service/CheckUpdate;->packageName:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Lcom/splashtop/remote/bean/Content;->getInfo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/splashtop/remote/service/CheckUpdate;->info:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Lcom/splashtop/remote/bean/Content;->getRevision()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/splashtop/remote/service/CheckUpdate;->rversion:I

    .line 66
    invoke-direct {p0}, Lcom/splashtop/remote/service/CheckUpdate;->checkApk()Z

    move-result v2

    .line 69
    .end local v0           #content:Lcom/splashtop/remote/bean/Content;
    .end local v1           #platform:Lcom/splashtop/remote/bean/Platform;
    .end local v3           #version:Lcom/splashtop/remote/bean/Version;
    :cond_0
    return v2
.end method
