.class Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

.field final synthetic val$log:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    iput-object p2, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 394
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$000(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)V

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 396
    .local v0, currentTime:J
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$100(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 398
    const-string v3, "%s\t%d\t%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v6}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$200(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v7}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$100(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, printString:Ljava/lang/String;
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v3, :cond_0

    .line 401
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$400(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    return-void
.end method
