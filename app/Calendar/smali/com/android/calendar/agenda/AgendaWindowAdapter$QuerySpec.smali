.class Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field end:I

.field goToTime:Landroid/text/format/Time;

.field queryStartMillis:J

.field queryType:I

.field searchQuery:Ljava/lang/String;

.field start:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "queryType"

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 204
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 243
    :goto_0
    return v2

    .line 225
    :cond_0
    if-nez p1, :cond_1

    move v2, v6

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v6

    goto :goto_0

    .line 227
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    move-object v1, v0

    .line 228
    .local v1, other:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    iget v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iget v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v6

    .line 231
    goto :goto_0

    .line 234
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v2, :cond_5

    .line 235
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v2, v6

    .line 236
    goto :goto_0

    .line 239
    :cond_5
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v2, :cond_6

    move v2, v6

    .line 240
    goto :goto_0

    :cond_6
    move v2, v7

    .line 243
    goto :goto_0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    .line 208
    const/16 v2, 0x1f

    .line 209
    .local v2, prime:I
    const/4 v3, 0x1

    .line 210
    .local v3, result:I
    mul-int/lit8 v4, v3, 0x1f

    iget v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v4, 0x1f

    .line 211
    mul-int/lit8 v4, v3, 0x1f

    iget-wide v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 212
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    add-int v3, v4, v5

    .line 213
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int v3, v4, v5

    .line 214
    mul-int/lit8 v4, v3, 0x1f

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v3, v4, v5

    .line 215
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 217
    .local v0, goToTimeMillis:J
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v9

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 219
    .end local v0           #goToTimeMillis:J
    :cond_0
    return v3
.end method
