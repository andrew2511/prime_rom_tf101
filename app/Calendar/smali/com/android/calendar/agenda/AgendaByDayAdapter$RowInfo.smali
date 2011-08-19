.class Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field final mData:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    .line 314
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mData:I

    .line 315
    return-void
.end method
