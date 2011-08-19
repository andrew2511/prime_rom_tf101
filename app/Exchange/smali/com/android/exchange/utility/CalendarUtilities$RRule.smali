.class Lcom/android/exchange/utility/CalendarUtilities$RRule;
.super Ljava/lang/Object;
.source "CalendarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/utility/CalendarUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RRule"
.end annotation


# instance fields
.field date:I

.field dayOfWeek:I

.field month:I

.field type:I

.field week:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "_month"
    .parameter "_date"

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    .line 361
    iput p1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    .line 362
    iput p2, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->date:I

    .line 363
    return-void
.end method

.method constructor <init>(III)V
    .locals 1
    .parameter "_month"
    .parameter "_dayOfWeek"
    .parameter "_week"

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    .line 373
    iput p1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    .line 374
    iput p2, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    .line 375
    iput p3, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    .line 376
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 380
    iget v0, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    if-ne v0, v3, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREQ=YEARLY;BYMONTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREQ=YEARLY;BYMONTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->date:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
