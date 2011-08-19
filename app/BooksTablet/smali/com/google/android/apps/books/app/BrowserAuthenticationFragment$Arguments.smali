.class public Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;
.super Ljava/lang/Object;
.source "BrowserAuthenticationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation


# static fields
.field private static final ACCOUNT_ARGUMENT_KEY:Ljava/lang/String; = "account"

.field private static final REQUEST_ID_KEY:Ljava/lang/String; = "request_id"

.field private static final URL_ARGUMENT_KEY:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->getAccount(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->getUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->getRequestId(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .parameter "accountName"
    .parameter "continuationUrl"
    .parameter "requestId"

    .prologue
    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    return-object v0
.end method

.method private static getAccount(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 38
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRequestId(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 46
    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 42
    const-string v0, "url"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
