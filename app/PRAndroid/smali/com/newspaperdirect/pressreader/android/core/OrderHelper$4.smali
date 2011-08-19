.class Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;
.super Landroid/os/AsyncTask;
.source "OrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processOrder(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;

.field private final synthetic val$endOfTrial:Z


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Landroid/app/ProgressDialog;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->val$dlg:Landroid/app/ProgressDialog;

    iput-boolean p3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->val$endOfTrial:Z

    .line 252
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$4(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v1

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$4(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    .line 259
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$4(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v3

    iget-boolean v3, v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->includeSupplements:Z

    .line 256
    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->requestIssue(Ljava/lang/String;Ljava/util/Date;Z)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 264
    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 263
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 396
    .end local p1           #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 272
    .restart local p1       #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "d MMM yyyy"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 279
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "issue "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$4(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v9

    iget-object v9, v9, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$4(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v9

    iget-object v9, v9, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, issueString:Ljava/lang/String;
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f09002e

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, errorString:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 282
    const-string v8, "OrderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unable to retrieve issue "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V

    .line 383
    .end local p1           #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$7(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 384
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090018

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 386
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 387
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f09005e

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$4;

    invoke-direct {v10, p0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 394
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 285
    .restart local p1       #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-boolean v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->val$endOfTrial:Z

    if-eqz v8, :cond_5

    const-string v8, "request-access-result"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 287
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 288
    .local v2, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 289
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090003

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 290
    iget-object v12, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v12}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f09004a

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 291
    iget-object v12, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v12}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f09004a

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 289
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 293
    .local v5, msg:Ljava/lang/String;
    :goto_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090089

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 295
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 296
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 297
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090077

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;

    invoke-direct {v10, p0, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 308
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f09005b

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$2;

    invoke-direct {v10, p0, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 319
    new-instance v9, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$3;

    invoke-direct {v9, p0, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 328
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 292
    .end local v5           #msg:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090002

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_3

    .line 330
    .end local v2           #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    :cond_5
    const-string v8, "result"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "3"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 331
    const-string v8, "price"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    .line 332
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V

    goto/16 :goto_2

    .line 335
    :cond_6
    const-string v8, "price-formatted"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 336
    .local v6, priceString:Ljava/lang/String;
    if-nez v6, :cond_7

    .line 337
    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "price"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 338
    :cond_7
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090006

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$6(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 341
    .end local v6           #priceString:Ljava/lang/String;
    .restart local p1       #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v8, "result"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "7"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 342
    const-string v8, "request-access-result"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 343
    .local v7, requestAccessResult:Ljava/lang/String;
    if-nez v7, :cond_9

    .line 344
    const-string v8, "OrderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unable to get request-access-result for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V

    goto/16 :goto_2

    .line 347
    :cond_9
    const-string v8, "103"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 348
    const-string v8, "price"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_a

    .line 349
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V

    goto/16 :goto_2

    .line 353
    :cond_a
    const-string v8, "price-formatted"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 354
    .restart local v6       #priceString:Ljava/lang/String;
    if-nez v6, :cond_b

    .line 355
    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "price"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 356
    :cond_b
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090007

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$6(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 360
    .end local v6           #priceString:Ljava/lang/String;
    .restart local p1       #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const-string v8, "OrderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Request-access-result "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " when retrieving "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V

    .line 362
    const-string v8, "result-full-description"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "result-full-description"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #errorString:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 363
    .restart local v1       #errorString:Ljava/lang/String;
    :cond_d
    const-string v8, "401"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 364
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f09002f

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 365
    :cond_e
    const-string v8, "410"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 366
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090030

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 367
    :cond_f
    const-string v8, "411"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 368
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090031

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 369
    :cond_10
    const-string v8, "420"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 370
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090032

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 371
    :cond_11
    const-string v8, "450"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 372
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090033

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 373
    :cond_12
    const-string v8, "451"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 374
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090034

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 378
    .end local v7           #requestAccessResult:Ljava/lang/String;
    :cond_13
    const-string v8, "OrderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Result code "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "result"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " when retrieving "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 380
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;->onOrderComplete(Z)V

    goto/16 :goto_2
.end method
