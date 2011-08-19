.class public Lcom/asus/cm/settings/BookMark;
.super Ljava/lang/Object;
.source "BookMark.java"


# instance fields
.field private final DEFAULT_TIME:J

.field private final DEFAULT_VALUE:I

.field private mContext:Landroid/content/Context;

.field private mCreated:J

.field private mDate:J

.field private mDeleteFlag:Z

.field private mId:I

.field private mNeedsUpdate:Z

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVisits:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x929

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/asus/cm/settings/BookMark;->DEFAULT_VALUE:I

    .line 35
    iput v0, p0, Lcom/asus/cm/settings/BookMark;->mId:I

    .line 42
    iput-boolean v1, p0, Lcom/asus/cm/settings/BookMark;->mNeedsUpdate:Z

    .line 43
    iput-boolean v1, p0, Lcom/asus/cm/settings/BookMark;->mDeleteFlag:Z

    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/cm/settings/BookMark;->DEFAULT_TIME:J

    .line 57
    iput-object p1, p0, Lcom/asus/cm/settings/BookMark;->mContext:Landroid/content/Context;

    .line 58
    iget-wide v0, p0, Lcom/asus/cm/settings/BookMark;->DEFAULT_TIME:J

    iput-wide v0, p0, Lcom/asus/cm/settings/BookMark;->mDate:J

    .line 59
    iget-wide v0, p0, Lcom/asus/cm/settings/BookMark;->DEFAULT_TIME:J

    iput-wide v0, p0, Lcom/asus/cm/settings/BookMark;->mCreated:J

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/asus/cm/settings/BookMark;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/asus/cm/settings/BookMark;->mId:I

    .line 48
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/settings/BookMark;->mTitle:Ljava/lang/String;

    .line 49
    const-string v0, "url"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/settings/BookMark;->mUrl:Ljava/lang/String;

    .line 50
    const-string v0, "visits"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/asus/cm/settings/BookMark;->mVisits:I

    .line 51
    const-string v0, "date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/cm/settings/BookMark;->mDate:J

    .line 52
    const-string v0, "created"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/cm/settings/BookMark;->mCreated:J

    .line 53
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/settings/BookMark;->mDeleteFlag:Z

    .line 88
    return-void
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/asus/cm/settings/BookMark;->mCreated:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/asus/cm/settings/BookMark;->mDate:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asus/cm/settings/BookMark;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/cm/settings/BookMark;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisits()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/asus/cm/settings/BookMark;->mVisits:I

    return v0
.end method

.method public save()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/asus/cm/settings/BookMark;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, where:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/asus/cm/settings/BookMark;->mDeleteFlag:Z

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/asus/cm/settings/BookMark;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-boolean v2, p0, Lcom/asus/cm/settings/BookMark;->mNeedsUpdate:Z

    if-eqz v2, :cond_0

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/asus/cm/settings/BookMark;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "title"

    iget-object v3, p0, Lcom/asus/cm/settings/BookMark;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/asus/cm/settings/BookMark;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "url"

    iget-object v3, p0, Lcom/asus/cm/settings/BookMark;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_3
    const-string v2, "visits"

    iget v3, p0, Lcom/asus/cm/settings/BookMark;->mVisits:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v2, "date"

    iget-wide v3, p0, Lcom/asus/cm/settings/BookMark;->mDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string v2, "created"

    iget-wide v3, p0, Lcom/asus/cm/settings/BookMark;->mCreated:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v2, "bookmark"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    iget v2, p0, Lcom/asus/cm/settings/BookMark;->mId:I

    const/16 v3, -0x929

    if-ne v2, v3, :cond_4

    .line 77
    iget-object v2, p0, Lcom/asus/cm/settings/BookMark;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 79
    :cond_4
    iget-object v2, p0, Lcom/asus/cm/settings/BookMark;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCreated(J)V
    .locals 2
    .parameter "created"

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/asus/cm/settings/BookMark;->mCreated:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 142
    iput-wide p1, p0, Lcom/asus/cm/settings/BookMark;->mCreated:J

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/settings/BookMark;->mNeedsUpdate:Z

    .line 145
    :cond_0
    return-void
.end method

.method public setDate(J)V
    .locals 2
    .parameter "date"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/asus/cm/settings/BookMark;->mDate:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 131
    iput-wide p1, p0, Lcom/asus/cm/settings/BookMark;->mDate:J

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/settings/BookMark;->mNeedsUpdate:Z

    .line 134
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/asus/cm/settings/BookMark;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/asus/cm/settings/BookMark;->mTitle:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/settings/BookMark;->mNeedsUpdate:Z

    .line 102
    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/asus/cm/settings/BookMark;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/asus/cm/settings/BookMark;->mUrl:Ljava/lang/String;

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/settings/BookMark;->mNeedsUpdate:Z

    .line 112
    return-void
.end method

.method public setVisits(I)V
    .locals 1
    .parameter "visits"

    .prologue
    .line 119
    iget v0, p0, Lcom/asus/cm/settings/BookMark;->mVisits:I

    if-eq v0, p1, :cond_0

    .line 120
    iput p1, p0, Lcom/asus/cm/settings/BookMark;->mVisits:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/settings/BookMark;->mNeedsUpdate:Z

    .line 123
    :cond_0
    return-void
.end method
