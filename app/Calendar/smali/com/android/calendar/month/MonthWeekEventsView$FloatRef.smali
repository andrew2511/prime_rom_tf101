.class Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;
.super Ljava/lang/Object;
.source "MonthWeekEventsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthWeekEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatRef"
.end annotation


# instance fields
.field array:[F

.field final synthetic this$0:Lcom/android/calendar/month/MonthWeekEventsView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/month/MonthWeekEventsView;I)V
    .locals 1
    .parameter
    .parameter "size"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    .line 128
    return-void
.end method


# virtual methods
.method public ensureSize(I)V
    .locals 2
    .parameter "newSize"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v1, p1, 0x70

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    .line 135
    :cond_0
    return-void
.end method
