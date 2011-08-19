.class Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mEndDay:I

.field final mPosition:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "position"
    .parameter "endDay"

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    .line 324
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    .line 325
    return-void
.end method
