.class public Lcom/android/providers/contacts/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeContactsUpgradeReceiver(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 17
    const/16 v0, 0x1004

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 18
    return-void
.end method
