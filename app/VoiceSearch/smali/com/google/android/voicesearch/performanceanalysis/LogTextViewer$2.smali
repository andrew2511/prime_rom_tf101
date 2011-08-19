.class Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;
.super Ljava/lang/Object;
.source "LogTextViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$200()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    invoke-static {v4}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$100(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoiceSearch logs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.EMAIL"

    invoke-static {}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$300()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "LogViewer"

    const-string v2, "Could not send the email"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
