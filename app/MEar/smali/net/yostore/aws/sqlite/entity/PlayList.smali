.class public Lnet/yostore/aws/sqlite/entity/PlayList;
.super Ljava/lang/Object;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;
    }
.end annotation


# instance fields
.field public display:Ljava/lang/String;

.field public lastmodified:J

.field public plistid:Ljava/lang/String;

.field public status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->username:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 40
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;J)V
    .locals 2
    .parameter "username"
    .parameter "plistid"
    .parameter "display"
    .parameter "status"
    .parameter "lastmodified"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->username:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 40
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    .line 50
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->username:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 54
    iput-wide p5, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "comp"

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Lnet/yostore/aws/sqlite/entity/PlayList;

    move-object v1, v0

    .line 61
    .local v1, cmp:Lnet/yostore/aws/sqlite/entity/PlayList;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    iget-object v3, v1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    iget-object v3, v1, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    .line 60
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
