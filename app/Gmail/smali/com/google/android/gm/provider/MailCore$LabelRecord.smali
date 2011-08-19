.class Lcom/google/android/gm/provider/MailCore$LabelRecord;
.super Ljava/lang/Object;
.source "MailCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelRecord"
.end annotation


# instance fields
.field public dateReceived:J

.field public isZombie:Z

.field public sortMessageId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-wide v0, p0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    .line 579
    iput-wide v0, p0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->dateReceived:J

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/MailCore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailCore$LabelRecord;-><init>()V

    return-void
.end method
