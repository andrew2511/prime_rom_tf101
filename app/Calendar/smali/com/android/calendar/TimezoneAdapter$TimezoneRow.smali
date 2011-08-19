.class public Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
.super Ljava/lang/Object;
.source "TimezoneAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TimezoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimezoneRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# instance fields
.field public final mDisplayName:Ljava/lang/String;

.field private final mGmtDisplayName:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field public final mOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "id"
    .parameter "displayName"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 75
    .local v4, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 76
    .local v2, offset:I
    iput v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    .line 77
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 78
    .local v3, p:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v1, name:Ljava/lang/StringBuilder;
    const-string v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    if-gez v2, :cond_1

    .line 82
    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    int-to-long v5, v3

    const-wide/32 v7, 0x36ee80

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const v5, 0xea60

    div-int v0, v3, v5

    .line 91
    .local v0, min:I
    rem-int/lit8 v0, v0, 0x3c

    .line 93
    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 94
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const/4 v5, 0x0

    const-string v6, "("

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    .line 101
    return-void

    .line 84
    .end local v0           #min:I
    :cond_1
    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/calendar/TimezoneAdapter$TimezoneRow;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 152
    iget v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ne v0, v1, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->compareTo(Lcom/android/calendar/TimezoneAdapter$TimezoneRow;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 147
    :goto_0
    return v2

    .line 123
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 124
    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 127
    goto :goto_0

    .line 129
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    move-object v1, v0

    .line 130
    .local v1, other:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 131
    iget-object v2, v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 132
    goto :goto_0

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 135
    goto :goto_0

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 138
    iget-object v2, v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v4

    .line 139
    goto :goto_0

    .line 141
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    .line 142
    goto :goto_0

    .line 144
    :cond_6
    iget v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v3, v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-eq v2, v3, :cond_7

    move v2, v4

    .line 145
    goto :goto_0

    :cond_7
    move v2, v5

    .line 147
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    const/16 v0, 0x1f

    .line 111
    .local v0, prime:I
    const/4 v1, 0x1

    .line 112
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 113
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    add-int v1, v2, v3

    .line 114
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    add-int v1, v2, v3

    .line 115
    return v1

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    return-object v0
.end method
