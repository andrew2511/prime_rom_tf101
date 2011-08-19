.class public Lcom/google/android/finsky/utils/FinskyDebug;
.super Ljava/lang/Object;
.source "FinskyDebug.java"


# static fields
.field private static final ORIGINAL_DFE_URL:Ljava/lang/String;

.field public static final SERVER_INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    const-string v1, "Production"

    sget-object v2, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    const-string v1, "Dogfood"

    const-string v2, "https://android.clients.google.com/dogfood/fdfe/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    const-string v1, "Staging"

    const-string v2, "https://android.clients.google.com/staging/fdfe/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    const-string v1, "Development"

    const-string v2, "https://android.clients.google.com/devel/fdfe/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    const-string v1, "Dave\'s Debug Hut"

    const-string v2, "http://santoro.mtv.corp.google.com:8000/dfe/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    const-string v1, "Ficustown"

    const-string v2, "http://ficus.mtv.corp.google.com:8000/dfe/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    const-string v1, "Demo"

    const-string v2, "https://android.clients.google.com/demo/fdfe/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isServerSelected(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v2

    .line 60
    .local v2, rules:Lcom/google/android/common/http/UrlRules;
    sget-object v3, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v1

    .line 61
    .local v1, rule:Lcom/google/android/common/http/UrlRules$Rule;
    sget-object v3, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    if-ne v1, v3, :cond_0

    sget-object v3, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    move-object v0, v3

    .line 64
    .local v0, rewritten:Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 61
    .end local v0           #rewritten:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static selectServer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "newUrl"

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rewrite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, rewriteRule:Ljava/lang/String;
    const-string v2, "url:finsky_dfe_url"

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    return-void

    :cond_0
    move-object v3, v1

    .line 47
    goto :goto_0
.end method
