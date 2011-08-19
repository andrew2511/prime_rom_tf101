.class public Lcom/google/android/gsf/checkin/CheckinTask$Params;
.super Ljava/lang/Object;
.source "CheckinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/CheckinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field dropbox:Landroid/os/DropBoxManager;

.field marketData:Ljava/lang/String;

.field maxEventBytes:I

.field maxRequestBytes:I

.field maxRequests:I

.field minTimeAdjustmentMillis:J

.field minTimeSettingMillis:J

.field scheduler:Lcom/android/common/OperationScheduler;

.field serverUrl:Ljava/lang/String;

.field storage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x2

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    .line 102
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    .line 105
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    .line 108
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->marketData:Ljava/lang/String;

    .line 111
    const-string v0, "https://android.clients.google.com/checkin"

    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    .line 114
    iput v1, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxEventBytes:I

    .line 117
    iput v1, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequestBytes:I

    .line 120
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequests:I

    .line 123
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeAdjustmentMillis:J

    .line 126
    const-wide/32 v0, -0x75817280

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeSettingMillis:J

    return-void
.end method
