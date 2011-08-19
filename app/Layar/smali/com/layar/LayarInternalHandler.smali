.class public Lcom/layar/LayarInternalHandler;
.super Landroid/app/Activity;
.source "LayarInternalHandler.java"


# static fields
.field public static final RESULT_FACEBOOK_FAILED:I = 0x5

.field public static final RESULT_FACEBOOK_SUCCESS:I = 0x4

.field public static final RESULT_NONE:I = 0x0

.field public static final RESULT_PURCHASE_CANCELED:I = 0x3

.field public static final RESULT_PURCHASE_FAILED:I = 0x2

.field public static final RESULT_PURCHASE_SUCCESS:I = 0x1

.field public static final RESULT_TWITTER_FAILED:I = 0x7

.field public static final RESULT_TWITTER_SUCCESS:I = 0x6

.field private static final SCHEME:Ljava/lang/String; = "layarinternal"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/layar/LayarInternalHandler;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/LayarInternalHandler;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isCanceledResult(I)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 114
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFailedResult(I)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 108
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 109
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 110
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 108
    goto :goto_0
.end method

.method public static isSuccessResult(I)Z
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 102
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 103
    if-eq p0, v1, :cond_0

    .line 104
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public static parseInternalUri(Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layarinternal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 98
    :goto_0
    return v2

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, host:Ljava/lang/String;
    const-string v2, "purchase_result"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    const/4 v2, 0x3

    goto :goto_0

    .line 82
    :cond_2
    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 83
    const/4 v2, 0x2

    goto :goto_0

    .line 85
    :cond_3
    const-string v2, "twitter_callback"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    const/4 v2, 0x6

    goto :goto_0

    .line 88
    :cond_4
    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 89
    const/4 v2, 0x7

    goto :goto_0

    .line 91
    :cond_5
    const-string v2, "facebook_callback"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 92
    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 93
    const/4 v2, 0x4

    goto :goto_0

    .line 94
    :cond_6
    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 95
    const/4 v2, 0x5

    goto :goto_0

    :cond_7
    move v2, v4

    .line 98
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v6, 0x400

    const/4 v5, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/layar/LayarInternalHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, host:Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "twitter_callback"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v3

    .line 49
    .local v3, socialManager:Lcom/layar/data/social/SocialManager;
    const-string v4, "twitter"

    invoke-virtual {v3, v4, v5}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V

    .line 50
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v4, Lcom/layar/UserSettingsActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    .end local v3           #socialManager:Lcom/layar/data/social/SocialManager;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 61
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v4, Lcom/layar/Main;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    :cond_1
    invoke-virtual {p0, v5}, Lcom/layar/LayarInternalHandler;->moveTaskToBack(Z)Z

    .line 66
    invoke-virtual {p0, v2}, Lcom/layar/LayarInternalHandler;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/layar/LayarInternalHandler;->finish()V

    .line 68
    return-void

    .line 52
    :cond_2
    const-string v4, "facebook_callback"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v3

    .line 54
    .restart local v3       #socialManager:Lcom/layar/data/social/SocialManager;
    const-string v4, "facebook"

    invoke-virtual {v3, v4, v5}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V

    .line 55
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v4, Lcom/layar/UserSettingsActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
