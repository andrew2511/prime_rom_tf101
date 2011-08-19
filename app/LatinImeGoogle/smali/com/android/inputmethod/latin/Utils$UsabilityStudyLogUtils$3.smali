.class Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->clearAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$700(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$700(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete log file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$700(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 447
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$400(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 449
    :cond_1
    return-void
.end method
