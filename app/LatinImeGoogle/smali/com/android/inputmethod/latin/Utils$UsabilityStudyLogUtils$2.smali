.class Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->printAll()V
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
    .line 409
    iput-object p1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 412
    iget-object v4, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$400(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$500(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 417
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 418
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 422
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t read log file."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v4, :cond_0

    .line 425
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output all logs\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$600(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 429
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 434
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 424
    .restart local v2       #line:Ljava/lang/String;
    :cond_1
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v4, :cond_2

    .line 425
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output all logs\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_2
    iget-object v4, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$600(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 429
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 430
    :catch_1
    move-exception v4

    goto :goto_1

    .line 424
    .end local v2           #line:Ljava/lang/String;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v5, :cond_3

    .line 425
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "output all logs\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_3
    iget-object v5, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-static {v5}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$600(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v5

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 429
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 432
    :goto_2
    throw v4

    .line 430
    .restart local v1       #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_2
.end method
