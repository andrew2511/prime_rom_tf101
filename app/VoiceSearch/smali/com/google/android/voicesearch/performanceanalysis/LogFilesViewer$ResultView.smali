.class Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;
.super Landroid/widget/TextView;
.source "LogFilesViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const/high16 v0, 0x41c0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;->setTextSize(F)V

    .line 141
    return-void
.end method
