.class public Lcom/asus/mygazine/MarkedEvents;
.super Ljava/lang/Object;
.source "MarkedEvents.java"


# instance fields
.field primaryConflictRow:I

.field primaryCount:I

.field primaryRow:I

.field primaryTime:J

.field secondaryCount:I

.field secondaryRow:I

.field secondaryTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide v2, p0, Lcom/asus/mygazine/MarkedEvents;->primaryTime:J

    .line 7
    iput v0, p0, Lcom/asus/mygazine/MarkedEvents;->primaryRow:I

    .line 8
    iput v0, p0, Lcom/asus/mygazine/MarkedEvents;->primaryConflictRow:I

    .line 9
    iput v1, p0, Lcom/asus/mygazine/MarkedEvents;->primaryCount:I

    .line 10
    iput-wide v2, p0, Lcom/asus/mygazine/MarkedEvents;->secondaryTime:J

    .line 11
    iput v0, p0, Lcom/asus/mygazine/MarkedEvents;->secondaryRow:I

    .line 12
    iput v1, p0, Lcom/asus/mygazine/MarkedEvents;->secondaryCount:I

    return-void
.end method
