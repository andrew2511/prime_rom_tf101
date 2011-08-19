.class public final Lcom/android/deskclock/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/Alarm$DaysOfWeek;,
        Lcom/android/deskclock/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/deskclock/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

.field public enabled:Z

.field public hour:I

.field public id:I

.field public label:Ljava/lang/String;

.field public minutes:I

.field public silent:Z

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/deskclock/Alarm$1;

    invoke-direct {v0}, Lcom/android/deskclock/Alarm$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/deskclock/Alarm;->id:I

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 215
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/Alarm;->hour:I

    .line 217
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/Alarm;->minutes:I

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 219
    new-instance v1, Lcom/android/deskclock/Alarm$DaysOfWeek;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 220
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/Alarm;->id:I

    .line 171
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 172
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/Alarm;->hour:I

    .line 173
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/Alarm;->minutes:I

    .line 174
    new-instance v1, Lcom/android/deskclock/Alarm$DaysOfWeek;

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 175
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/Alarm;->time:J

    .line 176
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 177
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    .line 178
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, alertString:Ljava/lang/String;
    const-string v1, "silent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    iput-boolean v3, p0, Lcom/android/deskclock/Alarm;->silent:Z

    .line 196
    :cond_0
    :goto_2
    return-void

    .end local v0           #alertString:Ljava/lang/String;
    :cond_1
    move v1, v4

    .line 171
    goto :goto_0

    :cond_2
    move v1, v4

    .line 176
    goto :goto_1

    .line 185
    .restart local v0       #alertString:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 192
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/Alarm;->id:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/Alarm;->hour:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/Alarm;->minutes:I

    .line 203
    new-instance v0, Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/Alarm;->time:J

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/deskclock/Alarm;->silent:Z

    .line 209
    return-void

    :cond_0
    move v0, v3

    .line 200
    goto :goto_0

    :cond_1
    move v0, v3

    .line 205
    goto :goto_1

    :cond_2
    move v0, v3

    .line 208
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    iget v0, p0, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean v0, p0, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/android/deskclock/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-wide v0, p0, Lcom/android/deskclock/Alarm;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-boolean v0, p0, Lcom/android/deskclock/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-boolean v0, p0, Lcom/android/deskclock/Alarm;->silent:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_1

    :cond_2
    move v0, v2

    .line 61
    goto :goto_2
.end method
