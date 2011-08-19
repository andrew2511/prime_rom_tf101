.class Ltwitter4j/StatusDeletionNoticeImpl;
.super Ljava/lang/Object;
.source "StatusDeletionNoticeImpl.java"

# interfaces
.implements Ltwitter4j/StatusDeletionNotice;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17ea8725e4ab20deL


# instance fields
.field private statusId:J

.field private userId:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "id"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    .line 46
    const-string v0, "user_id"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:I

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ltwitter4j/StatusDeletionNotice;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/StatusDeletionNoticeImpl;->compareTo(Ltwitter4j/StatusDeletionNotice;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/StatusDeletionNotice;)I
    .locals 6
    .parameter "that"

    .prologue
    .line 58
    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    invoke-interface {p1}, Ltwitter4j/StatusDeletionNotice;->getStatusId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 59
    .local v0, delta:J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 60
    const/high16 v2, -0x8000

    .line 64
    :goto_0
    return v2

    .line 61
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 62
    const v2, 0x7fffffff

    goto :goto_0

    .line 64
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 77
    :goto_0
    return v2

    .line 70
    :cond_0
    instance-of v2, p1, Ltwitter4j/StatusDeletionNotice;

    if-nez v2, :cond_1

    move v2, v6

    goto :goto_0

    .line 72
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/StatusDeletionNotice;

    move-object v1, v0

    .line 74
    .local v1, that:Ltwitter4j/StatusDeletionNotice;
    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    invoke-interface {v1}, Ltwitter4j/StatusDeletionNotice;->getStatusId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_0

    .line 75
    :cond_2
    iget v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:I

    invoke-interface {v1}, Ltwitter4j/StatusDeletionNotice;->getUserId()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    move v2, v7

    .line 77
    goto :goto_0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 82
    iget-wide v1, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    iget-wide v3, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v0, v1

    .line 83
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:I

    add-int v0, v1, v2

    .line 84
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StatusDeletionNoticeImpl{statusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
