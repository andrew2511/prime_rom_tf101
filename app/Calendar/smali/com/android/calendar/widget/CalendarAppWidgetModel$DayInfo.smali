.class Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DayInfo"
.end annotation


# instance fields
.field final mDayLabel:Ljava/lang/String;

.field final mJulianDay:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "julianDay"
    .parameter "label"

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    .line 196
    iput-object p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 229
    :goto_0
    return v2

    .line 217
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 218
    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 220
    goto :goto_0

    .line 221
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    move-object v1, v0

    .line 222
    .local v1, other:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 223
    iget-object v2, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 224
    goto :goto_0

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 226
    goto :goto_0

    .line 227
    :cond_4
    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    iget v3, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    if-eq v2, v3, :cond_5

    move v2, v4

    .line 228
    goto :goto_0

    :cond_5
    move v2, v5

    .line 229
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 206
    const/16 v0, 0x1f

    .line 207
    .local v0, prime:I
    const/4 v1, 0x1

    .line 208
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 209
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    add-int v1, v2, v3

    .line 210
    return v1

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    return-object v0
.end method
