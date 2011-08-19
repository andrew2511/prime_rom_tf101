.class Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventInfo"
.end annotation


# instance fields
.field allDay:Z

.field color:I

.field end:J

.field id:J

.field start:J

.field title:Ljava/lang/String;

.field visibTitle:I

.field visibWhen:I

.field visibWhere:I

.field when:Ljava/lang/String;

.field where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    .line 91
    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    .line 92
    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    .line 93
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 138
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 177
    :goto_0
    return v2

    .line 140
    :cond_0
    if-nez p1, :cond_1

    move v2, v6

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v6

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    move-object v1, v0

    .line 145
    .local v1, other:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    iget-wide v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v4, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v2, v6

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    iget-boolean v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    iget-boolean v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eq v2, v3, :cond_4

    move v2, v6

    .line 148
    goto :goto_0

    .line 149
    :cond_4
    iget-wide v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    iget-wide v4, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v2, v6

    .line 150
    goto :goto_0

    .line 151
    :cond_5
    iget-wide v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v4, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v2, v6

    .line 152
    goto :goto_0

    .line 153
    :cond_6
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 154
    iget-object v2, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v2, v6

    .line 155
    goto :goto_0

    .line 156
    :cond_7
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v6

    .line 157
    goto :goto_0

    .line 158
    :cond_8
    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    iget v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    if-eq v2, v3, :cond_9

    move v2, v6

    .line 159
    goto :goto_0

    .line 160
    :cond_9
    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    iget v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    if-eq v2, v3, :cond_a

    move v2, v6

    .line 161
    goto :goto_0

    .line 162
    :cond_a
    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    iget v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    if-eq v2, v3, :cond_b

    move v2, v6

    .line 163
    goto :goto_0

    .line 164
    :cond_b
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 165
    iget-object v2, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v2, v6

    .line 166
    goto :goto_0

    .line 167
    :cond_c
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v6

    .line 168
    goto :goto_0

    .line 169
    :cond_d
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 170
    iget-object v2, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-eqz v2, :cond_10

    move v2, v6

    .line 171
    goto/16 :goto_0

    .line 172
    :cond_e
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v6

    .line 173
    goto/16 :goto_0

    .line 174
    :cond_f
    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    iget v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    if-eq v2, v3, :cond_10

    move v2, v6

    .line 175
    goto/16 :goto_0

    :cond_10
    move v2, v7

    .line 177
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x0

    .line 120
    const/16 v0, 0x1f

    .line 121
    .local v0, prime:I
    const/4 v1, 0x1

    .line 122
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 123
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v5, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    ushr-long/2addr v5, v8

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 124
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    iget-wide v5, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    ushr-long/2addr v5, v8

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 125
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v5, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    ushr-long/2addr v5, v8

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 126
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v7

    :goto_1
    add-int v1, v2, v3

    .line 127
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    add-int v1, v2, v3

    .line 128
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    add-int v1, v2, v3

    .line 129
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    add-int v1, v2, v3

    .line 130
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v7

    :goto_2
    add-int v1, v2, v3

    .line 131
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v7

    :goto_3
    add-int v1, v2, v3

    .line 132
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    add-int v1, v2, v3

    .line 133
    return v1

    .line 122
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    .line 131
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "EventInfo [visibTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", visibWhen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-wide v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", visibWhere="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", where="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
