.class Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;
.super Ljava/lang/Object;
.source "LoginHelper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getGaiaLoginLink(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$continueToUrl:Ljava/lang/String;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->val$service:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->val$continueToUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 371
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->consume(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)Z
    .locals 4
    .parameter "token"

    .prologue
    .line 373
    if-eqz p1, :cond_1

    .line 374
    const-string v2, "https://www.google.com/accounts/TokenAuth"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 375
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 376
    .local v0, b:Landroid/net/Uri$Builder;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->val$service:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 377
    const-string v2, "service"

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->val$service:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 379
    :cond_0
    const-string v2, "source"

    const-string v3, "android-qsb"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 380
    const-string v2, "auth"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 381
    const-string v2, "continue"

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->val$continueToUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 382
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 386
    .end local v0           #b:Landroid/net/Uri$Builder;
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    goto :goto_0
.end method
