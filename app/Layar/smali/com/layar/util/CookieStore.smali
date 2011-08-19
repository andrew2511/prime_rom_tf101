.class public Lcom/layar/util/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Layar.CookieStore"

.field private static final sCookieStore:Lcom/layar/util/CookieStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/layar/util/CookieStore;

    invoke-direct {v0}, Lcom/layar/util/CookieStore;-><init>()V

    sput-object v0, Lcom/layar/util/CookieStore;->sCookieStore:Lcom/layar/util/CookieStore;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static get()Lcom/layar/util/CookieStore;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/layar/util/CookieStore;->sCookieStore:Lcom/layar/util/CookieStore;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 21
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 22
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 30
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 31
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 32
    .local v1, cookieManager:Landroid/webkit/CookieManager;
    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, cookie:Ljava/lang/String;
    return-object v0
.end method
