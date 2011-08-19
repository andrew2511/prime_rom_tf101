.class public Lcom/layar/data/ShareDialogData;
.super Lcom/layar/data/DialogData;
.source "ShareDialogData.java"


# static fields
.field public static final SHARE_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final SHARE_TYPE_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public link:Ljava/lang/String;

.field public userText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/layar/data/ShareDialogData;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/ShareDialogData;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/layar/data/DialogData;-><init>()V

    return-void
.end method

.method public static isShareMessageAction(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layarshare"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_0
.end method

.method public static parse(Landroid/net/Uri;)Lcom/layar/data/ShareDialogData;
    .locals 4
    .parameter "uri"

    .prologue
    .line 28
    new-instance v2, Lcom/layar/data/ShareDialogData;

    invoke-direct {v2}, Lcom/layar/data/ShareDialogData;-><init>()V

    .line 29
    .local v2, result:Lcom/layar/data/ShareDialogData;
    const-string v3, "title"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/layar/data/ShareDialogData;->title:Ljava/lang/String;

    .line 31
    const-string v3, "link"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, linkString:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    iput-object v1, v2, Lcom/layar/data/ShareDialogData;->link:Ljava/lang/String;

    .line 37
    :cond_0
    const-string v3, "defaultText"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/layar/data/ShareDialogData;->userText:Ljava/lang/String;

    .line 39
    const-string v3, "icon"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, iconUrlString:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    iput-object v0, v2, Lcom/layar/data/ShareDialogData;->icon:Ljava/lang/String;

    .line 45
    :cond_1
    const-string v3, "description"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/layar/data/ShareDialogData;->description:Ljava/lang/String;

    .line 46
    return-object v2
.end method
