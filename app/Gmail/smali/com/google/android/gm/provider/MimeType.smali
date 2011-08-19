.class public Lcom/google/android/gm/provider/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"


# static fields
.field private static final UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGviewSupportedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/zip"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/x-gzip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application/x-bzip2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "application/x-compress"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "application/x-compressed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "application/x-tar"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MimeType;->UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;

    .line 31
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    const-string v1, "application/pdf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    const-string v1, "application/vnd.ms-powerpoint"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    const-string v1, "image/tiff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    const-string v1, "application/msword"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "mimeType"

    .prologue
    .line 109
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 110
    .local v1, pos:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v2, p1

    .line 128
    :goto_0
    return-object v2

    .line 115
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, extension:Ljava/lang/String;
    const-string v2, ".eml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const-string v2, "application/eml"

    goto :goto_0

    .line 119
    :cond_1
    const-string v2, ".m4v"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const-string v2, "video/mp4"

    goto :goto_0

    .line 123
    :cond_2
    const-string v2, ".3gp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    const-string v2, "video/3gp"

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 128
    goto :goto_0
.end method

.method public static isInstallable(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 46
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPlayable(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 53
    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreviewable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "contentType"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail_gview_supported_types"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, supportedTypes:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 93
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    .line 95
    :cond_0
    sget-object v1, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "contentUri"
    .parameter "contentType"

    .prologue
    const/4 v5, 0x0

    .line 64
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "null"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v5

    .line 86
    :goto_0
    return v4

    .line 69
    :cond_1
    sget-object v4, Lcom/google/android/gm/provider/MimeType;->UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, mimetypeIntent:Landroid/content/Intent;
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 84
    .local v2, manager:Landroid/content/pm/PackageManager;
    const/high16 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    .line 81
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/UnsupportedOperationException;
    move v4, v5

    .line 82
    goto :goto_0

    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2       #manager:Landroid/content/pm/PackageManager;
    :cond_3
    move v4, v5

    .line 86
    goto :goto_0
.end method
