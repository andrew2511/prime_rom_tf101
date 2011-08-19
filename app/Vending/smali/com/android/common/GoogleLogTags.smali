.class public Lcom/android/common/GoogleLogTags;
.super Ljava/lang/Object;
.source "GoogleLogTags.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeVendingReconstruct(I)V
    .locals 1
    .parameter "changes"

    .prologue
    .line 88
    const v0, 0x31511

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 89
    return-void
.end method
