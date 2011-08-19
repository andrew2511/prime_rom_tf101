.class Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowInfo"
.end annotation


# instance fields
.field final mIndex:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "type"
    .parameter "index"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    .line 66
    iput p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    .line 67
    return-void
.end method
