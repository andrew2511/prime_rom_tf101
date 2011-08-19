.class Lcom/aws/mycloud/helper/PixWeAlbumListHelper$1;
.super Ljava/lang/Object;
.source "PixWeAlbumListHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->getAlbumList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/yostore/aws/api/entity/FolderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/api/entity/FolderInfo;

    check-cast p2, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/aws/mycloud/helper/PixWeAlbumListHelper$1;->compare(Lnet/yostore/aws/api/entity/FolderInfo;Lnet/yostore/aws/api/entity/FolderInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/yostore/aws/api/entity/FolderInfo;Lnet/yostore/aws/api/entity/FolderInfo;)I
    .locals 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 68
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 72
    .local v0, d1:Ljava/util/Date;
    invoke-virtual {p2}, Lnet/yostore/aws/api/entity/FolderInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 74
    .local v1, d2:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    .line 78
    .end local v0           #d1:Ljava/util/Date;
    .end local v1           #d2:Ljava/util/Date;
    :goto_0
    return v4

    .line 75
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 77
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 78
    const/4 v4, 0x0

    goto :goto_0
.end method
