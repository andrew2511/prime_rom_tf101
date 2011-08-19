.class Lcom/google/android/voicesearch/speechservice/ClientReportSender$1;
.super Ljava/lang/Object;
.source "ClientReportSender.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/ClientReportSender$TaskExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/speechservice/ClientReportSender;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method
