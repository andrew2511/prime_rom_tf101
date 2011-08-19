.class public Lnet/yostore/aws/sqlite/entity/MetaMeta;
.super Ljava/lang/Object;
.source "MetaMeta.java"


# instance fields
.field public changeSeq:J

.field public lastModified:J

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    .line 5
    const-wide/16 v0, -0x64

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    .line 6
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->lastModified:J

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter "userName"
    .parameter "changeSeq"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    .line 5
    const-wide/16 v0, -0x64

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    .line 6
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->lastModified:J

    .line 9
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->lastModified:J

    .line 12
    return-void
.end method
